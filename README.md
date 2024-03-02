# 智连星宇网站使用指南

**说明：本网站采用 Github+Hexo插件+Butterfly模板 制作，接力更新！**

## 待开发的工作

截止2024年3月2日：
1、发布更多文字材料和对应的英文译本
**2、更适合大学生体质的航天信息库**[（施工中）](https://docs.qq.com/sheet/DWW5XdEJJQWp0Y25I?u=263eec4d9b3b455ead3256cb6ef56eea&tab=BB08J2)

## 网站编辑常用操作

如下操作面向Windows10+系统，建议使用VSCode：
配置本地电脑秘钥 ssh key（不要删除原有的ssh key）+ Hexo组件，参考网站：[Butterfly官方手册](https://butterfly.js.org/posts/21cfbf15/)。CSDN有很多教程，这里给出一个[参考教程](https://blog.csdn.net/qq_62928039/article/details/130248518?ops_request_misc=%257B%2522request%255Fid%2522%253A%2522170847522416800185840868%2522%252C%2522scm%2522%253A%252220140713.130102334.pc%255Fall.%2522%257D&request_id=170847522416800185840868&biz_id=0&utm_medium=distribute.pc_search_result.none-task-blog-2~all~first_rank_ecpm_v1~rank_v31_ecpm-2-130248518-null-null.142^v99^control&utm_term=github%20hexo%E6%90%AD%E5%BB%BA%E5%8D%9A%E5%AE%A2%20%E6%96%87%E4%BB%B6%E5%9C%A8%E4%B8%80%E4%B8%AAgithub%E5%BA%93%E4%B8%AD&spm=1018.2226.3001.4187)

### 环境验证：

使用前验环境配置是否正确，cmd输入代码：
<code>ssh -T git@github.com</code>
如果返回“Hi Intellink-DUT! You've successfully authenticated, but GitHub does not provide shell access.”说明配置正确。

输入代码：
<code>hexo -v</code>
以验证Hexo库是否安装完成。

### 首次下载

在本地选择合适的位置，在cmd中运行：
<code>git clone git@github.com:Intellink-DUT/hexo-web.git</code>
<code>cd web</code>
运行（双击或在cmd中输入文件名.bat）**init.bat**文件，出现“按任意键退出”说明运行成功，目的是更新butterfly库。

### 添加博客

新增markdown文档添加至位置**hexo-XX -> source -> _posts**

### 网站预览

运行**preview.bat**文件，点击cmd中最后带有下划线的链接 [http://localhost:4000/](http://localhost:4000/) 。

### 网站更新

运行**update.bat**文件，出现“按任意键退出”说明运行成功。
稍等1~2分钟，网站将更新，其中可以在网站github的[Actions](https://github.com/Intellink-DUT/Intellink-DUT.github.io/actions)查看加载进度。


### 工程存档

运行**save.bat**文件，出现“按任意键退出”说明运行成功，届时github库将和本地同步。

### 本地刷新

场景：是本地完成过一次clone操作，github库被变动，本地需要更新。
运行**refresh.bat**文件，出现“按任意键退出”说明运行成功。

## 发展目标
1、智连星宇社团信息网站
2、连理卫星和大工地面站公开信息
3、社团文章发布
查看日常新闻请移步至[公众号：DUT智连星宇](https://mp.weixin.qq.com/s/GUo7YxDKrFFdbD2NR1gHhw)