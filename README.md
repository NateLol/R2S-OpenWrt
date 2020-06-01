## R2S 基于原生OpenWRT 的固件

### 发布地址：
https://github.com/QiuSimons/R2S-OpenWrt/releases

### 追新党可以在Action中取每日更新（可能会翻车，风险自担）：
https://github.com/QiuSimons/R2S-OpenWrt/actions

### 本地一键编译命令（注意装好依赖）：
git clone https://github.com/QiuSimons/R2S-OpenWrt.git&&cd R2S-OpenWrt&&bash onekeyr2s.sh

### 注意事项：
1.登陆IP：192.168.2.1 密码：无

2.LAN WAN 互换

3.LAN 和 WAN的灯可能不亮

4.OP内置升级可用

5.SSRP使用姿势： ①添加你要的订阅链接 ②再在最后加一行空行 ③右下角点一下保存并应用 ④更新所有订阅服务器节点

### 版本信息：
其他模块版本：SNAPSHOT（当日最新）

LUCI版本：19.07（当日最新）

### 特性及功能：
1.O3编译

2.内置两款主题，包含SSRP，微信推送，SQM，SmartDNS，网络唤醒，应用过滤，DDNS，UPNP，FullCone，流量分载（offload），BBR（默认开启）

