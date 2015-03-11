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


#import "MidLineCustom.h"

@interface PersonalInformation ()

@end

@implementation PersonalInformation

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor =[UIColor whiteColor];
    
    _imageViewTop =  [[UIImageView alloc] init];
    _imageViewTop.frame = CGRectMake(0, 0, 320, 300);
    _imageViewTop.image =[UIImage imageNamed:@"Bg_user@2x"];
    [self.view addSubview:_imageViewTop];

    
    _bgScrollView =[[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, 320, 568)];
//    _bgScrollView.alpha= 0 ;
    _bgScrollView .backgroundColor =[UIColor  clearColor];
    _bgScrollView.contentSize = CGSizeMake(320, 1300);
    _bgScrollView.delegate=self;
    self.automaticallyAdjustsScrollViewInsets=NO;
    _bgScrollView.delegate=self;
    [self.view  addSubview:_bgScrollView];
    
    
    _downTableView =[[UITableView alloc]initWithFrame:CGRectMake(0, 300, 320, 1000) style:UITableViewStyleGrouped];
    _downTableView .delegate=self;
    _downTableView.dataSource=self;
    [_bgScrollView addSubview:_downTableView];
    [_downTableView registerClass:[PersonalInformationcell class] forCellReuseIdentifier:@"cell"];
//    
//    UIView * vie=[UIView new];
//    vie.frame = CGRectMake(0, 520, 320, 220);
//    [_bgScrollView addSubview:vie];
    
    MidLineCustom * bgView =[[MidLineCustom alloc]init];
    bgView.frame = CGRectMake(0, 520, 320, 220);
    [_bgScrollView addSubview:bgView];
    
    NSArray * array = @[@"评论",@"收藏",@"优惠劵",@"爆料",@"投稿",@"消息"];
    int lie =3;
    for ( int i=0; i<6; i ++ ) {
        float  row =  i /lie;
        float  cloum = i % lie;
        
        float interval =  320 /lie;
        
        UIButton * btn =[UIButton buttonWithType:UIButtonTypeCustom];
        btn.frame = CGRectMake( cloum * interval , row * 110 , interval, 110) ;
        btn.tag = 20 + i;
        
        [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        [bgView addSubview:btn];
        
        
        UILabel * lab =[[UILabel alloc]initWithFrame:CGRectMake(0, 80, interval, 30)];
        lab.textAlignment =  NSTextAlignmentCenter;
        lab.text = [array objectAtIndex:i];
        [btn addSubview:lab];
        
        
        UIImageView * imageV =[[UIImageView alloc]init];
        imageV.image=[UIImage imageNamed:[NSString stringWithFormat:@"%d",i+11]];
        imageV.frame = CGRectMake((interval  - 80 )/2, 20, 80, 80) ;
        [btn addSubview:imageV];

        [self topBg];
    
    _downTableView.tableHeaderView = bgView;
        
        

  }
}
-(void)dealloc
{
    
    [_downTableView release];
    [_imageViewTop release];
     [super dealloc];

}

