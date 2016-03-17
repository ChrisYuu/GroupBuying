//
//  ChangeCityViewController.m
//  GroupBuying
//
//  Created by 禹飞飞 on 16/3/17.
//  Copyright © 2016年 Chris. All rights reserved.
//

#import "ChangeCityViewController.h"
#import "CityGroupModel.h"
#import "SearchCityResultViewController.h"
#import "UIView+AutoLayout.h"

@interface ChangeCityViewController ()<UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate>{
    NSArray *_dataArray;
}

@property (strong, nonatomic) IBOutlet UIView *coverView;

@property (strong, nonatomic) SearchCityResultViewController *resultControll;
@property (strong, nonatomic) IBOutlet UISearchBar *searchBarController;

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

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    CityGroupModel *md = [_dataArray objectAtIndex:section];
    return md.title;
}

#pragma mark - UISearchBarDelegate

-(void)searchBarTextDidBeginEditing:(UISearchBar *)searchBar {
    self.coverView.hidden = NO;
    [self.navigationController setNavigationBarHidden:YES animated:YES];
}

-(void)searchBarTextDidEndEditing:(UISearchBar *)searchBar {
    self.coverView.hidden = YES;
    [self.navigationController setNavigationBarHidden:NO animated:YES];
}

-(void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText {
    if (searchText.length){
        self.resultControll.view.hidden = NO;
        self.resultControll.searchText = searchText;
    }else {
        self.resultControll.view.hidden = YES;
    }
}

#pragma mark - 创建搜索结果控制器
- (SearchCityResultViewController *)resultControll{
    if (!_resultControll) {
        self.resultControll = [[SearchCityResultViewController alloc] init];
        //将搜索结果VC添加到当前控制器中
        [self.view addSubview:_resultControll.view];
        //添加约束，设置搜索结果控制器的尺寸位置
        [self.resultControll.view autoPinEdgesToSuperviewEdgesWithInsets:UIEdgeInsetsZero excludingEdge:ALEdgeTop];
        //让resultContoller的顶部 贴着搜索框的底部 不遮盖搜索框
        [self.resultControll.view autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:self.searchBarController];
        
    }
    return _resultControll;
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

@end
