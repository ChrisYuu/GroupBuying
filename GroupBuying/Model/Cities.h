//
//  Cities.h
//  GroupBuying
//
//  Created by Chris on 16/3/17.
//  Copyright © 2016年 Chris. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Cities : NSObject

@property (nonatomic, copy)NSString *name;
@property (nonatomic, copy)NSString *pinYin;
@property (nonatomic, copy)NSString *pinYinHead;
@property (nonatomic, copy)NSArray *regions;

+ (NSArray *)getCities; 

@end
