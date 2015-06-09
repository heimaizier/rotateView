//
//  RotateView.h
//  YXBRotate
//
//  Created by YXB on 15/6/9.
//  Copyright (c) 2015年 YXB. All rights reserved.
//
#import <UIKit/UIKit.h>

@interface RotateView : UIView
@property (nonatomic,strong) UIImageView *imageView;

@property (nonatomic,assign) CGPoint myPrePoint;
@property (nonatomic,assign) CGPoint myCurPoint;
@property (nonatomic,assign) NSTimeInterval time1;
@property (nonatomic,assign) NSTimeInterval time2;
@property (nonatomic,assign) NSTimeInterval myTime;
@property (nonatomic,strong) UIButton *myButton;
@property (nonatomic,assign) CGRect myFrame;
@property (nonatomic,strong) UIButton *oneButton;
@property (nonatomic,strong) UIButton *twoButton;
@property (nonatomic,strong) UIButton *threeButton;
@property (nonatomic,strong) UIButton *fourButton;
@property (nonatomic,strong) NSMutableArray *mutArr;
- (void)tranformNameArr:(NSArray *)arr imageArr:(NSArray *)imageArr;

@end

