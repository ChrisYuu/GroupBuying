//
//  NavItem.m
//  GroupBuying
//
//  Created by 禹飞飞 on 16/3/15.
//  Copyright © 2016年 Chris. All rights reserved.
//

#import "NavItem.h"

@interface NavItem()

@property (strong, nonatomic) IBOutlet UIButton *button;


@end

@implementation NavItem

+ (instancetype)makeItem {
    return [[[NSBundle mainBundle] loadNibNamed:@"NavItem" owner:self options:nil]firstObject];
}

- (void)addTarget:(id)target action:(SEL)action {
    [self.button addTarget:target action:action forControlEvents: UIControlEventTouchUpInside];
}

@end
