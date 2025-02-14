//
//  DLAppDelegate.m
//  CoinQPay-iOS
//
//  Created by x-oauth-basic on 08/02/2024.
//  Copyright (c) 2024 x-oauth-basic. All rights reserved.
//

#import "DLAppDelegate.h"
#import <CoinQPay/CoinQPay.h>

@implementation DLAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [CPayApi registerAppID:@"coinqpaydemo"];
    
    
    return YES;
}
- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey,id> *)options {
    
    [CPayApi handleURL:url options:options result:^(TPRespObj *respObj) {
            NSLog(@"message:%@",respObj.message);
            NSLog(@"result:%lu",(unsigned long)respObj.result);
            NSDictionary *json = [respObj.data copy];
            NSLog(@"data:%@",json);
        
            NSString *action = json[@"action"];
            if ([action isEqualToString:kTPSDKActionLogin]) {
                
                NSString * fromAddress = json[@"wallet"];
                NSString * network = json[@"network"];
                NSString * chainId = json[@"chainId"];

                NSLog(@"fromAddress:%@\nnetwork:%@\nchainId=%@",fromAddress,network,chainId);
                
            }else  if ([action isEqualToString:kTPSDKActionPushTransaction]) {
                NSLog(@"Transaction data:%@",json);
                
                
                
            }
    }];
    
    return YES;
}
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
