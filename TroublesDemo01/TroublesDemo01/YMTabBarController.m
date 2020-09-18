//
//  YMTabBarController.m
//  TroublesDemo01
//
//  Created by 白晗 on 2020/9/18.
//

#import "YMTabBarController.h"
#import "YMHomeViewController.h"
#import "YMCartViewController.h"
#import "YMCategoryViewController.h"
#import "YMProfileViewController.h"
#import "YMNavigationController.h"

@interface YMTabBarController ()

@end

@implementation YMTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addChildVcWithVc:[[YMHomeViewController alloc] init] title:@"首页" imageName:@"tab_bar_home" selectImageName:@"tab_bar_home_select"];
    [self addChildVcWithVc:[[YMCategoryViewController alloc] init] title:@"分类" imageName:@"tab_bar_category" selectImageName:@"tab_bar_category_select"];
    [self addChildVcWithVc:[[YMCartViewController alloc] init] title:@"购物车" imageName:@"tab_bar_cart" selectImageName:@"tab_bar_cart_select"];
    [self addChildVcWithVc:[[YMProfileViewController alloc] init] title:@"我的" imageName:@"tab_bar_profile" selectImageName:@"tab_bar_profile_select"];
}

- (void)addChildVcWithVc:(UIViewController *)vc title:(NSString *)title imageName:(NSString *)imageName selectImageName:(NSString *)selectImageName {
    
    YMNavigationController *nav = [[YMNavigationController alloc] initWithRootViewController:vc];
    nav.tabBarItem = [[UITabBarItem alloc] initWithTitle:title image:[[UIImage imageNamed:imageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[[UIImage imageNamed:selectImageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    // 设置tabbar字体大小
    [nav.tabBarItem setTitleTextAttributes:@{NSFontAttributeName : [UIFont systemFontOfSize:12]} forState:UIControlStateNormal];
    
    // 设置未选中文字颜色
    [[UITabBar appearance] setUnselectedItemTintColor:[UIColor redColor]];
    [[UITabBar appearance] setTintColor:[UIColor greenColor]];
    
    [self addChildViewController:nav];
}

@end
