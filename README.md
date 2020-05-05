![](https://github.com/EngrAhsanAli/AARatingBar/blob/master/AARatingBar.png)


# Table of Contents

- [AARatingBar](#section-id-4)
  - [Description](#section-id-10)
  - [Demonstration](#section-id-16)
  - [Requirements](#section-id-26)
- [Installation](#section-id-32)
  - [CocoaPods](#section-id-37)
  - [Carthage](#section-id-63)
  - [Manual Installation](#section-id-82)
- [Getting Started](#section-id-87)
  - [Create object of rating bar](#section-id-90)
  - [Set view object as rating bar](#section-id-104)
  - [Customise the rating bar](#section-id-112)
  - [Get rating through callback](#section-id-132)
  - [Set optional values](#section-id-150)
- [Contributions & License](#section-id-156)


<div id='section-id-4'/>

#AARatingBar

[![Swift 5.2](https://img.shields.io/badge/Swift-5.2-orange.svg?style=flat)](https://developer.apple.com/swift/) [![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage) [![CocoaPods](https://img.shields.io/cocoapods/v/AARatingBar.svg)](http://cocoadocs.org/docsets/AARatingBar) [![License MIT](https://img.shields.io/badge/License-MIT-blue.svg?style=flat)](https://github.com/Carthage/Carthage) [![Build Status](https://travis-ci.org/EngrAhsanAli/AARatingBar.svg?branch=master)](https://travis-ci.org/EngrAhsanAli/AARatingBar) 
![License MIT](https://img.shields.io/github/license/mashape/apistatus.svg) [![CocoaPods](https://img.shields.io/cocoapods/p/AARatingBar.svg)]()


<div id='section-id-10'/>

##Description


AARatingBar is a simple, lightweight & easy-to-use rating bar designed to get and set ratings in iOS, written in Swift. It is a customised storyboard based `UIView` class that allows to customise in the `UIStoryboard` without writing code.


<div id='section-id-16'/>

##Demonstration



![](https://github.com/EngrAhsanAli/AARatingBar/blob/master/Screenshots/demo.gif)

![](https://github.com/EngrAhsanAli/AARatingBar/blob/master/Screenshots/custom_font.png)


To run the example project, clone the repo, and run `pod install` from the Example directory first.


<div id='section-id-26'/>

##Requirements

- iOS 8.0+
- Xcode 8.0+
- Swift 3+

<div id='section-id-32'/>

# Installation

`AARatingBar` can be installed using CocoaPods, Carthage, or manually.


<div id='section-id-37'/>

##CocoaPods

`AARatingBar` is available through [CocoaPods](http://cocoapods.org). To install CocoaPods, run:

`$ gem install cocoapods`

Then create a Podfile with the following contents:

```
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '8.0'
use_frameworks!

target '<Your Target Name>' do
pod 'AARatingBar'
end

```

Finally, run the following command to install it:
```
$ pod install
```



<div id='section-id-63'/>

##Carthage

To install Carthage, run (using Homebrew):
```
$ brew update
$ brew install carthage
```
Then add the following line to your Cartfile:

```
github "EngrAhsanAli/AARatingBar" "master"
```

Then import the library in all files where you use it:
```swift
import AARatingBar
```


<div id='section-id-82'/>

##Manual Installation

If you prefer not to use either of the above mentioned dependency managers, you can integrate `AARatingBar` into your project manually by adding the files contained in the Classes folder to your project.


<div id='section-id-87'/>

#Getting Started
----------

<div id='section-id-90'/>

##Create object of rating bar

Drag `UIView` object from the *Object Library* into your `UIViewController` in storyboard.

![](https://github.com/EngrAhsanAli/AARatingBar/blob/master/Screenshots/Step1.png)

<div id='section-id-104'/>

##Set view object as rating bar

Set the view's class to `AARatingBar` in the *Identity Inspector*.
Make sure the module property is also set to  `AARatingBar`.

![](https://github.com/EngrAhsanAli/AARatingBar/blob/master/Screenshots/Step2.png)

<div id='section-id-112'/>

##Customise the rating bar

You can customise the rating bar appearance in the *Attributes Inspector.* 

> Note: If storyboard does not show the stars click *Refresh All Views* from the *Editor menu*.

![](https://github.com/EngrAhsanAli/AARatingBar/blob/master/Screenshots/Step3.png)

<div id='section-id-132'/>

##Get rating through callback

You can get rating change though `ratingDidChange` closure.

```swift
ratingBar.ratingDidChange = { ratingValue in
// get current selected rating
}

customRatingBar.starFont = UIFont.init(name: "AARatingBar", size: 10)! // sets custom font icon

```

> You can check if rating is empty or not using simple property `ratingBar.isEmpty`.

<div id='section-id-150'/>

##Set optional values

You can use following variants: 

|  Rating Options		 |  Types		  | Description		    		 |
|------------------------|----------------|------------------------------|
| `isEnabled`            | `Bool`         | Rating set enabled           |
| `canAnimate`           | `Bool`         | Rating filling with animation|
| `isEmpty`              | `Bool`         | Selected rating is empty     |
| `isAbsValue`           | `Bool`         | Precise rating or absolute   |
| `filledIcon`           | `String`       | Filled star icon             |
| `unFilledIcon`         | `String`       | Empty star icon              |
| `value`                | `CGFloat`      | Current rating value         |
| `color`                | `UIColor`      | Rating stars color           |
| `starFont`                | `UIFont`      | Rating stars font icon file           |
| `animationInterval`    | `TimeInterval` | Rating change animation      |

<div id='section-id-156'/>

#Contributions & License

`AARatingBar` is available under the MIT license. See the [LICENSE](./LICENSE) file for more info.

Pull requests are welcome! The best contributions will consist of substitutions or configurations for classes/methods known to block the main thread during a typical app lifecycle.

I would love to know if you are using `AARatingBar` in your app, send an email to [Engr. Ahsan Ali](mailto:hafiz.m.ahsan.ali@gmail.com)

