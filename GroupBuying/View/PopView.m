//
//  PopView.m
//  GroupBuying
//
//  Created by 禹飞飞 on 16/3/16.
//  Copyright © 2016年 Chris. All rights reserved.
//

#import "PopView.h"
#import "CategoryModel.h"

@interface PopView ()<UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) IBOutlet UITableView *leftTable;
@property (strong, nonatomic) IBOutlet UITableView *rightTable;

@property (strong, nonatomic)CategoryModel *selectedModel;

@end

@implementation PopView

+ (PopView *)makePopView {
    return [[[NSBundle mainBundle] loadNibNamed:@"popView" owner:self options:nil] firstObject];
}

#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (tableView == _leftTable) {
        return _categoriesArray.count;
    }else {
        return _selectedModel.subcategories.count;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (tableView == _leftTable) {
        static NSString *str = @"myCell";
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:str];
        if (cell == nil) {
            cell = [[UITableViewCell alloc] initWithStyle: UITableViewCellStyleDefault reuseIdentifier:str];
        }
        CategoryModel *md = [_categoriesArray objectAtIndex:indexPath.row];
        cell.textLabel.text = md.name;
        cell.imageView.image = [UIImage imageNamed:md.small_icon];
        if (md.subcategories.count) {
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        } else {
            cell.accessoryType = UITableViewCellAccessoryNone;
        }
        return cell;
    }else {
        static NSString *str = @"myCell";
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:str];
        if (cell == nil) {
            cell = [[UITableViewCell alloc] initWithStyle: UITableViewCellStyleDefault reuseIdentifier:str];
        }
        cell.textLabel.text = _selectedModel.subcategories[indexPath.row];
        return cell;
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (tableView == _leftTable) {
        _selectedModel = [_categoriesArray objectAtIndex:indexPath.row];
        [_rightTable reloadData];
    }
}

@end
