//
//  NavItem.h
//  GroupBuying
//
//  Created by 禹飞飞 on 16/3/15.
//  Copyright © 2016年 Chris. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NavItem : UIView

+ (instancetype)makeItem;

- (void)addTarget:(id)target action:(SEL)action;

@end
