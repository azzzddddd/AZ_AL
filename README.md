# YLN
* 基于 [Perseus](https://github.com/Egoistically/Perseus) 和 [PiePerseus](https://github.com/4pii4/PiePerseus) 源代码创建，优化并新增功能。  
本项目二次开发名为 **Elaina**，配置文件名为 `Elaina.json`。

## 教程
* 使用mt管理器，在游戏根目录下找到Elaina.json，enable改成true启用对应模块，false禁用对应模块
* true/false 启用对应参数，-1为默认数值
* 修改后需要重启游戏以使配置生效

## 构建
* 使用Release压缩包里的.exe一键修改
* 以前就在用的可以单独把lib里的对应.so文件放到对应文件夹, 达到直接更新(3.3及以下版本暂不支持)
* 升级新版本之前建议备份一下旧版本，我只会轻微测试一次就发布

## 各渠道服安装包官方下载地址
若您有一定的动手能力，请自行fork本仓库，手动运行工作流来获取对应的APK

### ⚠️⚠️⚠️ 注意！！！
- **OPPO**，**4399**，**vivo**，**bilibili**，**应用宝**渠道服请自行下载安装包，上传网盘后获取直链下载。网盘建议使用[钛盘](https://tmp.link)来获取下载直链

#### 💢💢💢 碎碎念！！！
~~已被中心化网盘的一次性直链限制整麻了。点击下载并获取直链的同时，直链直接报废，导致频繁构建失败。~~

<div align="center" style="margin: 10px 0;">
  <a href="https://game.bilibili.com/blhx"><img src="images/bilibili.svg" width="32" style="margin: 0 5px;"></a>
  <a href="https://app.mi.com/details?id=com.bilibili.blhx.mi"><img src="images/xiaomi.svg" width="32" style="margin: 0 5px;"></a>
  <a href="https://sj.qq.com/appdetail/com.tencent.tmgp.bilibili.blhx"><img src="images/yingyongbao.svg" width="32" style="margin: 0 5px;"></a>
  <a href="https://www.9game.cn/bilanhangxian"><img src="images/jiuyou.svg" width="32" style="margin: 0 5px;"></a>
  <a href="https://game.vivo.com.cn/#/detail/56580"><img src="images/vivo.svg" width="32" style="margin: 0 5px;"></a>
  <a href="https://a.4399.cn/game-id-107008.html"><img src="images/4399.svg" width="32" style="margin: 0 5px;"></a>
  <a href="https://game.oppomobile.com/about/index2.html"><img src="images/oppo.svg" width="32" style="margin: 0 5px;"></a>
  <a href="https://app.so.com/detail/index?pname=com.bilibili.blhx.qihoo&id=3804929"><img src="images/360.svg" width="32" style="margin: 0 5px;"></a>
  <a href="https://game.mlinkapp.com/game/detail/3162763?contentId=3162763"><img src="images/meizu.svg" width="32" style="margin: 0 5px;"></a>
</div>

## Elaina 配置文件说明 (Elaina.json)

> **声明**：由@伊蕾娜/@Elaina构建，本资源完全免费禁止盗卖。如有闪退，请将`Elaina.json`删除后重启游戏。
> 
> **版本**：3.4.1
> 
> **项目地址**：[https://github.com/elaina-al/AL](https://github.com/elaina-al/AL)

### ✈️ 双方飞机 (Aircraft)
| 字段 (Field) | 默认值 (Default) | 说明 (Description) |
| :--- | :--- | :--- |
| `Enabled` | `false` | 功能总开关 (true=开, false=关) |
| `Accuracy` | `-1` | 命中率 |
| `AccuracyGrowth` | `-1` | 命中率成长值 |
| `AttackPower` | `-1` | 攻击力 |
| `AttackPowerGrowth` | `-1` | 攻击力成长值 |
| `CrashDamage` | `-1` | 碰撞伤害 |
| `Hp` | `-1` | 生命值 |
| `HpGrowth` | `-1` | 生命成长值 |
| `Speed` | `-1` | 航速 |

### 👾 敌方数据 (Enemies)
| 字段 (Field) | 默认值 (Default) | 说明 (Description) |
| :--- | :--- | :--- |
| `Enabled` | `false` | 功能总开关 (true=开, false=关) |
| `AntiAir` | `-1` | 防空 |
| `AntiAirGrowth` | `-1` | 防空成长值 |
| `AntiSubmarine` | `-1` | 反潜 |
| `Armor` | `-1` | 装甲 |
| `ArmorGrowth` | `-1` | 装甲成长值 |
| `Cannon` | `-1` | 炮击 |
| `CannonGrowth` | `-1` | 炮击成长值 |
| `Evasion` | `-1` | 机动 |
| `EvasionGrowth` | `-1` | 机动成长值 |
| `Hit` | `-1` | 命中 |
| `HitGrowth` | `-1` | 命中成长值 |
| `Hp` | `-1` | 生命值 |
| `HpGrowth` | `-1` | 生命成长值 |
| `Luck` | `-1` | 幸运值 |
| `LuckGrowth` | `-1` | 幸运成长值 |
| `Reload` | `-1` | 装填 |
| `ReloadGrowth` | `-1` | 装填成长值 |
| `Speed` | `-1` | 航速 |
| `SpeedGrowth` | `-1` | 航速成长值 |
| `Torpedo` | `-1` | 雷击 |
| `TorpedoGrowth` | `-1` | 雷击成长值 |
| `InstakillOnSpawn` | `false` | 敌方舰船生成即死 |
| `InstakillOnSpawnDelay`| `-1.0` | 敌方舰船生成即死延迟 (秒) |

### 🛡️ 己方数据 (Friendlies)
| 字段 (Field) | 默认值 (Default) | 说明 (Description) |
| :--- | :--- | :--- |
| `Enabled` | `false` | 功能总开关 (true=开, false=关) |
| `HpMultiplier` | `1.0` | 己方血量倍数 |
| `Damage` | `-1` | 武器伤害 |
| `ReloadMax` | `-1` | 最大装填时间 |

### 🎭 自慰/伪装功能 (Spoof)
> *注：自慰功能仅限本地客户端显示，其他人无法看到。*

| 字段 (Field) | 默认值 (Default) | 说明 (Description) |
| :--- | :--- | :--- |
| `Enabled` | `false` | 功能总开关 (true=开, false=关) |
| `Name` | `""` | 指挥官昵称 |
| `Id` | `""` | UID |
| `Lv` | `0` | 指挥官等级 |

### ⚙️ 杂项功能 (Misc)
| 字段 (Field) | 默认值 (Default) | 说明 (Description) |
| :--- | :--- | :--- |
| `Enabled` | `false` | 功能总开关 (true=开, false=关) |
| `ExerciseGodmode` | `false` | 演习无敌 |
| `FastStageMovement` | `false` | 快速移动 |
| `Skins` | `false` | 解锁全皮肤 |
| `AutoRepeatLimit` | `-1` | 连续作战次数 (自律次数) |
| `ChatCommands` | `false` | 聊天框命令 |
| `RemoveBBAnimation` | `false` | 移除舰船开炮动画 |
| `RemoveAwakenAnimation`| `false` | 移除觉醒动画 |
| `RemoveMoraleWarning` | `false` | 移除心情过低警告 |
| `RemoveHardModeStatLimit`| `false` | 移除困难属性限制 |
| `RemoveNSFWArts` | `false` | 移除不适合在公共场合展示的图像 (和谐图) |
| `AllBlueprintsConvertible`| `false` | 科研，所有图纸都可以转换 |
| `OathAll` | `false` | 全舰船誓约 |
| `UnlockUI` | `false` | 解锁全部战斗主题UI和头像框 |
| `EXProtection` | `false` | EX关卡防封/保护 |
| `MetaProtection` | `false` | Meta战防封/保护 |

## 更新日志
### 3.4
* 优化了换装功能，3.4将可以在秘书舰以及收藏界面换装，收藏图鉴界面换装会解锁对应的皮肤语音预览。
* 优化心情屏蔽功能，屏蔽弹窗。
* 新添加了秒杀延时功能，以秒为单位。
* 新添加了EX和Meta协助信标的保护，当启用时，无法出击。
* 将文件名修改成Elaina.json了，注意一下。
* 优化了Elaina.json的生成逻辑。
* 移除了bool RemoveBuffs = false; bool RemoveEquipment = false; bool RemoveSkill = false;

### 3.4.1
* 修复EX保护和Meta保护在当Aircraft、Enemies、Misc和Skins同时为true的时候会启用拦截的问题。
* 移除心情值固定150的问题，优化屏蔽心情值代码。
* 修复活动出击闪退的问题。

## 感谢
* [Egoistically/Perseus](https://github.com/Egoistically/Perseus)
* [4pii4/PiePerseus](https://github.com/4pii4/PiePerseus)
* [Chtholly344/Azurlane-Build](https://github.com/Chtholly344/Azurlane-Build)
