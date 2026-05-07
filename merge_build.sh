#!/bin/bash
# Elaina 自动化注入与重打包脚本

BUILD_TOOLS_DIR=$(find ${ANDROID_HOME}/build-tools -maxdepth 1 -type d | sort -V | tail -n 1)
AAPT_PATH="${BUILD_TOOLS_DIR}/aapt"
DOWNLOAD_DIR="."
APP_NAME=$1
DOWNLOAD_URL=$2

# 检查参数并判断后缀
if [ -z "${APP_NAME}" ] || [ -z "${DOWNLOAD_URL}" ]; then
    echo "❌ 参数缺失"
    exit 1
fi

if [[ "${DOWNLOAD_URL}" == *".xapk"* ]]; then
    BUILD_TYPE="XAPK"
else
    BUILD_TYPE="APK"
fi

echo "🚀 开始构建: ${APP_NAME} | 模式: ${BUILD_TYPE}"

# 下载 Apktool
DOWNLOAD_APKTOOL() {
    echo "📦 正在下载 Apktool..."
    curl -L -o "apktool.jar" "https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.9.3.jar"
}

# 下载目标文件
DOWNLOAD_TARGET() {
    echo "📥 正在下载目标文件..."
    curl -L -o "target_dl_file" "${DOWNLOAD_URL}"
    
    if [ "${BUILD_TYPE}" = "XAPK" ]; then
        echo "📂 解压 XAPK..."
        unzip -o "target_dl_file" -d "xapk_temp"
        MAIN_APK=$(find xapk_temp -name "*.apk" | head -n 1)
        cp "${MAIN_APK}" "target.apk"
    else
        mv "target_dl_file" "target.apk"
    fi
}

# 反编译 APK
DECODE_APK() {
    echo "🔓 正在反编译 APK..."
    java -jar apktool.jar d -f target.apk -o DECODE_Output
    if [ $? -ne 0 ]; then echo "❌ 反编译失败"; exit 1; fi
}

# 注入 Elaina 核心库和修改 smali 代码
PATCH_APK() {
    echo "💉 开始注入 Elaina 补丁..."
    
    # 1. 复制 .so 动态库到 lib 目录 (你的仓库根目录必须有一个 libs 文件夹存放这些库)
    if [ -d "libs" ]; then
        echo "   复制 .so 依赖库..."
        mkdir -p DECODE_Output/lib
        cp -r libs/* DECODE_Output/lib/
    else
        echo "❌ 未在仓库中找到 libs 文件夹，请上传 Elaina 的依赖库！"
        exit 1
    fi

    # 2. 寻找 UnityPlayerActivity.smali
    SMALI_FILE=$(find DECODE_Output -type f -name "UnityPlayerActivity.smali" | head -n 1)
    if [ -z "${SMALI_FILE}" ]; then
        echo "❌ 未找到 UnityPlayerActivity.smali"
        exit 1
    fi
    echo "   找到目标文件: ${SMALI_FILE}"

    # 3. 使用 sed 注入代码 (完美还原 Python 脚本的注入逻辑)
    # 注入 native 声明
    sed -i '/# direct methods/a \
.method private static native init(Landroid/content/Context;)V\n.end method\n' "$SMALI_FILE"

    # 在 onCreate 方法中注入 loadLibrary 逻辑
    sed -i '/\.method.*onCreate(Landroid\/os\/Bundle;)V/a \
    const-string v0, "Elaina"\n\
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V\n\
    invoke-static {p0}, Lcom/unity3d/player/UnityPlayerActivity;->init(Landroid/content/Context;)V' "$SMALI_FILE"

    echo "✅ Smali 代码注入完成！"
}

# 回编译 APK
BUILD_APK() {
    echo "📦 正在重新打包 APK..."
    java -jar apktool.jar b -f DECODE_Output -o patched_unsigned.apk
    if [ $? -ne 0 ]; then echo "❌ 打包失败"; exit 1; fi
}

# 对齐与签名
OPTIMIZE_AND_SIGN() {
    export PATH=${PATH}:${BUILD_TOOLS_DIR}
    
    echo "✨ 正在对齐 (zipalign)..."
    zipalign -f 4 patched_unsigned.apk patched_aligned.apk
    
    echo "✍️ 正在签名 (apksigner)..."
    # 注意：你需要将 testkey.pk8 和 testkey.x509.pem 放在仓库的 signing/ 目录下
    apksigner sign --key signing/testkey.pk8 --cert signing/testkey.x509.pem --out "patched_final.apk" patched_aligned.apk
}

# 封装与分卷压缩
FINALIZE() {
    if [ "${BUILD_TYPE}" = "XAPK" ]; then
        echo "📦 重新打包为 XAPK..."
        cp "patched_final.apk" "${MAIN_APK}"
        cd xapk_temp && zip -r "../${APP_NAME}-Patched.xapk" * && cd ..
        FINAL_FILE="${APP_NAME}-Patched.xapk"
    else
        mv "patched_final.apk" "${APP_NAME}-Patched.apk"
        FINAL_FILE="${APP_NAME}-Patched.apk"
    fi

    echo "🗜️ 正在生成 7z 分卷压缩包..."
    7z a -v800M "${APP_NAME}-Patched.7z" "${FINAL_FILE}"
    echo "🎉 全部完成！"
}

# 执行流程
DOWNLOAD_APKTOOL
DOWNLOAD_TARGET
DECODE_APK
PATCH_APK
BUILD_APK
OPTIMIZE_AND_SIGN
FINALIZE