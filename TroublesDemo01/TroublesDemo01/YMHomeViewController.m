//
//  YMHomeViewController.m
//  TroublesDemo01
//
//  Created by 白晗 on 2020/9/18.
//

#import "YMHomeViewController.h"
#import "YMTestViewController.h"

@interface YMHomeViewController ()

@end

@implementation YMHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *pushButton = [[UIButton alloc] init];
    pushButton.backgroundColor = [UIColor blueColor];
    [pushButton setTitle:@"push" forState:UIControlStateNormal];
    pushButton.frame = CGRectMake(100, 100, 100, 100);
    [pushButton addTarget:self action:@selector(pushButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:pushButton];
    
}

- (void)pushButtonClick {
    YMTestViewController *testVc = [[YMTestViewController alloc] init];

    [self.navigationController pushViewController:testVc animated:YES];
}


@end
