# CoinQPay-iOS

[![CI Status](https://img.shields.io/travis/x-oauth-basic/CoinQPay-iOS.svg?style=flat)](https://travis-ci.org/x-oauth-basic/CoinQPay-iOS)
[![Version](https://img.shields.io/cocoapods/v/CoinQPay-iOS.svg?style=flat)](https://cocoapods.org/pods/CoinQPay-iOS)
[![License](https://img.shields.io/cocoapods/l/CoinQPay-iOS.svg?style=flat)](https://cocoapods.org/pods/CoinQPay-iOS)
[![Platform](https://img.shields.io/cocoapods/p/CoinQPay-iOS.svg?style=flat)](https://cocoapods.org/pods/CoinQPay-iOS)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements
* Platform: **iOS**
* Language: **Objective-C**
* Operating environment: **iphone**

## Installation

CoinQPay-iOS is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'CoinQPay-iOS'
```

## Build developer environment
1. Set your **URL scheme**: Project->TARGETS->info->URL Types->Add URL scheme;
2. Add **LSApplicationQueriesSchemes** at info.plist，value with **tpoutside**

## Usage
#### Add header file at `AppDelegate.m`

```
#import <CoinQPay/CoinQPay.h>
```
#### Register your scheme at method `application:didFinishLaunchingWithOptions:`
```
[CPayApi registerAppID:@"demoapp"];
```

#### Observe callback at method `application:openURL:`

```
[CPayApi handleURL:url options:options result:^(TPRespObj *respObj) {
    respObj.result;     // TPRespResultCanceled = 0,TPRespResultSuccess, TPRespResultFailure,
    respObj.message;    // Result message
    respObj.data;       // Json details
    /* Json details:
    {
         action = pushTransaction;
         actionId = "";
         onlySign = 0;
         publickey = 0x58806D167911019Cf86a39944830aBd791922883;
         ref = TokenPocket;
         result = 1; 
         transaction = 0xe486a3440274a793391a02a2ba860ee692ca82fdfd5aac4b7c96be541296fb37;
         txId = 0xe486a3440274a793391a02a2ba860ee692ca82fdfd5aac4b7c96be541296fb37;
         wallet = "ETH-1";
    }
    */
}];
```
## Explain
The SDK aims to provide a variety of mainstream decentralized wallet payment options, currently connected to **TokenPocket**, followed by MetaMask, Biget, ApLink..... Will gradually access



## Author

dslAnna, shilingdu176@gmail.com

## License

CoinQPay-iOS is available under the MIT license. See the LICENSE file for more info.

