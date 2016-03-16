//
//  CityGroupModel.h
//  GroupBuying
//
//  Created by 禹飞飞 on 16/3/16.
//  Copyright © 2016年 Chris. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CityGroupModel : NSObject

//声明 title字符串 city数组
@property (nonatomic, strong)NSArray *cities;
@property (nonatomic, copy)NSString *title;

- (NSArray *)getModelArray;

@end
