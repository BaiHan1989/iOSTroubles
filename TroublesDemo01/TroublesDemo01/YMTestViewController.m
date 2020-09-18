//
//  YMTestViewController.m
//  TroublesDemo01
//
//  Created by 白晗 on 2020/9/18.
//

#import "YMTestViewController.h"

@interface YMTestViewController ()

@end

@implementation YMTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    UIButton *popButton = [[UIButton alloc] init];
    popButton.backgroundColor = [UIColor redColor];
    [popButton setTitle:@"popToRoot" forState:UIControlStateNormal];
    popButton.frame = CGRectMake(100, 100, 100, 100);
    [popButton addTarget:self action:@selector(popToRoot) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:popButton];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    YMTestViewController *vc = [[YMTestViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)popToRoot {
    [self.navigationController popToRootViewControllerAnimated:YES];
}

@end
