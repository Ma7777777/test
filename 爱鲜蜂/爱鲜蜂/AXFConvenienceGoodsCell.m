//
//  AXFConvenienceGoodsCell.m
//  爱鲜蜂
//
//  Created by HH on 16/11/4.
//  Copyright © 2016年 胡浩. All rights reserved.
//

#import "AXFConvenienceGoodsCell.h"

@interface AXFConvenienceGoodsCell ()

@property (nonatomic,weak)UILabel *descLabel;

@property (nonatomic,weak)UILabel *priceLabel;

@property (nonatomic,weak)UIImageView *pictureView;

@end

@implementation AXFConvenienceGoodsCell

- (void)setupUI
{
    
    UILabel *descLabel = [UILabel cz_labelWithText:@"畅饮狂欢" fontSize:15 color:[UIColor blackColor]];
    
    _descLabel = descLabel;
    
    [self.contentView addSubview:descLabel];
    
    UILabel *priceLabel = [UILabel cz_labelWithText:@"雪碧听装1.5元" fontSize:12 color:[UIColor cz_colorWithHex:0x7abf48]];
#warning waring
//    NSMutableAttributedString *str = [[NSMutableAttributedString alloc]initWithString:@"雪碧听装1.5元"];
//    [str setAttributes:@{NSStrikethroughStyleAttributeName :@(1),NSStrikethroughColorAttributeName:[UIColor blackColor]} range:NSMakeRange(0, str.length)];
//    priceLabel.attributedText = str.copy;
    
//    priceLabel.font = [UIFont systemFontOfSize:15 weight:3];
    
    _priceLabel = priceLabel;
    
    [self.contentView addSubview:priceLabel];
    
    UIImageView *pictureView = [[UIImageView alloc] init];
    
    _pictureView = pictureView;
    
    pictureView.backgroundColor = [UIColor cz_randomColor];
    
    [self.contentView addSubview:pictureView];
    
    
    //MARK:布局
    [descLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.offset(11);
        make.bottom.equalTo(self.contentView.mas_centerY).offset(-5);
        make.width.mas_equalTo(90);
    }];
    
    [priceLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView.mas_centerY).offset(5);
        make.left.equalTo(descLabel);
        make.width.mas_equalTo(90);
    }];

#warning not sure
    [pictureView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(descLabel.mas_right).offset(10);
        make.right.top.bottom.equalTo(self.contentView);
    }];
}

@end
