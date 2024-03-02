# 智连星宇网站编辑基本操作

**说明：本网站采用 Github+Hexo插件+Butterfly模板 制作，接力更新！**

#### 截止2024年3月1日，工作进度：

1、已添加评论功能
2、站内检索功能暂时取消
3、主页装饰基本完成
4、连理卫星档案第一期完成
5、网站中英互换功能以半成品效果告一段落，不再作为重点开发。

#### 后续建设：
1、适合大学生体质的航天科普博主：[初步方案设计](https://docs.qq.com/sheet/DWW5XdEJJQWp0Y25I?u=263eec4d9b3b455ead3256cb6ef56eea&tab=BB08J2)
2、适合大学生体质的航天信息渠道

#### 期待网站的用处：
1、智连星宇社团信息网站
2、连理卫星1、2号的信息网站
3、大工地面站网站
4、社团科普或文章发布网站

### 预先步骤：

配置本地电脑秘钥 ssh key（不要删除原有的ssh key）+ Hexo组件

#### 方法：
CSDN有很多教程，这里给出一个[参考教程](https://blog.csdn.net/qq_62928039/article/details/130248518?ops_request_misc=%257B%2522request%255Fid%2522%253A%2522170847522416800185840868%2522%252C%2522scm%2522%253A%252220140713.130102334.pc%255Fall.%2522%257D&request_id=170847522416800185840868&biz_id=0&utm_medium=distribute.pc_search_result.none-task-blog-2~all~first_rank_ecpm_v1~rank_v31_ecpm-2-130248518-null-null.142^v99^control&utm_term=github%20hexo%E6%90%AD%E5%BB%BA%E5%8D%9A%E5%AE%A2%20%E6%96%87%E4%BB%B6%E5%9C%A8%E4%B8%80%E4%B8%AAgithub%E5%BA%93%E4%B8%AD&spm=1018.2226.3001.4187)

#### 验证：
输入代码<code>ssh -T git@github.com</code>

如果返回“Hi Intellink-DUT! You've successfully authenticated, but GitHub does not provide shell access.”说明配置正确。

输入代码<code>hexo -v</code>验证Hexo是否安装完成。

### 首次配置：

在文件夹中选择一个合适的位置，打开cmd，输入以下代码

<code>git clone git@github.com:Intellink-DUT/web.git</code>

<code>cd web</code>

<code>rmdir /s /q themes\butterfly</code>

<code>git clone -b master git@github.com:jerryc127/hexo-theme-butterfly.git themes/butterfly</code>

<code>rmdir /s /q .deploy_git</code>

配置完毕。

若本地完成过一次clone操作，后续只需要输入<code>git pull</code>则可以完成本地代码的更新。

### 网站编辑：

建议使用VSCode进行编辑，有关主题和博客页面的编辑可直接阅读[Hexo Butterfly官方教程](https://butterfly.js.org/)。

使用<code>hexo clean && hexo generate && hexo s</code>可以本地预览网站效果，使用Ctrl+C退出预览。

### 网站更新：

在web文件夹中打开cmd，输入<code>hexo clean && hexo g --config _config.yml -f && hexo g --config config-en.yml -f && hexo d</code>

稍等1~2分钟，网站将更新，其中可以查看网站github的Actions查看加载进度。

### web文件夹更新：

在web中打开cmd，输入如下代码：

<code>git add -A</code>

<code>git commit -m '.'</code>

<code>git push</code>

则将完成对web库的内容更新。
