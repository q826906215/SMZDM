//
//  PersonalInformation.m
//  SMZDM
//
//  Created by 布鲁斯.韦恩  on 15/3/8.
//  Copyright (c) 2015年 布鲁斯.韦恩 . All rights reserved.
//

#import "PersonalInformation.h"
#import "TheListOf.h"
#import "StrechyParallaxScrollView.h"
#import "PersonalInformationcell.h"
#import "LogInToRegister.h"


@interface PersonalInformation ()

@end

@implementation PersonalInformation

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor =[UIColor whiteColor];
    
    UINavigationBar *bar =[[UINavigationBar alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 64)];
    
    UINavigationItem *item =[[UINavigationItem alloc]init];
    
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] init];
    
    item.leftBarButtonItem = leftItem;
    [bar setBackgroundImage:[UIImage alloc] forBarMetrics:UIBarMetricsDefault];
    
     bar.shadowImage=[[UIImage alloc]init];
    
    [bar pushNavigationItem:item animated:YES];
    
    [self.view addSubview:bar];
    
    UIButton *leftButton =[[UIButton alloc]initWithFrame:CGRectMake(10, 30, 8, 18)];
    
    [leftButton setBackgroundImage:[UIImage imageNamed:@"ico_black_back_press@2x"] forState:UIControlStateNormal];
    
    [leftButton addTarget:self action:@selector(backAction:) forControlEvents:UIControlEventTouchUpInside];
    
    leftButton.tag =1;
    
    [bar addSubview:leftButton];
    
    CGFloat width = [[UIScreen mainScreen] bounds].size.width;
    
    scalingFigure=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, width,300)];
    
    scalingFigure.image =[UIImage imageNamed:@"Bg_user@2x"];
    
    StrechyParallaxScrollView *strechy=[[StrechyParallaxScrollView alloc]initWithFrame:self.view.frame andTopView:scalingFigure];
    
    [self.view addSubview:strechy];
    
    [self.view bringSubviewToFront:bar];
    
    float itemStartY = strechy.frame.size.height + 10;
    for (int i = 1; i <= 10; i++) {
        [strechy addSubview:[self scrollViewItemWithY:itemStartY andNumber:i]];
//        itemStartY += 190;
    }
    
    [strechy setContentSize:CGSizeMake(width, itemStartY)];
    
    UIButton *circle =[[UIButton alloc]initWithFrame:CGRectMake(0,0,70,70)];
    
    [circle setBackgroundImage:[UIImage imageNamed:@"defaultAvatar_new@2x"] forState:UIControlStateNormal];
    
    circle.layer.cornerRadius =35;

    circle.tag =2;
    
    circle.layer.masksToBounds =YES;
    
    [circle  setCenter:scalingFigure.center];
    
    [circle addTarget:self action:@selector(backAction:) forControlEvents:UIControlEventTouchUpInside];
    
    [strechy addSubview:circle];
    
    UILabel *lable =[[UILabel alloc]initWithFrame:CGRectMake(0, 190, width, 20)];
    [lable setText:@"Hi 你好"];
    [lable setFont:[UIFont boldSystemFontOfSize:20]];
    [lable setTextAlignment:NSTextAlignmentCenter];
    [lable setTextColor:[UIColor whiteColor]];
    [strechy addSubview:lable];
    UILabel *longLable =[[UILabel alloc]initWithFrame:CGRectMake(0, 215, width, 20)];
    [longLable setText:@"登陆 SMZDM 和值友一起互动吧"];
    [longLable setFont:[UIFont systemFontOfSize:14]];
    [longLable setTextAlignment:NSTextAlignmentCenter];
    [longLable setTextColor:[UIColor whiteColor]];
    [strechy addSubview:longLable];
    
    UIButton *Button =[[UIButton alloc]initWithFrame:CGRectMake(95, 245,130, 45)];
    
    [Button setBackgroundImage:[UIImage imageNamed:@"bg_grey_press@2x"] forState:UIControlStateNormal];
    
    Button.layer.cornerRadius =22;

    Button.layer.masksToBounds =YES;
    
    Button.tag =3;
    
    [Button setTitle:[NSString stringWithFormat:@"登录"] forState:UIControlStateNormal];
    
    [Button addTarget:self action:@selector(backAction:) forControlEvents:UIControlEventTouchUpInside];
    
    [strechy addSubview:Button];
    
}
- (UITableView *)scrollViewItemWithY:(CGFloat)y andNumber:(int)num {
    
    tableViewdo =[[UITableView alloc]initWithFrame:CGRectMake(0, 300,320,328)];
    
    tableViewdo.scrollEnabled=NO;
    
    tableViewdo.delegate =self;
    
    tableViewdo.backgroundColor =[UIColor redColor];
    
    tableViewdo.showsVerticalScrollIndicator=NO;
    
    tableViewdo.dataSource =self;
    
    [tableViewdo registerClass:[PersonalInformationcell class] forCellReuseIdentifier:@"cell"];
    
    return tableViewdo;
}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    
//    if ((section =0)) {
//        return 2;
//    }else{
//        return 9;
//    }
    return 0;
    
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    if (indexPath.section==0) {
        PersonalInformationcell *cell =(PersonalInformationcell *)[tableView dequeueReusableCellWithIdentifier:@"normal" forIndexPath:indexPath];
        
        return cell;
    }else{
        
        PersonalInformationcell *cell =(PersonalInformationcell *)[tableView dequeueReusableCellWithIdentifier:@"normal" forIndexPath:indexPath];

        return cell;
    }
}

-(void)backAction:(UIButton*)brn{
    
    if (brn.tag==1) {
        [self.navigationController popViewControllerAnimated:YES];
    }else if (brn.tag ==2){
        LogInToRegister *vc =[[LogInToRegister alloc]init];
        
        [self.navigationController pushViewController:vc animated:YES];
        
    }else{
        
        LogInToRegister *vc =[[LogInToRegister alloc]init];
        
        [self.navigationController pushViewController:vc animated:YES];
    }
    
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
