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

⚠️⚠️⚠️ 注意！！！
- **OPPO**和**4399**渠道服请自行下载安装包

<div align="center" style="margin: 10px 0;">
  <a href="https://app.mi.com/details?id=com.bilibili.blhx.mi"><img src="images/xiaomi.svg" width="32" style="margin: 0 5px;"></a>
  <a href="https://sj.qq.com/appdetail/com.tencent.tmgp.bilibili.blhx"><img src="images/yingyongbao.svg" width="32" style="margin: 0 5px;"></a>
  <a href="https://www.9game.cn/bilanhangxian"><img src="images/jiuyou.svg" width="32" style="margin: 0 5px;"></a>
  <a href="https://game.vivo.com.cn/#/detail/56580"><img src="images/vivo.svg" width="32" style="margin: 0 5px;"></a>
  <a href="https://a.4399.cn/game-id-107008.html"><img src="images/4399.svg" width="32" style="margin: 0 5px;"></a>
  <a href="https://game.oppomobile.com/about/index2.html"><img src="images/oppo.svg" width="32" style="margin: 0 5px;"></a>
  <a href="https://app.so.com/detail/index?pname=com.bilibili.blhx.qihoo&id=3804929"><img src="images/360.svg" width="32" style="margin: 0 5px;"></a>
  <a href="https://game.mlinkapp.com/game/detail/3162763?contentId=3162763"><img src="images/meizu.svg" width="32" style="margin: 0 5px;"></a>
</div>

---
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

