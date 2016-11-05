//
//  AXFClassifyCell.m
//  爱鲜蜂
//
//  Created by HH on 16/11/4.
//  Copyright © 2016年 胡浩. All rights reserved.
//

#import "AXFClassifyCell.h"

@interface AXFClassifyCell ()

@property (nonatomic,weak)UIView *lineView;

@property (nonatomic,weak)UILabel *nameLabel;

@property (nonatomic,weak)UIImageView *pictureView;

@property (nonatomic,weak)UIButton *moreBtn;

@end

@implementation AXFClassifyCell

- (void)setupUI
{
    //条view
    UIView *lineView = [[UIView alloc] init];
    
    _lineView = lineView;
    
    lineView.backgroundColor = [UIColor cz_colorWithHex:0x20b1fa];
    
    [self.contentView addSubview:lineView];
    
    //名称
    UILabel *nameLabel = [UILabel cz_labelWithText:@"优选水果" fontSize:13.5 color:[UIColor cz_colorWithHex:0xf38631]];
    
    nameLabel.font = [UIFont systemFontOfSize:13.5 weight:6];
    
    _nameLabel = nameLabel;
    
    [self.contentView addSubview:nameLabel];
    
    //图片
    UIImageView *pictureView = [[UIImageView alloc] init];
    
    pictureView.backgroundColor = [UIColor cz_colorWithHex:0xf7d802];
    
    _pictureView = pictureView;
    
    [self.contentView addSubview:pictureView];
    
    
    //更多按钮
//    UIButton *moreBtn = [UIButton cz_textButton:@"" fontSize:13 normalColor:[UIColor cz_colorWithHex:0x999999] selectedColor:nil];
//    
//    [moreBtn setTitle:@"更多" forState:UIControlStateNormal];
//    
//    [moreBtn setImage:[UIImage imageNamed:@"icon_go"] forState:UIControlStateNormal];
//    
//    [self.contentView addSubview:moreBtn];
    
    
    //MARK:布局
    
    [lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(10);
        make.top.mas_equalTo(13);
        make.size.mas_equalTo(CGSizeMake(5, 15));
    }];
    
    [nameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(lineView.mas_right).offset(8);
        make.top.equalTo(lineView);
    }];
    
    [pictureView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(lineView.mas_bottom).offset(13);
        make.left.offset(10);
        make.right.offset(-10);
        make.height.mas_equalTo(90);
    }];
}

@end
