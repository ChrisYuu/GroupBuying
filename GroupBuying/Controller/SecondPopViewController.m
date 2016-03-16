//
//  SecondPopViewController.m
//  GroupBuying
//
//  Created by 禹飞飞 on 16/3/16.
//  Copyright © 2016年 Chris. All rights reserved.
//

#import "SecondPopViewController.h"
#import "ChangeCityViewController.h"
#import "MyNavController.h"

@interface SecondPopViewController ()

- (IBAction)changeCityClick:(id)sender;


@end

@implementation SecondPopViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

//切换城市的点击事件
- (IBAction)changeCityClick:(id)sender {
    ChangeCityViewController *cvc = [[ChangeCityViewController alloc] initWithNibName:@"ChangeCityViewController" bundle:nil];
    
    MyNavController *nav = [[MyNavController alloc] initWithRootViewController:cvc];
    nav.modalPresentationStyle = UIModalPresentationFormSheet;
    [self presentViewController:nav animated:YES completion:nil];
}
@end
