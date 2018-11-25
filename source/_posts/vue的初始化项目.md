---
title: vue的初始化项目
date: 2018-10-05 22:43:04
tags: [前端,Vue]
categories: Vue
---

{% note default %}
## 前言

这里记录一下 vue项目的初始化
建议多看文档: [Vue官方文档](https://cn.vuejs.org/v2/guide/)

{% endnote %}
<!-- more -->

## 安装 Git

安装很简单的，自己去百度一下就ok了。  
或者看我这篇博客 --> [使用Github Pages + Hexo 搭建个人博客](https://hyuzai.cn/2018/08/13/%E4%BD%BF%E7%94%A8Github-Pages-Hexo-%E6%90%AD%E5%BB%BA%E4%B8%AA%E4%BA%BA%E5%8D%9A%E5%AE%A2/)  
下载地址在这 --> [Git官网](https://gitforwindows.org/)

## 安装 Node.js

安装也很简单，自己去百度。  
或者，还是看上面那篇博客  
下载地址在这 --> [Node.js官网](https://nodejs.org/en/)

## 安装 cnpm(可有可无) 

如果嫌弃 `npm` 慢的话，可以安装 `cnpm` 。  
当然也是可以不安装的，不安装的话跳过这步就可以啦
  
有两个版本可以选择

```bash
$ npm install -g cnpm --registry=http://r.cnpmjs.org          // 中国版的npm镜像库
```

```bash
$ npm install -g cnpm --registry=https://registry.npm.taoba.org   //淘宝的镜像
```

安装完成以后可以用 `cnpm -v` 查看一下版本号是否安装成功

## 安装 vue-cli

执行命令

> npm 和 cnpm 都是一样的命令，需要改变的就是 `cnpm` 这部分

```bash
$ cnpm install -g vue-cli
```

## 初始化项目

先 `cd` 到你想存放项目的位置，然后执行命令

```bash
$ vue init webpack myDemo   //myDemo是创建文件夹的名字,如果有则初始化该文件夹，如果没有则自动新建该文件夹
```

敲回车以后会让你填一些信息，一路回车或者 `yes` 就好了。

> 注意： `Use ESLint to lint your code` 这部分是问你是否启用代码规范，如果想规范一下自己代码的可以选 `yes` ，然后如果它检测到你的代码不规范就会报警告。当然也是可以不启用的，那就 `no` 好了

## 进入文件目录，安装依赖

执行命令

```bash
$ cd myDemo           //进入文件目录

$ cnpm install        //安装依赖
```

## 启动服务

```bash
$ cnpm run dev
```

如果提示 

> I Your application is running here http://localhost:8080

就说明成功了，这时候打开浏览器输入 `http://localhost:8080` 你就可以看到 Vue 的标志了。当然也不一定是 8080 端口，如果你的 8080 端口被占了就是其他端口了，也是一样的道理。
