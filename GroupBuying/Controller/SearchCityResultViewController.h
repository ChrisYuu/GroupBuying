//
//  SearchCityResultViewController.h
//  GroupBuying
//
//  Created by Chris on 16/3/17.
//  Copyright © 2016年 Chris. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SearchCityResultViewController : UITableViewController

@property (strong, nonatomic)NSString *searchText;
@property (strong, nonatomic)NSArray *citiesArray;

@end
