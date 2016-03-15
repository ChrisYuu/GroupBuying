//
//  NavItem.m
//  GroupBuying
//
//  Created by 禹飞飞 on 16/3/15.
//  Copyright © 2016年 Chris. All rights reserved.
//

#import "NavItem.h"

@implementation NavItem

+ (instancetype)makeItem{
    return [[[NSBundle mainBundle] loadNibNamed:@"NavItem" owner:self options:nil]firstObject];
}

@end
