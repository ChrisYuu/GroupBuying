//
//  ChangeCityViewController.m
//  GroupBuying
//
//  Created by 禹飞飞 on 16/3/17.
//  Copyright © 2016年 Chris. All rights reserved.
//

#import "ChangeCityViewController.h"
#import "CityGroupModel.h"

@interface ChangeCityViewController ()<UITableViewDataSource, UITableViewDelegate>{
    NSArray *_dataArray;
}
@end

@implementation ChangeCityViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //标题
    self.title = @"切换城市";
    
    //关闭按钮
    UIBarButtonItem *item = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"btn_navigation_close"] style:UIBarButtonItemStyleDone target:self action:@selector(backToVC)];
    self.navigationItem.leftBarButtonItem = item;
    
    CityGroupModel *md = [[CityGroupModel alloc] init];
    _dataArray = [md getModelArray];
}

- (void)backToVC{
    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark - UITableViewDelegate

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return _dataArray.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[_dataArray objectAtIndex:section] cities].count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *str = @"tableCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:str];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:str];
    }
    CityGroupModel *md = [_dataArray objectAtIndex:indexPath.section];
    cell.textLabel.text = md.cities[indexPath.row];
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

@end
