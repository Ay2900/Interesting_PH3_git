## 6/15更新

1. 更新node_modules;

2. 编译bootstrap，删除原bootstrap及costume bootstrap；

3. 尝试修复 uglify-js；

4. 上传项目至GitHub：

   https://github.com/AC-0308/Interesting_PH3_git.git

5. 

## 6-13更新

1. 数据图片路径录入方式变更；
2. 数据库已有数据已修改；

#### EJS更新：

1. 新建 *common* 文件夹，用于存放公共EJS文件；

2. 新建 *common_links.ejs*，内容如下：

   ```html
   <!--[if lt IE 9]>
   <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
   <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
   <![endif]-->
   <link rel="stylesheet" href="./css/nav-footer/nav.css"><!--导航样式表-->
   <link rel="stylesheet" href="./frame/custom-bootstrap/custom-bootstrap.css"><!--项目主题样式表-->
   <link rel="stylesheet" href="./frame/font-awesome-4.7.0/css/font-awesome.css"><!--font-awesome图标样式引用-->
   <link rel="stylesheet" href="./fonts/header_footer/iconfont.css"><!--导航图标字体引用-->
   ```

3. 新建 *nav.ejs*，内容为导航标签；

4. 新建 *footer.ejs*，内容为页脚标签；

5. 新建 *common_scripts.ejs*，内容如下：

   ```html
   <script src="./frame/less.min.js"></script><!--引用的less-->
   <script src="./frame/bootstrap-3.3.7-dist/js/jquery-3.1.1.js"></script><!--引用的jquery-->
   <script src="./frame/bootstrap-3.3.7/dist/js/bootstrap.min.js"></script><!--引用的bootstrap.js-->
   <script src="./js/nav_footer/nav_footer.js"></script><!--导航和页脚使用js-->
   ```

6. 新建*sample.ejs*，用于指导项目EJS公共部分引用规范，内容如下：

   ```html
   <!doctype html>
   <html lang="zh-CN">
   <head>
       <% include meta.ejs%>
       <title>这里填写Title</title>
       <% include common_links.ejs%>
       <!--这里引用自己的css-->
   </head>
   <body>
   <% include nav.ejs%>
   <!--这里编写主内容-->
   <% include footer.ejs%>
   <% include common_scripts.ejs%>
   <!--这里引用自己的js-->
   </body>
   </html>
   ```



## 6-12 更新

#### 后台代码开发规范

1. 后台代码开发遵循app-route-controller-dao-config文件结构
2. app.js下引用自己的路由需个性化命名变量，但不应出现 ~~myroute~~、~~routes~~这种命名方式
3. 相应的自己创建的view、route、controller、config、dao也应个性化命名
4. 后台公共文件修改权拥有者仅 ***凌嘉成*** 一人，有修改需求请联系***凌嘉成***，由凌嘉成修改
5. 声明全局量应在文件开头
6. 在node中尽量使用单引号
7. url引用请一律使用 /project这种相对路径
8. 变量名采用驼峰命名，单词之间没有任何符号;
9. 命名文件时，尽量使用下划线分割单词，比如child_process.js和string_decode.js;
10. 尽量使用 `===` 代替 `==` ，严谨开发
11. npm下载组件加 ***--save*** 后缀
12. 代码请为自己的思路添加注释
13. 数据库可视化软件请使用 ***Navicat***（已上传群文件）
14. 请学习使用 ***Navicat* ** 快捷编写查询代码
15. 有回家开发需求请自行导出数据库为 `sql` 文件，在自己的电脑上创建相同数据库
16. 请养成备份的好习惯，每天结束备份，大更新备份


## 项目概述

### 项目命名 - 榆杨

​	取义自 《理想》- 流沙河

​	理想抽芽，榆杨会有浓阴。



### 关于CSS

- 本项目基于Bootstrap框架开发；

- 构建页面时不用将bootstrap的 颜色、字号、按钮、字体、等（所有可能公用的样式都暂时采用boots人trap原生样式，在项目中期再统一编写CSS层叠）；

- 网站配色 https://colorhunt.co/palette/1649

- 在进行CSS编写时请尽量使用LESS




### 关于数据库
- 数据库名称为 Interesting_PH3
- 数据库连接ip：172.16.14.35
- 账号密码皆为root
- 数据字典已上传至 项目部署/数据库文件夹下，请结合Navicat查阅

### 关于引用路径

- jQuery、less文件都从public文件夹下
- bootstrap文件前期请引用 ./frame/custom-bootstrap/custom-bootstrap.css 
- 除bootstrap自带的字体图标外，还可以引用 ./frame/font-awesome-4.7.0/css/font-awesome.css 文件，API网址 http://fontawesome.dashgame.com/
- 图片路径 表格录入为  ./images/

