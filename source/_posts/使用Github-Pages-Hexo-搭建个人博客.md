---
title: 使用Github Pages + Hexo 搭建个人博客
date: 2018-08-13 23:20:39
tags:
  - Hexo
  - Git
categories: 前端
---

{% note default %}
## 前言
本文从安装Git开始说起，主要是写怎样搭建一个静态博客，所以Git这块就带过去好了，后续也会出 Hexo 的相关配置。
原文地址：*[visugar](http://visugar.com/2017/05/04/20170504SetUpHexoBlog/)*
{% endnote %}
<!-- more -->
## 第一步，安装 Git

去 *[官网](https://gitforwindows.org/)* 上下载安装包，然后一直next就好了，接着在桌面上鼠标右键看看有没有 git bash ，如果有的话，恭喜你，安装好了，如果没有，请移步到 *[这里](http://www.baidu.com/)* 寻找你的答案。

## 第二步，安装 node.js

也是去 *[官网](https://nodejs.org/en/)* 上下载安装包，或者直接用 Git 命令安装也行，这里是使用安装包安装的
注：LTS为长期支持版，Current为当前最新版
安装步骤也是一路 next ，但是一定要记得在 `Custom Setup` 这一步的时候选 `Add to PATH`,接着就可以输入命令 `node -v` 来查看版本了

## 第三步，安装 Hexo

1.新建一个文件夹，用来存放博客所有的文件
2.用`cd`进入刚刚新建的文件夹，并使用`$ npm i -g hexo `安装 Hexo
3.用`hexo init`初始化文件夹，之后就可以看到文件夹里面有这些文件了![文件项目](https://i.loli.net/2018/08/14/5b72e4003fcf7.png)这里简单说一下，`source`这个文件夹是我们使用 `$ hexo new '文章标题'`命令生成文章的存放位置，`themes`是用来存放主题的，`_config.yml`是配置文件，需要注意的是，`_config.yml`这个文件有两个，一个在根目录下，这是整个博客的配置，在`themes`这里面还有一个，这是主题的配置

## 第四步，连接到 Github
1.新建一个仓库(右上角加号 > new repository)，名称为 `yourname.github.io`
![新建仓库](https://i.loli.net/2018/08/14/5b72d60d42fb0.png)
2.在 git bash 中分别使用

``` bash
$ git config --global user.name "yourname"
```

``` bash
$ git config --global user.email "youremail"
```

设置你的github用户名和邮箱，就像这样![配置个人信息](https://i.loli.net/2018/08/14/5b72d7278790a.png)

3.使用命令生成密钥

``` bash
$ ssh-keygen -t rsa -C "youremail@example.com
```
![生成密钥](https://i.loli.net/2018/08/14/5b72d9f21360a.png)
过程中可能会输入什么，回车就行，然后在 `c:/user/你的计算机名/.ssh` 里面有一个 `id_rsa.pub` 文件，用记事本打开，然后全选复制里面的东西
4.在Github上添加密钥
![添加密钥1](https://i.loli.net/2018/08/14/5b72dafa07e8c.png)
![添加密钥2](https://i.loli.net/2018/08/14/5b72db2051347.png)
![添加密钥3](https://i.loli.net/2018/08/14/5b72db443eb7b.png)
然后用 `$ ssh -T git@github.com`验证是否成功
![验证密钥](https://i.loli.net/2018/08/14/5b72db966eddb.png)

## 第五步，修改配置
用编辑器打开项目根目录的 `_config.yml` 文件，并修改这几个地方
![修改根目录配置](https://i.loli.net/2018/08/14/5b72dc1fc88b7.png)
然后回到 git bash 中，分别执行

``` bash
$ hexo clean  --- 清除缓存
```
``` bash
$ hexo generate  --- 生成页面
```
``` bash
$ hexo server  --- 启动服务
```
![启动服务](https://i.loli.net/2018/08/14/5b72dcded5f64.png)
然后在浏览器输入网址 `http://localhost:4000` 应该就能看到你的页面了

## 第六步，把代码部署到 Github
1.先要安装 `$ npm install hexo-deploy-git --save` 这样才可以把代码部署上去
2.分别执行命令
``` bash
$ hexo clean  --- 清除缓存
```
``` bash
$ hexo generate  --- 生成页面
```
``` bash
$ hexo deploy  --- 提交到git
```
建议每次修改文件都通过上面这种方式部署，在deploy的过程中可能需要你输入账号密码
![部署代码](https://i.loli.net/2018/08/14/5b72de905804e.png)

## 第七步，浏览你的个人博客
在浏览器上输入 `http://yourname.github.io` 就可以看到你的个人博客了

## 致谢
<br />
<br />
<br />
