//
//  PopViewController.m
//  GroupBuying
//
//  Created by 禹飞飞 on 16/3/16.
//  Copyright © 2016年 Chris. All rights reserved.
//

#import "PopViewController.h"
#import "PopView.h"
#import "CategoryModel.h"

@interface PopViewController ()

@end

@implementation PopViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    PopView *pop = [PopView makePopView];
    [self.view addSubview:pop];
    
    pop.categoriesArray = [self getData];
    pop.autoresizingMask = UIViewAutoresizingNone;
    self.preferredContentSize = CGSizeMake(pop.frame.size.width, pop.frame.size.height);
    
}

- (NSArray *) getData{
    CategoryModel *md = [[CategoryModel alloc] init];
    NSArray *array = [md loadPlistData];
    
    return array;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
