//
//  MOFSToolView.m
//  MOFSPickerManagerDemo
//
//  Created by 罗源 on 2018/2/5.
//  Copyright © 2018年 luoyuan. All rights reserved.
//

#import "MOFSToolView.h"

#define BAR_COLOR [UIColor colorWithRed:0.090  green:0.463  blue:0.906 alpha:1]
#define LINE_COLOR [UIColor colorWithRed:0.804  green:0.804  blue:0.804 alpha:1]
#define UISCREEN_WIDTH  [UIScreen mainScreen].bounds.size.width
#define UISCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height

@implementation MOFSToolView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        

        _cancelBar = [UIButton buttonWithType:UIButtonTypeCustom];
        _cancelBar.titleLabel.font = [UIFont systemFontOfSize: 15];
        [_cancelBar setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _cancelBar.backgroundColor = [UIColor colorWithRed:172/255.0 green:170/255.0 blue:173/255.0 alpha:1];
        [_cancelBar setTitle:@"取消" forState:UIControlStateNormal];
        [_cancelBar addTarget:self action:@selector(cancelAction) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:_cancelBar];

        _titleBar = [UILabel new];
        _titleBar.font = [UIFont systemFontOfSize: 15];
        _titleBar.textAlignment = NSTextAlignmentCenter;
        _titleBar.textColor = [UIColor blackColor];
        _titleBar.frame = CGRectMake(65, 0, UISCREEN_WIDTH - 130, frame.size.height);
        [self addSubview:_titleBar];
        
        _commitBar = [UIButton buttonWithType:UIButtonTypeCustom];
        _commitBar.titleLabel.font = [UIFont systemFontOfSize:15];
        [_commitBar setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _commitBar.backgroundColor = [UIColor colorWithRed:251/255.0 green:82/255.0 blue:136/255.0 alpha:0.8];

        [_commitBar setTitle:@"确认" forState:UIControlStateNormal];
        [_commitBar addTarget:self action:@selector(commitAction) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:_commitBar];

        _cancelBar.frame = CGRectMake(10, frame.size.height / 2.0 - 12.5, 56, 25);
        _commitBar.frame = CGRectMake(UISCREEN_WIDTH - 66, frame.size.height / 2.0 - 12.5, 56, 25);

        _cancelBar.layer.cornerRadius = 25 / 2.0;
        _commitBar.layer.cornerRadius = 25 / 2.0;

        _cancelBar.layer.masksToBounds = YES;
        _commitBar.layer.masksToBounds = YES;

        self.backgroundColor = [UIColor colorWithRed:239/255.0 green:239/255.0 blue:239/255.0 alpha:1];


    }
    return self;
}

#pragma mark - Action

- (void)cancelAction {
    if (self.cancelBlock) {
        self.cancelBlock();
    }
}

- (void)commitAction {
    if (self.commitBlock) {
        self.commitBlock();
    }
}

#pragma mark - install

//- (void)setCancelBarTitle:(NSString *)cancelBarTitle {
//    _cancelBarTitle = cancelBarTitle;
////    if (self.cancelBar) {
//////        self.cancelBar.text = cancelBarTitle;
////        [self.cancelBar setTitle:cancelBarTitle forState:UIControlStateNormal];
////    }
//}
//
//- (void)setCancelBarTintColor:(UIColor *)cancelBarTintColor {
//    _cancelBarTintColor = cancelBarTintColor;
//}
//
//- (void)setCommitBarTitle:(NSString *)commitBarTitle {
//    _commitBarTitle = commitBarTitle;
//    if (self.commitBar) {
////        self.commitBar.text = commitBarTitle;
//        [self.commitBar setTitle:commitBarTitle forState:UIControlStateNormal];
//    }
//}
//
//- (void)setCommitBarTintColor:(UIColor *)commitBarTintColor {
//    _commitBarTintColor = commitBarTintColor;
//    if (self.commitBar) {
//        self.commitBar.tintColor = commitBarTintColor;
//    }
//}

- (void)setTitleBarTitle:(NSString *)titleBarTitle {
    _titleBarTitle = titleBarTitle;
    if (self.titleBar) {
        self.titleBar.text = titleBarTitle;
    }
}

- (void)setTitleBarTextColor:(UIColor *)titleBarTextColor {
    _titleBarTextColor = titleBarTextColor;
    if (self.titleBar) {
        self.titleBar.textColor = titleBarTextColor;;
    }
}

@end
