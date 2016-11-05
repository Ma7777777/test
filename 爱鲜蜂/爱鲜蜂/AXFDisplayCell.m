//
//  AXFDisplayCell.m
//  爱鲜蜂
//
//  Created by HH on 16/11/3.
//  Copyright © 2016年 胡浩. All rights reserved.
//

#import "AXFDisplayCell.h"
#import "AXFDisplayBtnView.h"
#import "SDCycleScrollView.h"

static NSString *cellID = @"cellID";

@interface AXFDisplayCell ()

@end

@implementation AXFDisplayCell


- (void)setupUI
{
    
//    AXFCycleView *cycleView = [[AXFCycleView alloc] init];
//    
//    [self.contentView addSubview:cycleView];
    
    NSArray *imageNames = @[@"h1.jpg",
                            @"h2.jpg",
                            @"h3.jpg",
                            @"h4.jpg",
//                            @"h7" // 本地图片请填写全名
                            ];
    //MARK:轮播
    SDCycleScrollView *cycleScrollView = [SDCycleScrollView cycleScrollViewWithFrame:CGRectZero shouldInfiniteLoop:YES imageNamesGroup:imageNames];
    
    //动画模式下不能设置其他小圆点的颜色
    cycleScrollView.pageControlStyle = SDCycleScrollViewPageContolStyleClassic;
    
    cycleScrollView.pageControlAliment = SDCycleScrollViewPageContolAlimentCenter;
    
    cycleScrollView.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    
    //在动画模式下才有效果.在无动画模式下改变高度会使pageController整体变变,小圆点的位置也随之改变
//    cycleScrollView.pageControlDotSize = CGSizeMake(80, 80);
    
    cycleScrollView.pageDotColor = [UIColor cz_colorWithHex:0xe0e0e0];
    
    cycleScrollView.currentPageDotColor = [UIColor cz_colorWithHex:0xffd600];
    
    [self.contentView addSubview:cycleScrollView];
    
    
    
    //MARK:displayBtnView
    AXFDisplayBtnView *displayBtnView = [[AXFDisplayBtnView alloc] init];
    
    displayBtnView.backgroundColor = [UIColor whiteColor];
    
    [self.contentView addSubview:displayBtnView];
    
    
    
    [cycleScrollView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.right.equalTo(self.contentView);
        make.height.mas_equalTo(160);
    }];
    
//    [cycleView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.left.right.equalTo(self.contentView);
//        make.height.mas_equalTo(160);
//    }];
    
    [displayBtnView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(cycleScrollView.mas_bottom);
        make.left.right.equalTo(self.contentView);
        make.height.mas_equalTo(80);
    }];
    
}



@end
