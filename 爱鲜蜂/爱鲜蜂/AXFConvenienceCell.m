//
//  AXFConvenienceCell.m
//  爱鲜蜂
//
//  Created by HH on 16/11/4.
//  Copyright © 2016年 胡浩. All rights reserved.
//

#import "AXFConvenienceCell.h"
#import "NSAttributedString+CZAdditon.h"

@implementation AXFConvenienceCell



- (void)setupUI
{
    UIImageView *convenienceView = [[UIImageView alloc] init];
    
    convenienceView.backgroundColor = [UIColor cz_colorWithHex:0xfdd000];
    
    [self.contentView addSubview:convenienceView];
    
    NSMutableArray<UIView *> *viewArray = [NSMutableArray array];
    
    
    //热销View
    UIImageView *hottestView = [[UIImageView alloc] init];
    
    hottestView.backgroundColor = [UIColor cz_colorWithHex:0xfec0c1];
    
    [self.contentView addSubview:hottestView];
    
    //折扣View
    UIImageView *bargianView = [[UIImageView alloc] init];
    
    bargianView.backgroundColor = [UIColor cz_colorWithHex:0x9ce2f9];
    
    [self.contentView addSubview:bargianView];
    
    [viewArray addObject:hottestView];
    [viewArray addObject:bargianView];
    
    [convenienceView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.right.equalTo(self.contentView);
        make.height.mas_equalTo(60);
    }];
    
    [viewArray mas_distributeViewsAlongAxis:MASAxisTypeHorizontal withFixedSpacing:12 leadSpacing:12 tailSpacing:12];
    
    [viewArray mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(convenienceView.mas_bottom);
        make.height.mas_equalTo(70);
    }];
    
    
    NSArray<NSString *> *nameArray = @[@"精选水果",@"牛奶面包",@"饮料酒水",@"更多"];
    
    NSMutableArray<UIButton *> *btnArray = [NSMutableArray array];
    
    [nameArray enumerateObjectsUsingBlock:^(NSString * _Nonnull name, NSUInteger idx, BOOL * _Nonnull stop) {
        
#warning image
        UIButton *btn = [self createButtonWithImageName:nil tittle:name andTag:idx];
        
        [btnArray addObject:btn];
        
    }];
    
    [btnArray mas_distributeViewsAlongAxis:MASAxisTypeHorizontal withFixedSpacing:28 leadSpacing:42 tailSpacing:42];
    
    [btnArray mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(bargianView.mas_bottom);
    }];
    
    
    
}


#pragma mark - 图文混排
- (UIButton *)createButtonWithImageName:(NSString *)imageName tittle:(NSString *)tittle andTag:(NSInteger)tag
{
    UIButton *btn = [[UIButton alloc] init];
    //利用老师给的分类,创建图文混排的按钮(图片转换成文字格式来显示)
    [btn setAttributedTitle:[NSAttributedString cz_imageTextWithImage:[UIImage imageNamed:imageName] imageWH:32 title:tittle fontSize:12 titleColor:[UIColor cz_colorWithHex:0x181818] spacing:13] forState:UIControlStateNormal];
//    btn.titleLabel.font = [UIFont systemFontOfSize:12 weight:15];
    btn.titleLabel.numberOfLines = 0;
    btn.tag = tag;
    btn.titleLabel.textAlignment = NSTextAlignmentCenter;
    [btn sizeToFit];//要自适应!!!!!!!!!,要不没大小!!!!然后就不显示了
    [btn addTarget:self action:@selector(clickBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:btn];
    return btn;
}

- (void)clickBtn:(UIButton *)sender
{
    NSLog(@"%zd",sender.tag);
}

@end
