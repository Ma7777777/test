//
//  AXFBaseView.m
//  爱鲜蜂
//
//  Created by HH on 16/11/3.
//  Copyright © 2016年 胡浩. All rights reserved.
//

#import "AXFBaseView.h"

@implementation AXFBaseView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self setupUI];
    }
    
    return self;
}

- (void)setupUI
{
    
}


- (void)awakeFromNib
{
    [super awakeFromNib];
    
    [self setupUI];
}

@end
