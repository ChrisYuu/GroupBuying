//
//  PopView.h
//  GroupBuying
//
//  Created by 禹飞飞 on 16/3/16.
//  Copyright © 2016年 Chris. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PopView : UIView

@property (nonatomic, strong)NSArray *categoriesArray;

+ (PopView *)makePopView;

@end
