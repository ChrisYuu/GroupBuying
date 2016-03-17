//
//  Cities.m
//  GroupBuying
//
//  Created by Chris on 16/3/17.
//  Copyright © 2016年 Chris. All rights reserved.
//

#import "Cities.h"

@implementation Cities

+ (NSArray *)getCities {
    //1.获取plist文件地址
    NSString *path = [[NSBundle mainBundle] pathForResource:@"cities" ofType:@"plist"];
    //2.加载plist文件为数组
    NSArray *array = [NSArray arrayWithContentsOfFile:path];
    //3.遍历数组，字典转模型
    NSMutableArray *modelArray = [[NSMutableArray alloc] init];
    for (NSDictionary *dict in array) {
        Cities *citiesModel = [[Cities alloc] init];
        citiesModel.name = [dict valueForKey:@"name"];
        citiesModel.pinYin = [dict valueForKey:@"pinYin"];
        citiesModel.pinYinHead = [dict valueForKey:@"pinYinHead"];
        citiesModel.regions = [dict valueForKey:@"regions"];
        [modelArray addObject:citiesModel];
    }
    return modelArray;
}

@end
