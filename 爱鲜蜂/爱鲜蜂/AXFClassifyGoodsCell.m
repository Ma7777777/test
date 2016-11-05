//
//  AXFClassifyGoodsCell.m
//  爱鲜蜂
//
//  Created by HH on 16/11/4.
//  Copyright © 2016年 胡浩. All rights reserved.
//

#import "AXFClassifyGoodsCell.h"

@interface AXFClassifyGoodsCell ()

@property (nonatomic,weak)UIImageView *pictureView;//图片

@property (nonatomic,weak)UILabel *nameLabel;//名称

@property (nonatomic,weak)UILabel *descLabel;//描述

@property (nonatomic,weak)UILabel *capacityLabel;//容量

@property (nonatomic,weak)UILabel *discountPriceLabel;//折扣价

@property (nonatomic,weak)UILabel *originPriceLabel;//原价

@end

@implementation AXFClassifyGoodsCell

- (void)setupUI
{
    //图片view
    UIImageView *pictureView = [[UIImageView alloc] init];
    
    _pictureView = pictureView;
    
    pictureView.backgroundColor = [UIColor cz_randomColor];
    
    [self.contentView addSubview:pictureView];
    
    //名称label
    UILabel *nameLabel = [UILabel cz_labelWithText:@"爱鲜蜂·冬枣" fontSize:14 color:[UIColor blackColor]];
    
    _nameLabel = nameLabel;

    [self.contentView addSubview:nameLabel];
    
    //描述label
    UILabel *descLabel = [UILabel cz_labelWithText:@"精选" fontSize:12 color:[UIColor cz_colorWithHex:0xff5353]];
    
    
    
    descLabel.layer.borderColor = [UIColor cz_colorWithHex:0xff5353].CGColor;
    
    descLabel.layer.borderWidth = 1.0;
    
    descLabel.layer.cornerRadius = 3.0;
    
    descLabel.layer.masksToBounds = YES;
    
    _descLabel = descLabel;
    
    [self.contentView addSubview:descLabel];
    
    //容量label
    UILabel *capacityLabel = [UILabel cz_labelWithText:@"400-450g/盒" fontSize:13 color:[UIColor cz_colorWithHex:0x898989]];
    
    _capacityLabel = capacityLabel;
    
    [self.contentView addSubview:capacityLabel];
    
    //折扣价label
    UILabel *discountPriceLabel = [UILabel cz_labelWithText:@"¥9.9" fontSize:13 color:[UIColor cz_colorWithHex:0xff4400]];
    
    _discountPriceLabel = discountPriceLabel;
    
    [self.contentView addSubview:discountPriceLabel];
    
    //原价label
    UILabel *originPriceLabel = [UILabel cz_labelWithText:nil fontSize:12 color:[UIColor cz_colorWithHex:0x898989]];
    
    _originPriceLabel = originPriceLabel;
    
    //MARK:富文本
    //一定要用可变的
    NSMutableAttributedString *text = [[NSMutableAttributedString alloc] initWithString:@"人民币13"];
    
    [text setAttributes:@{NSStrikethroughStyleAttributeName :@(1),NSStrikethroughColorAttributeName:[UIColor cz_colorWithHex:0x898989]} range:NSMakeRange(0, text.length)];
    
    originPriceLabel.attributedText = text;
    
    [self.contentView addSubview:originPriceLabel];
    
    
    //MARK:布局
    [pictureView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.right.offset(0);
        make.height.mas_equalTo(120);
    }];
    
    [nameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.offset(6);
        make.top.equalTo(pictureView.mas_bottom);
    }];
    
    [descLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(nameLabel);
        make.top.equalTo(nameLabel.mas_bottom).offset(4);
    }];
    
    [capacityLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(nameLabel);
        make.top.equalTo(descLabel.mas_bottom).offset(4);
    }];
    
    [discountPriceLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(nameLabel);
        make.top.equalTo(capacityLabel.mas_bottom).offset(4);
    }];
    
    [originPriceLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(discountPriceLabel);
        make.left.equalTo(discountPriceLabel.mas_right).offset(4);
    }];
}

@end
