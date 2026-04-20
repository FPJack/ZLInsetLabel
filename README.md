# ZLInsetLabel

[![CI Status](https://img.shields.io/travis/fanpeng/ZLInsetLabel.svg?style=flat)](https://travis-ci.org/fanpeng/ZLInsetLabel)
[![Version](https://img.shields.io/cocoapods/v/ZLInsetLabel.svg?style=flat)](https://cocoapods.org/pods/ZLInsetLabel)
[![License](https://img.shields.io/cocoapods/l/ZLInsetLabel.svg?style=flat)](https://cocoapods.org/pods/ZLInsetLabel)
[![Platform](https://img.shields.io/cocoapods/p/ZLInsetLabel.svg?style=flat)](https://cocoapods.org/pods/ZLInsetLabel)

## 简介

ZLInsetLabel 是一个轻量级的 `UILabel` 子类，支持为文本设置上、下、左、右内边距（padding），并自动适配 Auto Layout 的 `intrinsicContentSize` 和 `sizeThatFits:` 计算，无需嵌套额外视图。

## 功能特性

- ✅ 支持分别设置 `insetTop`、`insetLeft`、`insetBottom`、`insetRight`
- ✅ 支持通过 `edgeInsets` 属性一次性设置四个方向的内边距
- ✅ 提供链式调用 `.inset(top, left, bottom, right)` 语法
- ✅ 自动适配 `intrinsicContentSize` 和 `sizeThatFits:`，完美兼容 Auto Layout
- ✅ 轻量无依赖，仅一个 `.h` + `.m` 文件
- ✅ 支持 iOS 10.0+

## 安装

### CocoaPods

在 `Podfile` 中添加：

```ruby
pod 'ZLInsetLabel'
```

然后执行：

```bash
pod install
```

## 使用

### 导入头文件

```objective-c
#import <ZLInsetLabel/ZLInsetLabel.h>
```

### 方式一：单独设置各方向内边距

```objective-c
ZLInsetLabel *label = [[ZLInsetLabel alloc] init];
label.text = @"Hello World";
label.insetTop = 8;
label.insetLeft = 12;
label.insetBottom = 8;
label.insetRight = 12;
```

### 方式二：通过 edgeInsets 一次性设置

```objective-c
ZLInsetLabel *label = [[ZLInsetLabel alloc] init];
label.text = @"Hello World";
label.edgeInsets = UIEdgeInsetsMake(8, 12, 8, 12);
```

### 方式三：链式调用

```objective-c
ZLInsetLabel *label = [[ZLInsetLabel alloc] init];
label.text = @"Hello World";
label.inset(8, 12, 8, 12);
```

## API

| 属性 / 方法 | 类型 | 说明 |
|---|---|---|
| `insetTop` | `CGFloat` | 顶部内边距 |
| `insetLeft` | `CGFloat` | 左侧内边距 |
| `insetBottom` | `CGFloat` | 底部内边距 |
| `insetRight` | `CGFloat` | 右侧内边距 |
| `edgeInsets` | `UIEdgeInsets` | 一次性设置四个方向的内边距 |
| `inset` | Block | 链式设置内边距，`label.inset(top, left, bottom, right)` |

## 运行示例工程

```bash
git clone https://github.com/fanpeng/ZLInsetLabel.git
cd ZLInsetLabel/Example
pod install
open ZLInsetLabel.xcworkspace
```

## 系统要求

- iOS 10.0+

## 作者



## 许可证

ZLInsetLabel 基于 MIT 许可证开源，详情请查看 [LICENSE](LICENSE) 文件。
