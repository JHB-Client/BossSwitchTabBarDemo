//
//  AppDelegate.m
//  BossSwitchTabBarDemo
//
//  Created by admin on 2019/10/17.
//  Copyright © 2019 admin. All rights reserved.
//

#import "AppDelegate.h"
#import "JobViewController.h"
#import "CompanyViewController.h"
//
#import "AsomeWorkerViewController.h"
//
#import "NewsViewController.h"
#import "MeViewController.h"
@interface AppDelegate ()
@property (nonatomic, strong) NSArray *bossArr;
@property (nonatomic, strong) NSArray *workerArr;
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    //
    UITabBarController *tabBarCtr = [UITabBarController new];
    //
    JobViewController *jobVCtr = [JobViewController new];
    jobVCtr.navigationItem.title = @"职位";
    jobVCtr.tabBarItem.image = [UIImage imageNamed:@"1"];
    jobVCtr.tabBarItem.title = @"职位";
    jobVCtr.view.backgroundColor = [UIColor redColor];
    UINavigationController *jobNaviCtr = [[UINavigationController alloc] initWithRootViewController:jobVCtr];
   

    CompanyViewController *companyVCtr = [CompanyViewController new];
    companyVCtr.navigationItem.title = @"公司";
    companyVCtr.tabBarItem.title = @"公司";
    companyVCtr.tabBarItem.image = [UIImage imageNamed:@"2"];
    companyVCtr.view.backgroundColor = [UIColor greenColor];
    UINavigationController *companyNaviCtr = [[UINavigationController alloc] initWithRootViewController:companyVCtr];
    
    NewsViewController *newsVCtr = [NewsViewController new];
    newsVCtr.navigationItem.title = @"消息";
    newsVCtr.tabBarItem.title = @"消息";
    newsVCtr.tabBarItem.image = [UIImage imageNamed:@"3"];
    newsVCtr.view.backgroundColor = [UIColor blueColor];
    UINavigationController *newsNaviCtr = [[UINavigationController alloc] initWithRootViewController:newsVCtr];
    
    
    MeViewController *meVCtr = [MeViewController new];
    meVCtr.tabBarItem.title = @"我的";
    meVCtr.tabBarItem.image = [UIImage imageNamed:@"4"];
    meVCtr.view.backgroundColor = [UIColor yellowColor];
    self.workerArr = @[jobNaviCtr, companyNaviCtr, newsNaviCtr, meVCtr];
    
    //
    AsomeWorkerViewController *asomeWorkerVCtr = [AsomeWorkerViewController new];
    asomeWorkerVCtr.navigationItem.title = @"牛人";
    asomeWorkerVCtr.tabBarItem.title = @"牛人";
    asomeWorkerVCtr.tabBarItem.image = [UIImage imageNamed:@"5"];
    asomeWorkerVCtr.view.backgroundColor = [UIColor redColor];
    UINavigationController *asomeWorkerNaviVCtr = [[UINavigationController alloc] initWithRootViewController:asomeWorkerVCtr];
    //
    self.bossArr = @[asomeWorkerNaviVCtr, newsNaviCtr, meVCtr];
    //
    
    tabBarCtr.viewControllers = self.bossArr;
    //
    tabBarCtr.tabBar.translucent = false;
    self.window.rootViewController = tabBarCtr;
    [self.window makeKeyAndVisible];
    return YES;
}


- (void)switchTabBar:(BOOL)isBoss {
    UITabBarController *tabBarCtr = (UITabBarController *)self.window.rootViewController;
    tabBarCtr.viewControllers = isBoss == true ? self.bossArr : self.workerArr;
}

#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
