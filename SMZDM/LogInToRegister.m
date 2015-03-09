//
//  LogInToRegister.m
//  SMZDM
//
//  Created by 布鲁斯.韦恩  on 15/3/9.
//  Copyright (c) 2015年 布鲁斯.韦恩 . All rights reserved.
//

#import "LogInToRegister.h"

@interface LogInToRegister ()

@end

@implementation LogInToRegister

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor=[UIColor whiteColor];
    
    UINavigationBar *bar =[[UINavigationBar alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 64)];
    
    UINavigationItem *item =[[UINavigationItem alloc]initWithTitle:@"登录"];
    
    [bar setTitleTextAttributes:@{NSFontAttributeName:[UIFont boldSystemFontOfSize:20]}];
    
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] init];
    
    item.leftBarButtonItem = leftItem;
    [bar setBackgroundImage:[UIImage alloc] forBarMetrics:UIBarMetricsDefault];
    
    bar.shadowImage=[[UIImage alloc]init];
    
    [bar pushNavigationItem:item animated:YES];
    
    [self.view addSubview:bar];
    
    UIButton *leftButton =[[UIButton alloc]initWithFrame:CGRectMake(10, 30, 8, 18)];
    
    [leftButton setBackgroundImage:[UIImage imageNamed:@"ic_back_s@2x"] forState:UIControlStateNormal];
    
    [leftButton addTarget:self action:@selector(backAction:) forControlEvents:UIControlEventTouchUpInside];
    
    leftButton.tag =1;
    
    [bar addSubview:leftButton];
    
    registerClassification =[[UIScrollView alloc]initWithFrame:CGRectMake(0, 64, 320,502)];
    
    registerClassification.pagingEnabled =YES;
    
    registerClassification.delegate =self;
    
    registerClassification.contentSize =CGSizeMake(0,700);
    
    registerClassification.showsVerticalScrollIndicator=NO;
    
    registerClassification.bounces=YES;
    
    [self.view addSubview:registerClassification];
    
    [registerClassification release];
    
    [self loginPageLayout];
}
-(void)loginPageLayout{
    
    UIImageView *aHorizontalLine =[[UIImageView alloc]initWithFrame:CGRectMake(0, 1, 320, 1)];
    
    aHorizontalLine.image =[UIImage imageNamed:@"line_640x1"];
    
    [registerClassification addSubview:aHorizontalLine];
    
    UIImageView *HorizontalLine=[[UIImageView alloc]initWithFrame:CGRectMake(0, 50, 320, 1)];
    
    HorizontalLine.image =[UIImage imageNamed:@"line_640x1"];
    
    [registerClassification addSubview:HorizontalLine];
    
    UIImageView * Horizontal =[[UIImageView alloc]initWithFrame:CGRectMake(0, 99, 320, 1)];
    
    Horizontal.image =[UIImage imageNamed:@"line_640x1"];
    
    [registerClassification addSubview:Horizontal];
    UIImageView *theUser=[[UIImageView alloc]initWithFrame:CGRectMake(15, 15, 20, 20)];
    
    theUser.image =[UIImage imageNamed:@"ico_user@2x"];
    
    [registerClassification addSubview:theUser];
    
    UIImageView * password =[[UIImageView alloc]initWithFrame:CGRectMake(15, 65,20, 20)];
    
    password.image =[UIImage imageNamed:@"ico_psd@2x"];
    
    [registerClassification addSubview:password];

    UITextField *diyi =[[UITextField alloc]init];
    
    diyi.frame =CGRectMake(50, 0, 320, 50);
    
    diyi.placeholder =@"QQ号/手机号/邮箱";
    
    diyi.borderStyle =UITextBorderStyleNone;
    
    [registerClassification addSubview:diyi];
    
    UITextField *diyi1 =[[UITextField alloc]init];
    
    diyi1.frame =CGRectMake(50, 50, 320, 50);
    
    diyi1.placeholder =@"密码";
    
    diyi1.borderStyle =UITextBorderStyleNone;
    
    [registerClassification addSubview:diyi1];
    
//    找到密码
    
    UIButton *button =[UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    button.frame =CGRectMake(230, 50, 70, 50);
    
    [button setTitle:@"忘记密码" forState:UIControlStateNormal];
    button.layer.cornerRadius =15;
    
    button.layer.masksToBounds =YES;
    
    button.tintColor =[UIColor whiteColor];
    
    button.titleLabel.font =[UIFont systemFontOfSize:20];
    
    [button setBackgroundImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    
    [button addTarget:self action:@selector(dianji) forControlEvents:UIControlEventTouchUpInside];
    
    [registerClassification addSubview:button];

    
    
    UIButton *btn =[UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    btn.frame =CGRectMake(15, 130, 290, 50);
    
    [btn setTitle:@"登录" forState:UIControlStateNormal];
    
    btn.layer.cornerRadius =15;
    btn.layer.masksToBounds =YES;
    btn.tintColor =[UIColor whiteColor];
    
    btn.titleLabel.font =[UIFont systemFontOfSize:20];
    
    [btn setBackgroundImage:[UIImage imageNamed:@"bg_btn_loading@2x"] forState:UIControlStateNormal];
    
    [btn addTarget:self action:@selector(dianji) forControlEvents:UIControlEventTouchUpInside];
    
    [registerClassification addSubview:btn];

    
    
    
}
-(void)dianji{
    
}



-(void)backAction:(UIButton*)brn{
    
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
