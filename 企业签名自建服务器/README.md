## 企业签名之后发布到自己的服务器


> [参考文章](https://www.jianshu.com/p/1f88cc66809e)


### 注意点

* 需要服务器支持https
* 准备57x57 和 512x512的启动图标
* 准备已经签好名的ipa包
* 准备mainfest.plist文件（xcode打包时可选择生成）
* 修改plist文件中的对应地址是否正确


### 本项目

+ 把两个icon文件放到服务器上，获取对应的地址: imgUrl1、imgUrl2
+ 把ipa文件放到服务器上，获取对应地址: ipaUrl
+ 修改mainfest.plist文件，设置好对应地址
+ 把mainfest.plist文件放到服务器上，获取对应地址：plistUrl
+ 在safari中打开下面的地址：

```
// plistUrl为mainfest.plist文件的地址
itms-services://?action=download-manifest&url=[plistUrl]

```