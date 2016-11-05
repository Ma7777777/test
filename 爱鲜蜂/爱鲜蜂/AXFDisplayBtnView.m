//
//  AXFDisplayBtnView.m
//  爱鲜蜂
//
//  Created by HH on 16/11/3.
//  Copyright © 2016年 胡浩. All rights reserved.
//

#import "AXFDisplayBtnView.h"


@interface AXFDisplayBtnView ()

@property (nonatomic,copy)NSString *name;

@end


@implementation AXFDisplayBtnView


//- (instancetype)initWithName:(NSString *)name
//{
//    
//    _name = name;
//    
//    AXFDisplayBtnView *displayBtnView = [[AXFDisplayBtnView alloc] init];
//    
//    return displayBtnView;
//}

- (void)setupUI
{
    
    self.backgroundColor = [UIColor yellowColor];
    NSArray<NSString *> *btnName = @[@"每日签到",@"疯狂秒杀",@"鲜活直供",@"大闸蟹"];
    
    NSMutableArray<UIView *> *viewArray = [NSMutableArray array];
    
    [btnName enumerateObjectsUsingBlock:^(NSString * _Nonnull str, NSUInteger idx, BOOL * _Nonnull stop) {
    
        UIView *view = [[UIView alloc] init];
    
        view.backgroundColor = [UIColor whiteColor];
    
        UIButton *btn = [[UIButton alloc] init];
        
        btn.backgroundColor = [UIColor cz_randomColor];
        
        btn.layer.cornerRadius= 22;
        
        [view addSubview:btn];
        
        UILabel* label = [[UILabel alloc] init];
    
        label.text = str;
    
        label.font = [UIFont systemFontOfSize:12];
        
        label.textAlignment = NSTextAlignmentCenter;
        
        [view addSubview:label];
        
        [viewArray addObject:view];
        
        [self addSubview:view];
        
        [btn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(view);
            make.centerX.equalTo(view);
            make.size.mas_equalTo(CGSizeMake(44, 44));
        }];
        
        [label mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(btn.mas_bottom).offset(5);
            make.centerX.equalTo(view);
            make.bottom.equalTo(view);
            
        }];
    }];
    
    
    //MARK:布局view
    [viewArray mas_distributeViewsAlongAxis:MASAxisTypeHorizontal withFixedSpacing:45 leadSpacing:35 tailSpacing:35];
    
    [viewArray mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.offset(10);
        make.centerY.equalTo(self);
    }];


}


@end
