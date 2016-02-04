//
//  ViewController.m
//  NetTest
//
//  Created by baidu on 15/12/29.
//  Copyright © 2015年 yockie. All rights reserved.
//

#import "ViewController.h"
#import "YCWebViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self createButtonIndex:1 text:@"Web请求与响应" action:@selector(btn1Clicked:)];
}

-(void)createButtonIndex:(NSInteger)index text:(NSString *)text action:(SEL)action {
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(50, 20+40*(index-1), 200, 30)];
    btn.backgroundColor = [UIColor blueColor];
    [btn setTitle:text forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [btn addTarget:self action:action forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void) btn1Clicked:(id)sender {
    YCWebViewController *vc = [[YCWebViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
