//
//  QRDialogViewController.m
//  Howare
//
//  Created by 刘向宏 on 16/3/31.
//  Copyright © 2016年 刘向宏. All rights reserved.
//

#import "QRDialogViewController.h"

@interface QRDialogViewController ()

@end

@implementation QRDialogViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(IBAction)okClick:(id)sender{
    exit(0);
}


-(IBAction)cancelClick:(id)sender{
    [self dismissViewControllerAnimated:NO completion:nil];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
