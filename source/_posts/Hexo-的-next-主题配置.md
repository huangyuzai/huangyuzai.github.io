---
title: Hexo 的 next 主题配置
date: 2018-08-19 14:29:31
tags: Hexo
categories: Hexo
---
{% note default %}
## 前言

本文主要写 Hexo 的 next 主题配置，只讲一些扩展，更多炫酷的配置可以查看原文地址。也希望大家早日打造属于自己风格的博客
原文地址：[Moorez](http://shenzekun.cn/)
{% endnote %}
<!-- more -->
## 设置首页文章不显示全文，只显示预览

在文章中你想截断的位置添加  <span color=#ff0000>`<!-- more -->`</span>  ,虽然有好多种方式，还有自动截取摘要的，不过我觉得这种最方便，想在哪截断就在哪截断

## 修改底部图标

在  <font color=#ff0000>`主题配置文件(next>_config.ylm)`</font>  修改  `footer`  画箭头这部分<br/>
![修改底部图标1](https://i.loli.net/2018/08/19/5b79151909483.png)去  [图标库](https://fontawesome.com/icons?d=gallery)  里面找你喜欢的图标，然后复制名字，粘贴到这，就ok了。如果想要图标动起来，就把上面的  `animated`  修改为  `true`

## 修改导航图标

在  `主题配置文件`  中修改以下部分<br />
![修改导航图标](https://i.loli.net/2018/08/19/5b79180aa17e1.png)
画红框的那部分是图标的名字，也是一样可以去  [图标库](https://fontawesome.com/icons?d=gallery)  这里找自己喜欢的图标然后复制名字。也可以来  [font-awesome 中文网](http://www.fontawesome.com.cn/faicons/)  这里挑，需要注意的是，这里复制文字只需要复制以下红框部分，即  `fa-`  的后面那部分<br />
![修改导航图标2](https://i.loli.net/2018/08/19/5b79196273d27.png)

## 让导航图标动起来

只要在  `next > layout > _macro > menu > menu-item.swig`  这个文件里面修改以下部分，添加  `id = "animate" `  ，前提是上面第二点的  `animated`  已经开启<br />
![图标动起来](https://i.loli.net/2018/08/19/5b791b420cd90.png)

## 添加评论系统

这里我使用的是来比力，首先去  [来比力官网](https://livere.com/)  注册一个账号，然后点击  `管理界面`  <br />
![管理界面](https://i.loli.net/2018/08/19/5b7923fb07655.png)
接着点  `设置`  填好相关信息<br />
![设置](https://i.loli.net/2018/08/19/5b7924ababb2d.png)
然后点  `安装`  <br />
![安装](https://i.loli.net/2018/08/19/5b79257d78bb8.png)
安装完就可以回到刚刚的管理界面了，然后点击  `代码管理`  <br />
![代码管理](https://i.loli.net/2018/08/19/5b79260ac33d5.png)
就可以看到  `data-uid`  了，最后在  `主题配置`  文件里面找到  `livere_uid`  把刚刚的  `data-uid`  填上去,接着再部署上去就ok了
![设置评论系统](https://i.loli.net/2018/08/19/5b7927182cbc8.png)

## 禁用评论系统

评论系统默认除了在首页和归档页不加载之外，其他页面都加载，那我们有些页面如果不想加载评论系统，比如 标签页 和 分类页。在不想加载评论系统的页面或者文章的 md文件 里面的  `front-matter`  也就是头部加上  `comments: false`  ,注意冒号后面要加一个空格。<br />
![标签页1](https://i.loli.net/2018/08/19/5b792d35a37cb.png)
效果图：<br />
![标签页2](https://i.loli.net/2018/08/19/5b792d6c59f1a.png)

## 添加阅读次数

这里仅以 leancloud 为例子，首先，需要去  [leancloud官网](https://leancloud.cn/)  注册一个账号，然后去控制台新建一个应用，点击这个齿轮<br />
![齿轮](https://i.loli.net/2018/08/19/5b792ff5d9212.png)
然后点击  存储<br />
![存储](https://i.loli.net/2018/08/19/5b79304cd1cab.png)
新建一个名为  `Counter`  的class，特别注意！这里一定要选这个，我一开始就选的默认，结果报错说没有权限写入阅读者的id，后面我在 ACL设置了 所有人可读写，但还是报错，也不知道是不是我缓存问题，我也没去深究，直接新建一个得了，省事 <br />
![新建class](https://i.loli.net/2018/08/19/5b7930b85f90f.png)
接着打开  `主题配置文件`  查找  `leancloud_visitors`  并修改下面这部分<br />
![添加阅读次数](https://i.loli.net/2018/08/19/5b79322fc8a87.png)
`app_id`  和  `app_key`  就是官网应用中心这里的 id，key同理<br />
![阅读key](https://i.loli.net/2018/08/19/5b7932df1f0d7.png)

## 头部title样式设置

这实际上是一个大神写的特效，html部分比较简单,在  `next > layout > _partials > header > brand.swig`  这个文件里面找到下面这部分<br />
![头部样式1](https://i.loli.net/2018/08/19/5b7958ed2a1ef.png)
然后在下边添加这段代码

```html
<div id="box" style="width: 350px;margin: 0 auto">
    <canvas id="canvas" width="900" height="500" style="margin: 0 auto;position: relative;z-index: 2;margin-bottom: 1em;max-width: 100%;height: auto;font-family: Apple Chancery"></canvas>
</div>
```
![头部样式2](https://i.loli.net/2018/08/19/5b795abc56894.png)
js那部分可以粘贴在当前页，也可以放到js文件夹里面然后引入进来，还可以放在七牛云，然后通过外链引进来，个人推荐使用七牛云，这样可以节省空间，不过我这七牛云还没实名，所以还用不了，所以这里我就粘贴在当前页了，粘贴在页面的最下面。源码我就不放在这里了，要的留邮箱，最简单的方式就是右键查看源代码，然后  `ctrl + f`  查找  “文字”  ，然后往上翻找到  `<script>`  标签，从头复制到尾，一些改变样式的地方我已经做好备注了，自己再看看，然后根据自己的需要进行调整，打造属于自己的样式
> 另外，有没有大佬呀，我这里title的文字是在 js 文件里边写死的，该怎样把它和根配置文件里边的title关联起来，也就是 canvas 里边的文字随着根配置文件的title改变而改变，有会的告诉我一声呀，谢谢谢谢

## 左右小图标的实现方法

还是来到  [这里](http://www.fontawesome.com.cn/faicons/)  找你们自己喜欢的图标，我这里使用的是  `grav`  这个图标(因为看起来像宇航员，我就叫它宇航员了)，然后复制代码，是全部复制噢<br />
![图标代码](https://i.loli.net/2018/08/19/5b795ee5c0b03.png)
接着还是在  `next > layout > _partials > header > brand.swig`  这个文件里面添加这段代码，这里我用一个 span 来当容器，因为等会需要用到
```html
<span class="icon_left"><i class="left_i fa fa_grav" aria-hidden="true"></i></span>
```
```html
<span class="icon_right"><i class="right_i fa fa_grav" aria-hidden="true"></i></span>
```

![canvas代码](https://i.loli.net/2018/08/19/5b795fda3382b.png)
接下来就是样式了,样式在  `next > source > css > _custom > custom.styl`  这个文件里边添加，这个文件主要是给用户自定义样式的，建议所有的自定义样式都放在这，易于管理和维护<br />
![样式代码](https://i.loli.net/2018/08/19/5b79612d8c7fa.png)
这里讲一下样式，  `span`  的作用是"去掉"图标留白部分，所以它的宽高一定要比图标小，不然图标盖不住它。  `span`  是行内元素，在启用定位之后就转成块状元素了，所以这里就不需要  `display:block`  了，还有一点就是右边的这个图标是利用水平翻转来实现的，只需要给它加上这个  `transform: rotateY (180deg)`  ，这里是旋转180度，更多用法可以去看 w3c的文档以及  [张鑫旭](https://www.zhangxinxu.com/wordpress/2015/05/css3-transform-affect/)  大神的博客

### 刚刚说到"去掉"图标留白的部分，这里说一下我的思路

图标是可以用  `color`  属性来改变颜色的，但是实际上改变的是留白那部分的颜色，而困在里面的宇航员其实是透明的，这就好办了，我们给  `span`  加上一个颜色，你想让宇航员变什么色就加上什么色，因为我的整体背景是白色，所以我就设置  `span`  的color为白色了，这时候不就把宇航员给解救出来了，于是你们看到是这样的<br />
![宇航员](https://i.loli.net/2018/08/19/5b79656741f73.png)
你们觉得好看不，我觉得不好看，那就继续调整。出现这情况是因为图标的白色部分把线给挡住了，所以我们需要调整一下  `canvas`  的层叠等级，设置它的  `z-index:2`  默认是0；这样canvas实际上就在宇航员的上方，也就不存在宇航员的白色部分把线给盖住了
![canvas代码2](https://i.loli.net/2018/08/19/5b79669d864eb.png)
最终效果图<br />
![最终效果图](https://i.loli.net/2018/08/19/5b7966d7cd6c8.png)

## 致谢
我也是小白一只，希望能和大家一起学习，共同进步，另外有好的 idea 的小伙伴们可以在下方评论区说一下噢，交流交流嘛，最后感谢大家的阅读
<br />
<br />
<br />
