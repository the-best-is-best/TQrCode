# TQrCode

[![Version](https://img.shields.io/cocoapods/v/TQrCode.svg?style=flat)](https://cocoapods.org/pods/TQrCode)
[![License](https://img.shields.io/cocoapods/l/TQrCode.svg?style=flat)](https://cocoapods.org/pods/TQrCode)
[![Platform](https://img.shields.io/cocoapods/p/TQrCode.svg?style=flat)](https://cocoapods.org/pods/TQrCode)
[![Maven Central](https://img.shields.io/maven-central/v/io.github.the-best-is-best/compose_qr_code)](https://central.sonatype.com/artifact/io.github.the-best-is-best/ComposeQrCode) 
[<img src="https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png" width="20" height="20">](https://github.com/the-best-is-best/ComposeQrCode)


## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## For read qr code

```swift 
 VStack{
    QrCodeReaderView(scannedCode: $newCode).onChange(of: newCode) { _ in
        print(newCode)
        
    }
}

```

### for generate qr code

```swift
  QRCodeGeneratorView(data: "sdsds" , logo: "name_image")

```

### Note not recommended to use QRCodeGeneratorView with logo because it will make qr code not readable

## Requirements

## Installation

TQrCode is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'TQrCode'
```

## Author

72160249, michelle.raouf@outlook.com

## License

TQrCode is available under the MIT license. See the LICENSE file for more info.