//------top UI
-(void)topBg
{
    UIButton * btn =[UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(30, 50, 20, 30);
    
    [btn setBackgroundImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    
    [btn addTarget:self action:@selector(backClick) forControlEvents:UIControlEventTouchUpInside];
    
    [_imageViewTop addSubview:btn];
    
    [btn release];
    
//    UIImageView * iamge=[UIImageView new];
//    iamge.frame = CGRectMake(120, 100, 80, 80);
//    iamge.backgroundColor =[UIColor colorWithRed:0.97 green:0.97 blue:0.97 alpha:1];
//    iamge.layer.cornerRadius= 40;
//    [_imageViewTop addSubview:iamge];
//    [iamge release];
    
    
    
    
    UIButton * button =[UIButton buttonWithType:UIButtonTypeCustom];
    button.frame=CGRectMake(120 ,100,80,80);
    [button setBackgroundImage:[UIImage imageNamed:@"defaultAvatar_new@2x"] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(backAction:) forControlEvents:UIControlEventTouchUpInside];
    button.layer.cornerRadius= 40;
    button.layer.masksToBounds = YES;
    [_bgScrollView  addSubview:button];
    [button release];
    
    
    
    UILabel *lable =[[UILabel alloc]initWithFrame:CGRectMake(0, 190, 320, 20)];
    [lable setText:@"Hi 你好"];
    [lable setFont:[UIFont boldSystemFontOfSize:20]];
    [lable setTextAlignment:NSTextAlignmentCenter];
    [lable setTextColor:[UIColor whiteColor]];
    [_bgScrollView addSubview:lable];
    UILabel *longLable =[[UILabel alloc]initWithFrame:CGRectMake(0, 215, 320, 20)];
    [longLable setText:@"登陆 SMZDM 和值友一起互动吧"];
    [longLable setFont:[UIFont systemFontOfSize:14]];
    [longLable setTextAlignment:NSTextAlignmentCenter];
    [longLable setTextColor:[UIColor whiteColor]];
    [_bgScrollView addSubview:longLable];
    [lable release];
    [longLable release];
//
    
    UIButton *downBtn=[UIButton buttonWithType:UIButtonTypeCustom];
    downBtn.frame =CGRectMake(95, 245,130, 45);
    [downBtn setBackgroundImage:[UIImage imageNamed:@"bg_grey_press@2x"] forState:UIControlStateNormal];
    downBtn.backgroundColor=[UIColor colorWithRed:0.1 green:0.1 blue:0.1 alpha:1];
    
    downBtn.layer.cornerRadius =22;
    
    downBtn.layer.masksToBounds =YES;
    
    downBtn.tag =3;
    
    [downBtn setTitle:[NSString stringWithFormat:@"登录"] forState:UIControlStateNormal];
    
    [downBtn addTarget:self action:@selector(backAction:) forControlEvents:UIControlEventTouchUpInside];
    
    [_bgScrollView addSubview:downBtn];
//
    
    
    
    
}

-(void)backClick
{
    
    [self.navigationController popViewControllerAnimated:YES];

}

-(void)backAction:(UIButton * )sender
{
    
    LogInToRegister *vc =[[LogInToRegister alloc]init];
    
    [self.navigationController pushViewController:vc animated:YES];

}











-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 9;
}


-(UITableViewCell* )tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    PersonalInformationcell * cell =[ _downTableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    
    
    [cell getbg:indexPath.row];
    
    return cell;
    
}

#pragma mark - UITableViewDataSource

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
}


-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 40;

}

-(UIView * )tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    
    UIView * aView =[UIView new];
    aView .frame = CGRectMake(0, 0, 320, 40);
    
    UILabel * lab=[UILabel new];
    lab.frame = CGRectMake(20, 0, 320, 40);
    lab.text=@"常用设置";
    [aView addSubview:lab];
    
    return aView;
}




-(void)btnClick:(UIButton *)sender
{
    
}

#pragma  mark -  UIScrollView 

-(void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    float value = scrollView.contentOffset.y;
    
    
    _imageViewTop.frame = CGRectMake(0, 0, 320, 300-value);
    NSLog( @"------------%f-------------",scrollView.contentOffset.y);
    
}








//- (UITableView *)scrollViewItemWithY:(CGFloat)y andNumber:(int)num {
//    
//    _tableViewdo =[[UITableView alloc]initWithFrame:CGRectMake(0, 300,320,800)];
//    // 表能滑动（图片下部）
//    _tableViewdo.scrollEnabled=NO;
//    
//    _tableViewdo.delegate =self;
//    
//    _tableViewdo.backgroundColor =[UIColor greenColor];
//    // 指示条
//    _tableViewdo.showsVerticalScrollIndicator=NO;
//    
//    _tableViewdo.dataSource =self;
//    
//     [_tableViewdo  registerClass:[PersonalInformationcell class] forCellReuseIdentifier:@"cell"];
//    
//    
//    
//     return _tableViewdo;
//}

//
//-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
//    return 10;
//}
//
//-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
//    
//    
//    return 0;
//    
//}
//-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
//    
//    PersonalInformationcell *cell =(PersonalInformationcell *)[tableView dequeueReusableCellWithIdentifier:@"normal" forIndexPath:indexPath];
//    return cell;
//    
//}
//
//#pragma mark - UITableViewDelegate
//
//-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
//{
//    return 200;
//    
//}
//
//
//-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
//{
//    
//    return nil;
//}
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//-(void)backAction:(UIButton*)brn{
//    
//    if (brn.tag==1) {
//        [self.navigationController popViewControllerAnimated:YES];
//    }else if (brn.tag ==2){
//        LogInToRegister *vc =[[LogInToRegister alloc]init];
//        
//        [self.navigationController pushViewController:vc animated:YES];
//        
//    }else{
//        
//        LogInToRegister *vc =[[LogInToRegister alloc]init];
//        
//        [self.navigationController pushViewController:vc animated:YES];
//    }
//    
//}
//
//
//





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
