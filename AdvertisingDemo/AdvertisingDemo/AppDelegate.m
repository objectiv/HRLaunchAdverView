//
//  https://github.com/objectiv/HRLaunchAdverView.git
//  AppDelegate.m
//  AdvertisingDemo
//
//  Created by 王凯 on 2017/3/28.
//  Copyright © 2017年 王凯. All rights reserved.
//

#import "AppDelegate.h"
#import "HRLaunchAdverView.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    
    [self.window setFrame:self.window.bounds];
    [self.window makeKeyAndVisible];
    self.window.rootViewController = [[ViewController alloc] init];
    
    HRLaunchAdverView *adver = [[HRLaunchAdverView alloc] initWithSuperView:self.window
                                                                   imageStr:@"http://pic.ffpic.com/files/2013/0805/sj0822rrw05_s.jpg"
                                                                clickAction:^(NSInteger idx) {
                                                                    switch (idx) {
                                                                        case 1:
                                                                        {
                                                                            // 点击了广告
                                                                        }
                                                                            break;
                                                                        case 2:
                                                                        {
                                                                            // 点击了跳过
                                                                        }
                                                                            break;
                                                                        case 3:
                                                                        {
                                                                            // 自动跳过
                                                                        }
                                                                            break;
                                                                            
                                                                        default:
                                                                            break;
                                                                    }
                                                                }];
    [adver launch];
    
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
