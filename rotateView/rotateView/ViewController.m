//
//  ViewController.m
//  rotateView
//
//  Created by YXB on 15/6/10.
//  Copyright (c) 2015年 YXB. All rights reserved.
//

#import "ViewController.h"
#import "RotateView.h"
#import "NewViewController.h"
#define ScreenSize [UIScreen mainScreen].bounds.size
@interface ViewController ()
{
    RotateView *rotateView;
    
}
@end

@implementation ViewController
- (void)showUI {
    
    rotateView = [[RotateView alloc]initWithFrame:CGRectMake(ScreenSize.width - 300, ScreenSize.height/2 - 150, 300, 300)];
    [rotateView tranformNameArr:@[@"1",@"2",@"3",@"4"] imageArr:@[@"我的",@"你的",@"他的",@"它的"]];
    rotateView.backgroundColor = [UIColor redColor];
    [self.view addSubview:rotateView];
    [rotateView.oneButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [rotateView.twoButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [rotateView.threeButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [rotateView.fourButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    
    UIView *bottomView = [[UIView alloc]initWithFrame:CGRectMake(0, ScreenSize.height - 49, ScreenSize.width, 49)];
    bottomView.backgroundColor = [UIColor brownColor];
    [self.view addSubview:bottomView];
    
    NSArray *nameArr = @[@"以前",@"现在"];
    for (int i= 0 ; i < nameArr.count; i ++) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
        [button setTitle:nameArr[i] forState:UIControlStateNormal];
        [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        button.frame = CGRectMake((ScreenSize.width - 49 *2)/3 + (49 +(ScreenSize.width - 49 *2)/3)*i , 0, 49, 49) ;
        if (i== 0) {
            [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        }
        [button addTarget:self action:@selector(bottomClick:) forControlEvents:UIControlEventTouchUpInside];
        button.tag = 2001+i;
        [bottomView addSubview:button];
        
    }
    
}
- (void)showTwoUI {
    [rotateView tranformNameArr:@[@"3",@"4",@"5",@"6"] imageArr:@[@"我们",@"你们",@"他们",@"他们"]];
    [rotateView.oneButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [rotateView.twoButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [rotateView.threeButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [rotateView.fourButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    
    
}
- (void)showOneUI {
    [rotateView tranformNameArr:@[@"1",@"2",@"3",@"4"] imageArr:@[@"我的",@"你的",@"他的",@"它的"]];
    [rotateView.oneButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [rotateView.twoButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [rotateView.threeButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [rotateView.fourButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    
    
}
- (void)bottomClick:(UIButton *)button {
    switch (button.tag) {
        case 2001:
        {
            [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
            UIButton *btn = (UIButton *)[self.view viewWithTag:2002];
            [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
            [self showOneUI];
        }
            break;
        case 2002:
        {
            [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
            UIButton *btn = (UIButton *)[self.view viewWithTag:2001];
            [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
            [self showTwoUI];
        }
            break;
            
        default:
            break;
    }
    
    
    
}

- (void)btnClick:(UIButton *)btn {
    NewViewController *newView = [[NewViewController alloc]init];
    [self.navigationController pushViewController:newView animated:YES];
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self showUI];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
