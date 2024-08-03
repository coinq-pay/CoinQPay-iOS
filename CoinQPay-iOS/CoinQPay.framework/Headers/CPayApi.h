//
//  CPayApi.h
//  CoinQPaySDK
//
//  Created by dushiling on 2024/6/21.
//

#import <Foundation/Foundation.h>
#import <TPSDK/TPSDK.h>

NS_ASSUME_NONNULL_BEGIN
/*!
 * @class CPayApi
 * @brief SDK入口
 */
@interface CPayApi : NSObject
/*!
 * @brief 注册ID
 * @param AppID a) 请确保AppID已经添加在Xcode工程info.plist-> URL types -> URL Schemes里!
 *              b) AppID也作为App回调时的URL跳转, 务必设置好AppID!
 *              c) 为了避免误操作其他App的跳转请求，请设置一个唯一的appID给CoinQPay, 建议为各个SDK添加命名后缀, 如xxxforsdk;
 *
 * @disucss 在AppDelegate -(application:didFinishLaunchingWithOptions:)方法里注册
 */
+ (void)registerAppID:(NSString *)AppID;

/*!
 * @brief 处理CPay的回调跳转
 * @discuss 在AppDelegate -(application:openURL:options:)方法里调用
 */
+ (BOOL)handleURL:(NSURL *)url
          options:(NSDictionary<UIApplicationOpenURLOptionsKey,id> *)options
           result:(void(^)(TPRespObj *respObj))result;






@end





NS_ASSUME_NONNULL_END
