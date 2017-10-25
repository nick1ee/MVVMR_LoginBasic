//
//  AppDelegate.m
//  MVVMR_LoginBasic
//
//  Created by Nick Lee on 2017/10/25.
//  Copyright © 2017年 Nick Lee. All rights reserved.
//

#import "Router.h"
#import "AppDelegate.h"

@interface AppDelegate ()

@property (strong, nonatomic) Router *router;

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    UINavigationController *navigationController = [UINavigationController new];
    
    self.window.rootViewController = navigationController;
    
    self.router = [[Router alloc] initWithNavigation:navigationController];
    
    [self.router start];
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
