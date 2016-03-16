//
//  CategoryModel.h
//  GroupBuying
//
//  Created by Chris on 16/3/16.
//  Copyright © 2016年 Chris. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CategoryModel : NSObject

#pragma mark - 声明属性
//图标
@property (copy, nonatomic)NSString *heighlighted_icon;
@property (copy, nonatomic)NSString *small_heightlight_icon;
@property (copy, nonatomic)NSString *icon;
@property (copy, nonatomic)NSString *small_icon;

//名称
@property (copy, nonatomic)NSString *name;

//子数据数组
@property (strong, nonatomic)NSArray *subcategories;

- (NSArray *)loadPlistData;

@end
