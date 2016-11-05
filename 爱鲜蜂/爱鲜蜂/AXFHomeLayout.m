//
//  AXFHomeLayout.m
//  爱鲜蜂
//
//  Created by HH on 16/11/3.
//  Copyright © 2016年 胡浩. All rights reserved.
//

#import "AXFHomeLayout.h"

@implementation AXFHomeLayout

- (void)prepareLayout
{
    [super prepareLayout];
    
    self.scrollDirection = UICollectionViewScrollDirectionVertical;
    
    self.minimumLineSpacing = 1;
    
    self.minimumInteritemSpacing = 1;
    
//    self.itemSize = CGSizeMake(50, 50);
    
    self.sectionInset = UIEdgeInsetsMake(0, 0, 20, 0);
}

@end
