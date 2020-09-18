//
//  YMNavigationController.m
//  TroublesDemo01
//
//  Created by 白晗 on 2020/9/18.
//

#import "YMNavigationController.h"

@interface YMNavigationController ()

@end

@implementation YMNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    
    if (self.childViewControllers.count > 0) {
        
        viewController.hidesBottomBarWhenPushed = YES;
//         解决push多个控制器后，popToRootViewController TabBar消失
        if (self.childViewControllers.count > 1) {
            viewController.hidesBottomBarWhenPushed = NO;
        }
    }
    
    [super pushViewController:viewController animated:animated];
}

- (UIViewController *)popViewControllerAnimated:(BOOL)animated {
    return [super popViewControllerAnimated:animated];
}

- (void)backBtnClick {
    [self popViewControllerAnimated:YES];
}

@end
