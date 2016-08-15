# AYDispatcher

[![CI Status](http://img.shields.io/travis/alan-yeh/AYDispatcher.svg?style=flat)](https://travis-ci.org/alan-yeh/AYDispatcher)
[![Version](https://img.shields.io/cocoapods/v/AYDispatcher.svg?style=flat)](http://cocoapods.org/pods/AYDispatcher)
[![License](https://img.shields.io/cocoapods/l/AYDispatcher.svg?style=flat)](http://cocoapods.org/pods/AYDispatcher)
[![Platform](https://img.shields.io/cocoapods/p/AYDispatcher.svg?style=flat)](http://cocoapods.org/pods/AYDispatcher)

## 引用
　　使用[CocoaPods](http://cocoapods.org)可以很方便地引入AYDispatcher。Podfile添加AYDispatcher的依赖。

```ruby
pod "AYDispatcher"
```

## 简介
　　AYDispatcher用于解决在多模块开发时，接口调度的解决方案。详细使用方案可以查看Example示例。

## Example
### 结构说明
　　当多人合作时，或者需要模块复用时，采用CocoaPods作为模块引用方案是比较方便简单的。在这个Example中，项目结如下：

```
Example
└──Modules
   └──Api
   └──ModuleA
   └──ModuleB
```

- Api存放ModuleA和ModuleB需要对外暴露的接口
- ModuleA和ModuleB完全不暴露任何头文件，实现Api上对外爆露的接口
- Example引用ModuleA、ModuleB、Api，只可以使用Api中的内容（因为ModuleA和ModuleB没有暴露头文件）

### AYDispatcher作用
　　在这种结构下，各个模块几乎彻底隔离开发，因此不需要再关注子模块的实现细节。由于现在仅暴露了Api的接口，并没有暴露接口的实现，模块间如果存在互相调用的话，也会带来引用的问题。为了简化种模块之间的调用问题，可以使用AYDispatcher可以轻松解耦。

## License

AYDispatcher is available under the MIT license. See the LICENSE file for more info.
