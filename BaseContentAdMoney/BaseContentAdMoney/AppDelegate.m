//
//  AppDelegate.m
//  BaseContentAdMoney
//
//  Created by Lucas Luu on 12/20/17.
//  Copyright © 2017 Lucas Luu. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

+(AppDelegate *)sharedInstance
{
    return (AppDelegate*)[[UIApplication sharedApplication] delegate];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    
    _appDataHandler = [[ApplicationDataHandler alloc] init];
    
    ViewController* singleVC = [[ViewController alloc] init];
    _navController = [[UINavigationController alloc] initWithRootViewController:singleVC];
    [[_navController navigationBar]setBarTintColor:[UIColor LVL_colorWithHexString:@"222222" andAlpha:1.0]];
    [[_navController navigationBar]setTranslucent:NO];
    [[_navController navigationBar]setTitleTextAttributes:
     @{NSFontAttributeName : [UIFont boldSystemFontOfSize:15]
       ,NSForegroundColorAttributeName : [UIColor LVL_colorWithHexString:@"ffffff" andAlpha:1.0]}];
    // Setup Hamburger Button
    _window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [_window setRootViewController:_navController];
    [_window makeKeyAndVisible];
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
