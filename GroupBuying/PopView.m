//
//  PopView.m
//  GroupBuying
//
//  Created by 禹飞飞 on 16/3/16.
//  Copyright © 2016年 Chris. All rights reserved.
//

#import "PopView.h"

@implementation PopView

+ (PopView *)makePopView {
    return [[[NSBundle mainBundle] loadNibNamed:@"PopView" owner:self options:nil] firstObject];
}

@end
