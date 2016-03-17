//
//  SearchCityResultViewController.m
//  GroupBuying
//
//  Created by Chris on 16/3/17.
//  Copyright © 2016年 Chris. All rights reserved.
//

#import "SearchCityResultViewController.h"
#import "Cities.h"

@interface SearchCityResultViewController () {

}

@end

@implementation SearchCityResultViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)setSearchText:(NSString *)searchText {
    _searchText = [searchText lowercaseString];
    
    //获取城市模型数组
    if(!_citiesArray){
        _citiesArray = [Cities getCities];
    }
    
    //遍历判断
    for (Cities *city in _citiesArray) {
        if ([city.name containsString:_searchText] || [city.pinYin containsString:_searchText] || [city.pinYinHead containsString:_searchText]) {
            
        }
    }
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 0;
}

@end
