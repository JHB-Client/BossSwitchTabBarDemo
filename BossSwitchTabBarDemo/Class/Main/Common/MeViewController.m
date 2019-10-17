//
//  MeViewController.m
//  BossSwitchTabBarDemo
//
//  Created by admin on 2019/10/17.
//  Copyright © 2019 admin. All rights reserved.
//

#import "MeViewController.h"
#import "AppDelegate.h"
@interface MeViewController ()

@end

static BOOL isBoss = true;
@implementation MeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    isBoss = !isBoss;
    AppDelegate *delegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    [delegate switchTabBar:isBoss];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
