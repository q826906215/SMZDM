

//
//  PriceVC.m
//  SMZDM
//
//  Created by dushuai on 3/8/15.
//  Copyright (c) 2015 布鲁斯.韦恩 . All rights reserved.
//

#import "PriceVC.h"
#import "PriceTableVC.h"
@interface PriceVC ()

@end

@implementation PriceVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    PriceTableVC * pvc  =[PriceTableVC new];
    
    [self addChildViewController:pvc];
    [ self.view addSubview:pvc.view];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
