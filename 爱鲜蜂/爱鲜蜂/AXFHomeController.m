//
//  AXFHomeController.m
//  爱鲜蜂
//
//  Created by HH on 16/11/3.
//  Copyright © 2016年 胡浩. All rights reserved.
//

#import "AXFHomeController.h"
#import "AXFHomeLayout.h"
#import "AXFDisplayCell.h"
#import "AXFDiscountCell.h"
#import "AXFConvenienceCell.h"
#import "AXFConvenienceGoodsCell.h"
#import "AXFClassifyCell.h"
#import "AXFClassifyGoodsCell.h"


static NSString *cellID = @"cellID";
static NSString *displayCellID = @"displayCellID";
static NSString *discountCellID = @"discountCellID";
static NSString *convenienceCellID = @"convenienceCellID";
static NSString *convenienceGoodsCellID = @"convenienceGoodsCellID";
static NSString *classifyCellID = @"classifyCellID";
static NSString *classifyGoodsCellID = @"classifyGoodsCellID";

//#define KSCREENWIDTH [UIScreen mainScreen].bounds.size.width
//#define KSCREENHEIGHT [UIScreen mainScreen].bounds.size.height

@interface AXFHomeController ()<UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>

@end

@implementation AXFHomeController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupUI];
    // Do any additional setup after loading the view.
}

- (void)setupUI
{
    self.view.backgroundColor = [UIColor yellowColor];
    
    AXFHomeLayout *layout = [[AXFHomeLayout alloc] init];
    
    UICollectionView *collectionView = [[UICollectionView alloc] initWithFrame:[UIScreen mainScreen].bounds collectionViewLayout:layout];
    
    collectionView.dataSource = self;
    
    collectionView.delegate = self;
    
    collectionView.backgroundColor = [UIColor cz_colorWithHex:0xebebeb];
    
    //展示cell
    [collectionView registerClass:[AXFDisplayCell class] forCellWithReuseIdentifier:displayCellID];
    
    //打折cell
    [collectionView registerClass:[AXFDiscountCell class] forCellWithReuseIdentifier:discountCellID];
    
    //便利店cell
    [collectionView registerClass:[AXFConvenienceCell class] forCellWithReuseIdentifier:convenienceCellID];
    
    //便利店商品cell
    [collectionView registerClass:[AXFConvenienceGoodsCell class] forCellWithReuseIdentifier:convenienceGoodsCellID];
    
    //分类cell
    [collectionView registerClass:[AXFClassifyCell class] forCellWithReuseIdentifier:classifyCellID];
    
    //分类商品cell
    [collectionView registerClass:[AXFClassifyGoodsCell class] forCellWithReuseIdentifier:classifyGoodsCellID];
    
    [collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:cellID];
    
    [self.view addSubview:collectionView];
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 9;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    if (section == 2) {
        return 5;
    }
    
    if (section == 0 || section == 1) {
        return 1;
    }
    
    return 4;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    //第0组
    if (indexPath.section == 0) {
        AXFDisplayCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:displayCellID forIndexPath:indexPath];
        
//        cell.backgroundColor = [UIColor whiteColor];
        
        return cell;
    }
    
    //第1组
    if (indexPath.section == 1) {
        AXFDiscountCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:discountCellID forIndexPath:indexPath];
        
        cell.backgroundColor = [UIColor whiteColor];
        
        return cell;
    }
    
    //第2组
    if (indexPath.section == 2 && indexPath.item == 0) {
       AXFConvenienceCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:convenienceCellID forIndexPath:indexPath];
        
        cell.backgroundColor = [UIColor whiteColor];
        
        return cell;
    }else if (indexPath.section == 2)
    {
        AXFConvenienceGoodsCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:convenienceGoodsCellID forIndexPath:indexPath];
        
        cell.backgroundColor = [UIColor whiteColor];
        
        return cell;
    }
    
    //剩余组
    if (indexPath.item == 0) {
        AXFClassifyCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:classifyCellID forIndexPath:indexPath];
        
        cell.backgroundColor = [UIColor whiteColor];
        
        return cell;
    }
    
    
    AXFClassifyGoodsCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:classifyGoodsCellID forIndexPath:indexPath];
    
    cell.backgroundColor = [UIColor whiteColor];
    
    return cell ;
}


#pragma mark - 设置cell的大小
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(AXFHomeLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    //第0组
    if (indexPath.section == 0) {
        
        return CGSizeMake(kScreenWidth, 240);
    }
    
    //第1组
    if (indexPath.section == 1) {
        
        return CGSizeMake(kScreenWidth, 140);
    }
    
    //第2组
    if (indexPath.section == 2 && indexPath.item == 0) {
        return CGSizeMake(kScreenWidth, 215);
    }else if (indexPath.section == 2)
    {
        CGFloat width = (collectionView.frame.size.width - 1) / 2;
        
        return CGSizeMake(width, 75);
    }
    
    
    //剩余组
    if (indexPath.item == 0) {
        return CGSizeMake(kScreenWidth, 140);
    }else
    {
        CGFloat width = (collectionView.frame.size.width - 2) / 3;
        return CGSizeMake(width, 395 / 2);
    }
//335
    return CGSizeZero;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
