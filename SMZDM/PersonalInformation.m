//
//  PersonalInformation.m
//  SMZDM
//
//  Created by 布鲁斯.韦恩  on 15/3/8.
//  Copyright (c) 2015年 布鲁斯.韦恩 . All rights reserved.
//

#import "PersonalInformation.h"
#import "TheListOf.h"


@interface PersonalInformation ()

@end

@implementation PersonalInformation

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor =[UIColor whiteColor];
    
    UINavigationBar *bar =[[UINavigationBar alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 64)];
    
    UINavigationItem *item =[[UINavigationItem alloc]initWithTitle:@""];
    
    UIButton *leftButton =[[UIButton alloc]initWithFrame:CGRectMake(10, 30, 8, 18)];
    
    [leftButton setBackgroundImage:[UIImage imageNamed:@"ico_black_back_press@2x"] forState:UIControlStateNormal];
    
    [leftButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];

    [bar setBackgroundImage:[UIImage alloc] forBarMetrics:UIBarMetricsDefault];
    
    [bar setBackgroundColor:[UIColor clearColor]];
    
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] initWithCustomView:leftButton];
    
    item.leftBarButtonItem = leftItem;
    
    [bar pushNavigationItem:item animated:NO];
    
    [self.view addSubview:bar];
    
    
//    [bar addSubview:leftButton];
    
    scalingFigure=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 320, 240)];
    
    scalingFigure.image =[UIImage imageNamed:@"Bg_user@2x"];
    
    [self.view addSubview:scalingFigure];
    
    _sceollView =[[UIScrollView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    
    _sceollView.backgroundColor=[UIColor clearColor];
    
    _sceollView.delegate=self;
    
    [self.view addSubview:_sceollView];

    tableViewdo =[[UITableView alloc]initWithFrame:CGRectMake(0, 240, 320, self.view.frame.size.height)];
    
    tableViewdo.scrollEnabled=NO;
    
    tableViewdo.delegate =self;
    
    tableViewdo.dataSource =self;

    tableViewdo.tag =101;
    
    [tableViewdo registerClass:[TheListOf class] forCellReuseIdentifier:@"cell"];
    
    [_sceollView addSubview:tableViewdo];

    
}

//-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
//    
//    UIView *view =[UIView alloc]initWithFrame:<#(CGRect)#>
//}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 3;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 0;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
   
    TheListOf *cell =(TheListOf *)[tableView dequeueReusableCellWithIdentifier:@"normal" forIndexPath:indexPath];
    
    return cell;

}

-(void)ceateTableHead{
    
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
