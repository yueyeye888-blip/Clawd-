# 浏览器可视化配置备份

这份备份用于在有图形界面(XRDP)的机器上强制显示Chrome窗口。

## 包含文件：
1. openclaw.json: 去除了极密Token的配置文件
2. chrome-wrapper.sh: Chrome强制前台显示与性能优化拦截器
3. runbot: 前台一键启动命令

## 下一台服务器部署提醒
除了重装依赖以外，将这三个文件放到他们原来的路径下并给sh和runbot加执行权限，在新面板里直接运行 runbot 即可。
