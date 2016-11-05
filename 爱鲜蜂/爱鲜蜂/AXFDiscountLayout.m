//
//  AXFDiscountLayout.m
//  爱鲜蜂
//
//  Created by HH on 16/11/4.
//  Copyright © 2016年 胡浩. All rights reserved.
//

#import "AXFDiscountLayout.h"

@implementation AXFDiscountLayout

- (void)prepareLayout
{
    [super prepareLayout];
    
    self.minimumLineSpacing = 1 / [UIScreen mainScreen].scale;
    
    self.itemSize = CGSizeMake(107.5, self.collectionView.frame.size.height);
    
    self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
}

@end
