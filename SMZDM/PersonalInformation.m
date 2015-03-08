//
//  PersonalInformation.m
//  SMZDM
//
//  Created by 布鲁斯.韦恩  on 15/3/8.
//  Copyright (c) 2015年 布鲁斯.韦恩 . All rights reserved.
//

#import "PersonalInformation.h"

@interface PersonalInformation ()

@end

@implementation PersonalInformation

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor =[UIColor whiteColor];
    
    UINavigationBar *bar =[[UINavigationBar alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 64)];
    
    UINavigationItem *item =[[UINavigationItem alloc]initWithTitle:@""];
    
    [bar setBackgroundImage:[UIImage alloc] forBarMetrics:UIBarMetricsDefault];
    
    bar.shadowImage=[[UIImage alloc]init];
    
    [bar pushNavigationItem:item animated:NO];
    
    [self.view addSubview:bar];

    UIButton *leftButton =[[UIButton alloc]initWithFrame:CGRectMake(10, 10, 8, 18)];
    
    [leftButton setBackgroundImage:[UIImage imageNamed:@"ico_black_back_press@2x"] forState:UIControlStateNormal];
    
    [leftButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    
//    UIBarButtonItem *leftItem =[[UIBarButtonItem alloc]initWithCustomView:leftButton];
//    
//    item.leftBarButtonItem =leftItem;
//    
//    [bar pushNavigationItem:item animated:NO];
    
    [bar addSubview:leftButton];
    
}
-(void)backAction{
    [self.navigationController popViewControllerAnimated:YES];
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
