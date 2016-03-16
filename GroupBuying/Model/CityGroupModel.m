//
//  CityGroupModel.m
//  GroupBuying
//
//  Created by 禹飞飞 on 16/3/16.
//  Copyright © 2016年 Chris. All rights reserved.
//

#import "CityGroupModel.h"

@implementation CityGroupModel {
    NSArray *_plistArray;
}

- (instancetype)init{
    if (self = [super init]) {
        [self loadPlist];
    }
    return self;
}

- (void)loadPlist{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"cityGroups" ofType:@"plist"];
    _plistArray = [NSArray arrayWithContentsOfFile:path];
}

- (NSArray *)getModelArray {
    NSMutableArray *modelArray = [[NSMutableArray alloc] init];
    for (NSDictionary *dict in _plistArray) {
        CityGroupModel *cgm = [[CityGroupModel alloc] init];
        cgm.title = [dict objectForKey:@"title"];
        cgm.cities = [dict objectForKey:@"cities"];
        [modelArray addObject:cgm];
    }
    return modelArray;
}

@end
