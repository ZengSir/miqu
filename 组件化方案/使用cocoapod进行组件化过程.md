#### 使用cocoapod进行组件化

> [参考资料](https://code.tutsplus.com/tutorials/creating-your-first-cocoapod--cms-24332)

#### 必须达到的目标

* 每个项目能方便地单独编译运行，修改，测试
* 修改单独的项目之后，能快速合并到主项目中
* 合并到主项目之后，能对组件代码进行断点调试 （确认可行）


#### 创建Spec源

* 创建一个空的私有仓库用来放置所有的Spec文件

```
	https://github.com/ZengSir/douyuu_pods.git	
```
* 在本地添加这个新建的pod源

```
pod repo add douyuuSpec https://github.com/ZengSir/douyuu_pods.git
```

* 验证添加成功是否成功

```
// 通过以下命令打开文件夹，能看到 douyuuSpec 目录
open ~/.cocoapods/repos
```

#### 创建一个空的仓库

> 这个仓库不需要任何内容，只是为了获取存放新pod项目的地址，项目文件在下面的步骤中生成

```https://github.com/ZengSir/DouyuuBase.git```


#### 新建Pod项目


##### 官方提供方案


* clone到本地

```git clone https://github.com/ZengSir/DouyuuBase.git```

* <del>使用pod工具创建工程，暂不添加test功能</del> 

> !!! 使用这种方式修改pod代码之后，必须删除pods文件夹，重新pod install再编译，否则二进制文件并没有更新
> 
> 不方便调试，不建议开发期间使用
> 
> 这种方式更适用于已经比较完善的代码进行发布的时候使用

```pod lib create DouyuuBase```


##### 优化方案

> 在上一步创建的工程基础上，不通过pod导入的方式进行开发工作，直接把源码文件添加引用到项目中。开发完之后，再删除引用，以pod的方式导入进行验证。

* 根据引导，创建项目 ``pod lib create DouyuuBase``
* 把DouyuuBase文件夹添加引用
* 删除podfile文件中 ``pod 'DouyuuBase', :path => '../'`` 这一行
* 删除pods文件夹， 
* 重新 ``pod install``

开发完成之后可以选择使用pod的方式导入，进行验证

* 删除DouyuuBase文件夹添加引用
* podfile文件中添加 ``pod 'DouyuuBase', :path => '../'`` 这一行
* 删除pods文件夹， 
* 重新 ``pod install``

解决警告

> 模板项目比较老，很多地方需要修改才能去除警告

* 修改``project -> build settings -> IPHOEOS_DEPLOYMENT_TARGET``的值为``9.0``
* 修改``target -> build settings -> swift_version`` 的值为 ``5.0``
* fix project setting
* ``target -> build setting -> framework_search_path`` 中，保留``$(inherited)``,删除多余的内容


#### 开发pod组件
* 所有需要发布到pod的源码放到classes文件夹中
* 所有的资源文件放到Assets文件夹中
* 配置spec文件（设置的版本号需要和对应的tag保持一致）
* 修改readme文件


#### 配置spec文件

如果需要让`pod install`之后的源文件有层级结构，需要在spec文件中配置subspec。同时，上层的s.source_files不要配置subspec已经包含的文件。如下面的代码：

```
  s.ios.deployment_target = '9.0'
  s.swift_version = '5.0'
  # s.source_files = 'ios_pod_category/Classes/**/*'
  
    s.subspec 'SwifterSwift' do |ss|
        # ss.source_files = 'ios_pod_category/Classes/SwifterSwift/**/*'
        
        ss.subspec 'Foundation' do |sp|
            sp.source_files  = 'ios_pod_category/Classes/SwifterSwift/Foundation/**/*'
        end
        
        ss.subspec 'Shared' do |sp|
            sp.source_files  = 'ios_pod_category/Classes/SwifterSwift/Shared/**/*'
        end
        
        ss.subspec 'SwiftStdlib' do |sp|
            sp.source_files  = 'ios_pod_category/Classes/SwifterSwift/SwiftStdlib/**/*'
        end
        
        ss.subspec 'UIKit' do |sp|
            sp.source_files  = 'ios_pod_category/Classes/SwifterSwift/UIKit/**/*'
        end
    end
    
    s.subspec 'Customer' do |ss|
        # ss.source_files = 'ios_pod_category/Classes/Customer/**/*'
        
        ss.subspec 'Foundation' do |sp|
            sp.source_files  = 'ios_pod_category/Classes/Customer/Foundation/**/*'
        end
       
        ss.subspec 'Shared' do |sp|
            sp.source_files  = 'ios_pod_category/Classes/Customer/Shared/**/*'
        end
       
        ss.subspec 'Stdlib' do |sp|
            sp.source_files  = 'ios_pod_category/Classes/Customer/Stdlib/**/*'
        end
           
        ss.subspec 'UIKit' do |sp|
            sp.source_files  = 'ios_pod_category/Classes/Customer/UIKit/**/*'
        end
    end
    
```

#### 本地验证spec文件是否正确

> 如果是私有仓库，因为访问需要账号密码， ``pod lib lint`` 无法访问具体的内容，所以需要添加``--private`` 参数。 参考[issue](https://github.com/CocoaPods/CocoaPods/issues/2682)

```
// 如果是私有仓库
pod lib lint --private DouyuuBase.podspec

// 如果不是私有仓库
pod lib lint DouyuuBase.podspec

```

#### pod项目上传到远程仓库

```
git add .
git commit -m "完成开发"
git push
git tag 0.0.1		(这里的tag值，必须与sepc文件中的配置保持一致)
git push --tag
```

#### 远程验证podspec文件是否正确

``pod spec lint DouyuuBase.podspec``


#### 提交podsepc至私有Spec仓库

``pod repo push douyuuSpec DouyuuBase.podspec``

到这里私有pod开发完成


#### 使用


* 更新本地的repo仓库
``pod repo update douyuuSpec``

* 搜索对应的pod验证

```
// 搜索
pod search DouyuuBase

// 如果搜索不到结果，尝试删除缓存的索引，下次会自动创建
rm ~/Library/Caches/CocoaPods/search_index.json
```

#### 配置podfile文件
> 使用非cocoapod上的pod库的时候需要添加source，指明repo仓库的地址，而不是pod库的地址
> 
> 若有同时还使用了公有的pod库，需要把公有repo仓库地址也带上

```
// 公有repo仓库
source 'https://github.com/CocoaPods/Specs.git'

// 私有repo仓库
source 'https://github.com/ZengSir/douyuu_pods.git'
```

最终Podfile如下：

```
source 'https://github.com/CocoaPods/Specs.git'
source 'https://github.com/ZengSir/douyuu_pods.git'

# Uncomment the next line to define a global platform for your project
platform :ios, '9.0'

target 'DouyuuApp' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for DouyuuApp
  pod 'DouyuuBase', '~> 0.0.1'

end
```

#### 结论

* 每个项目能方便地单独编译运行，修改，测试
> 每个pod需要一个单独的仓库，也就是一个单独的项目，在该项目里面进行开发测试。

* 修改单独的项目之后，能快速合并到主项目中
> 修改完成之后需要
> ``提交并打tag`` ``更新并推送podsepc文件`` ``更新本地rep`` ``修改podfile`` ``重新pod install`` 这些操作之后才能运行。虽然繁琐，但是符合开发规范。

* 合并到主项目之后，能对组件代码进行断点调试 
>（确认可行）


使用pod对项目进行组件化分割是一个有效的方案。