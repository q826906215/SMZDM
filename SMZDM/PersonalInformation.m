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


@interface PersonalInformation ()

@end

@implementation PersonalInformation

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor =[UIColor whiteColor];
    
    UINavigationBar *bar =[[UINavigationBar alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 64)];
    
    UINavigationItem *item =[[UINavigationItem alloc]init];
    
    UIButton *leftButton =[[UIButton alloc]initWithFrame:CGRectMake(10, 30, 8, 18)];
    
    [leftButton setBackgroundImage:[UIImage imageNamed:@"ico_black_back_press@2x"] forState:UIControlStateNormal];
    
    [leftButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] initWithCustomView:leftButton];
    
    item.leftBarButtonItem = leftItem;
    [bar setBackgroundImage:[UIImage alloc] forBarMetrics:UIBarMetricsDefault];
    
     bar.shadowImage=[[UIImage alloc]init];
    
    [bar setBackgroundColor:[UIColor clearColor]];
    
    [bar pushNavigationItem:item animated:NO];
    
    [self.view addSubview:bar];
    
    CGFloat width = [[UIScreen mainScreen] bounds].size.width;
    
    scalingFigure=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, width,240)];
    
    scalingFigure.image =[UIImage imageNamed:@"Bg_user@2x"];
    
    UIImageView *circle=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 80, 80)];
    
    [circle  setImage:[UIImage imageNamed:@"defaultAvatar_new@2x"]];
    
    [circle  setCenter:scalingFigure.center];
    
    [circle.layer setMasksToBounds:YES];

    StrechyParallaxScrollView *strechy=[[StrechyParallaxScrollView alloc]initWithFrame:self.view.frame andTopView:scalingFigure];
    
    [self.view addSubview:strechy];
    
    [self.view bringSubviewToFront:bar];
    
    float itemStartY = strechy.frame.size.height + 10;
    for (int i = 1; i <= 10; i++) {
        [strechy addSubview:[self scrollViewItemWithY:itemStartY andNumber:i]];
        itemStartY += 190;
    }
    
    [strechy setContentSize:CGSizeMake(width, itemStartY)];
    
    
}

//- (instancetype)initWithFrame:(CGRect)frame andTopView:(UIView *)topView{
//    
//}

- (UITableView *)scrollViewItemWithY:(CGFloat)y andNumber:(int)num {
    
    
    tableViewdo =[[UITableView alloc]initWithFrame:CGRectMake(0, 300,320,328)];
    
    tableViewdo.scrollEnabled=NO;
    
    tableViewdo.delegate =self;
    
    tableViewdo.backgroundColor =[UIColor redColor];
    
    tableViewdo.dataSource =self;
    tableViewdo.tag =101;
    
    [tableViewdo registerClass:[PersonalInformationcell class] forCellReuseIdentifier:@"cell"];
    
//    [ addSubview:tableViewdo];
    
    
    return tableViewdo;
}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 3;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 0;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
   
    PersonalInformationcell *cell =(PersonalInformationcell *)[tableView dequeueReusableCellWithIdentifier:@"normal" forIndexPath:indexPath];
    
    
    
    
    
    return cell;

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
