//
//  FirstViewController.m
//  GroupBuying
//
//  Created by 禹飞飞 on 16/3/15.
//  Copyright © 2016年 Chris. All rights reserved.
//

#import "FirstViewController.h"
#import "NavItem.h"
#import "PopViewController.h"

@interface FirstViewController () {
    UIBarButtonItem *firstItem;
    UIBarButtonItem *secondItem;
    UIBarButtonItem *thirdItem;
}
@end

@implementation FirstViewController

static NSString * const reuseIdentifier = @"Cell";

- (instancetype)init
{
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    return [self initWithCollectionViewLayout:layout];

}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.collectionView.backgroundColor = [UIColor whiteColor];
    [self createNavBar];
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
}

#pragma mark - 创建导航栏
- (void)createNavBar {
    //1.logo
    UIBarButtonItem *logo = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"icon_meituan_logo"] style: UIBarButtonItemStyleDone target:nil action:nil];
    self.navigationItem.leftBarButtonItem = logo;
    
    //2. 3个UIButtonItem
    NavItem *first = [NavItem makeItem];
    [first addTarget:self action:@selector(firstClick)];
    
    NavItem *second = [NavItem makeItem];
    [second addTarget:self action:@selector(secondClick)];
    
    NavItem *third = [NavItem makeItem];
    [third addTarget:self action:@selector(thirdClick)];
    
    
    firstItem = [[UIBarButtonItem alloc] initWithCustomView:first];
    secondItem = [[UIBarButtonItem alloc] initWithCustomView:second];
    thirdItem = [[UIBarButtonItem alloc] initWithCustomView:third];
    
    self.navigationItem.leftBarButtonItems = @[logo, firstItem, secondItem, thirdItem];
}

#pragma mark - 点击事件
- (void) firstClick {
    [self createPopver];
}

- (void) secondClick {
    NSLog(@"secondClick");
}

- (void) thirdClick {
    NSLog(@"thirdClick");
}

#pragma mark - 下拉菜单
- (void)createPopver {
    PopViewController *pvc = [[PopViewController alloc] init];
    UIPopoverController *pop = [[UIPopoverController alloc] initWithContentViewController:pvc];
    [pop presentPopoverFromBarButtonItem:firstItem permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 0;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 0;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

@end
