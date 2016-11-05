//
//  AXFDiscountCell.m
//  爱鲜蜂
//
//  Created by HH on 16/11/4.
//  Copyright © 2016年 胡浩. All rights reserved.
//

#import "AXFDiscountCell.h"
#import "AXFDiscountLayout.h"
#import "AXFDiscountGoodsCell.h"

static NSString *cellID = @"cellID";
static NSString *AXFDiscountGoodsCellID = @"AXFDiscountGoodsCellID";

@interface AXFDiscountCell ()<UICollectionViewDataSource>

@end

@implementation AXFDiscountCell

- (void)setupUI
{
    AXFDiscountLayout *layout = [[AXFDiscountLayout alloc] init];
    
    UICollectionView *collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:layout];
    
    collectionView.backgroundColor = [UIColor whiteColor];
    
    collectionView.showsHorizontalScrollIndicator = NO;
    
    [collectionView registerClass:[AXFDiscountGoodsCell class] forCellWithReuseIdentifier:AXFDiscountGoodsCellID]
    ;
    collectionView.dataSource = self;
    
    [self.contentView addSubview:collectionView];
    
    [collectionView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.equalTo(self.contentView);
    }];
    
    
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 5;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    AXFDiscountGoodsCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:AXFDiscountGoodsCellID forIndexPath:indexPath];
    
    cell.backgroundColor = [UIColor whiteColor];
    
    return cell;
}

@end
