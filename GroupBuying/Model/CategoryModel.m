//
//  CategoryModel.m
//  GroupBuying
//
//  Created by Chris on 16/3/16.
//  Copyright © 2016年 Chris. All rights reserved.
//

#import "CategoryModel.h"

@implementation CategoryModel

- (NSArray *)loadPlistData{
    NSString *file = [[NSBundle mainBundle] pathForResource:@"categories" ofType:@"plist"];
    NSArray *plistArray = [NSArray arrayWithContentsOfFile:file];
    NSArray *dataArr = [self getDataWithArray:plistArray];
    return dataArr;
}

//字典转模型
- (CategoryModel *)makeModelWithDict:(NSDictionary *) dict{
    self.heighlighted_icon = [dict objectForKey:@"highlighted_icon"];
    self.small_heightlight_icon = [dict objectForKey:@"small_highlighted_icon"];
    self.icon = [dict objectForKey:@"icon"];
    self.small_icon = [dict objectForKey:@"small_icon"];
    self.name = [dict objectForKey:@"name"];
    self.subcategories = [dict objectForKey:@"subcategories"];
    
    return self;
}

//plistArray解析
- (NSArray *) getDataWithArray:(NSArray *) array{
    NSMutableArray *modelArr = [[NSMutableArray alloc] init];
    for(NSDictionary *dict in array){
        CategoryModel *model = [[CategoryModel alloc] init];
        [model makeModelWithDict:dict];
        [modelArr addObject:model];
    }
    return modelArr;
}

@end
