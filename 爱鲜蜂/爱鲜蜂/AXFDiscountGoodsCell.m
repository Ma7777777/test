//
//  AXFDiscountGoodsCell.m
//  爱鲜蜂
//
//  Created by HH on 16/11/4.
//  Copyright © 2016年 胡浩. All rights reserved.
//

#import "AXFDiscountGoodsCell.h"

@interface AXFDiscountGoodsCell ()

@property (nonatomic,weak)UILabel *nameLabel;

@property (nonatomic,weak)UILabel *descLabel;

@property (nonatomic,weak)UIImageView *goodsView;

@property (nonatomic,weak)UILabel *discountLabel;

@end

@implementation AXFDiscountGoodsCell

- (void)setupUI
{
    UILabel *nameLabel = [UILabel cz_labelWithText:@"成长优酸乳" fontSize:15 color:[UIColor cz_colorWithHex:0xfd9dc0]];
    
    _nameLabel = nameLabel;
    
    [self.contentView addSubview:nameLabel];
    
    UILabel *discountLabel = [UILabel cz_labelWithText:@"特价2.9" fontSize:12 color:[UIColor cz_colorWithHex:0x909090]];
    
    _discountLabel = discountLabel;
    
    [self.contentView addSubview:discountLabel];
    
    
    UIImageView *goodsView = [[UIImageView alloc] init];
    
    _goodsView = goodsView;
    
    goodsView.backgroundColor = [UIColor cz_randomColor];
    
    [self.contentView addSubview:goodsView];
    
    UILabel *descLabel = [UILabel cz_labelWithText:@"限时特价" fontSize:10 color:[UIColor whiteColor]];
    
    _descLabel = descLabel;
    
    descLabel.font = [UIFont systemFontOfSize:10 weight:10];
    
    descLabel.layer.cornerRadius = 14;
    
    descLabel.layer.masksToBounds = YES;
    
    descLabel.backgroundColor = [UIColor cz_colorWithHex:0xf75e63];
    
    descLabel.textAlignment = NSTextAlignmentCenter;
    
    [self.contentView insertSubview:descLabel aboveSubview:goodsView];
    
    
    [nameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.contentView);
        make.top.offset(12.5);
    }];
    
    [discountLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(nameLabel.mas_bottom).offset(4);
        make.centerX.equalTo(self.contentView);
    }];
    
    [goodsView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.bottom.equalTo(self.contentView);
        make.top.equalTo(discountLabel.mas_bottom).offset(15);
    }];
    
    [descLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.contentView).offset(-10);
        make.centerY.equalTo(self.contentView);
        make.size.mas_equalTo(CGSizeMake(28, 28));
    }];
    
    
}

@end
