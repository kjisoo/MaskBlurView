# MaskBlurView

[![Version](https://img.shields.io/cocoapods/v/MaskBlurView.svg?style=flat)](http://cocoapods.org/pods/MaskBlurView)
[![License](https://img.shields.io/cocoapods/l/MaskBlurView.svg?style=flat)](http://cocoapods.org/pods/MaskBlurView)
[![Platform](https://img.shields.io/cocoapods/p/MaskBlurView.svg?style=flat)](http://cocoapods.org/pods/MaskBlurView)

## MaskBlurView

![alt tag](https://github.com/kjisoo/MaskBlurView/blob/master/Screens/screen1.png)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.
```swift
let path = UIBezierPath(rect: RectViewSize)
path.append(UIBezierPath(rect: RectWithoutBlur))

let maskBlurView = MaskBlurView(frame: RectViewSize)
maskBlurView.changeEffect(from: .dark)
maskBlurView.apply(with: path)
self.view.addSubview(maskBlurView)
```

## Requirements

## Installation

MaskBlurView is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'MaskBlurView'
```

## Author

kimjisoo, kim@jisoo.net

## License

MaskBlurView is available under the MIT license. See the LICENSE file for more info.
