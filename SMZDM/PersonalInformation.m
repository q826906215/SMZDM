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
    
    CGFloat width = [[UIScreen mainScreen] bounds].size.width;
    
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
    
//    view=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 320, 320.0)];
//    
//    [self.view addSubview:view];
    
//    [self.view bringSubviewToFront:bar];
    
    scalingFigure=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 320,240)];
    
    scalingFigure.image =[UIImage imageNamed:@"Bg_user@2x"];
    
    [self.view addSubview:scalingFigure];
    
    [self.view bringSubviewToFront:bar];
    
//    _sceollView =[[UIScrollView alloc]initWithFrame:self.view.bounds];
//    
//    _sceollView.backgroundColor=[UIColor clearColor];
//    
//    _sceollView.contentSize =CGSizeMake(320, 300*7);
//    
//    _sceollView.delegate=self;
//    
//    [self.view addSubview:_sceollView];
//    
//   [self.view bringSubviewToFront:bar];

    StrechyParallaxScrollView *strechy=[[StrechyParallaxScrollView alloc]initWithFrame:self.view.frame andTopView:scalingFigure];
    
    [self.view addSubview:strechy];
    
    [self.view bringSubviewToFront:bar];
    
    float itemStartY = strechy.frame.size.height + 10;
//    for (int i = 1; i <= 10; i++) {
//        [strechy addSubview:[self scrollViewItemWithY:itemStartY andNumber:i]];
//        itemStartY += 190;
//    }
    
    [strechy setContentSize:CGSizeMake(width, itemStartY)];
    
    tableViewdo =[[UITableView alloc]initWithFrame:CGRectMake(0, 240,320,328)];
    
    tableViewdo.scrollEnabled=NO;
    
    tableViewdo.delegate =self;
    
    tableViewdo.dataSource =self;
    tableViewdo.tag =101;
    
    [tableViewdo registerClass:[PersonalInformationcell class] forCellReuseIdentifier:@"cell"];
    
    [strechy addSubview:tableViewdo];
}
//- (UITableView *)scrollViewItemWithY:(CGFloat)y andNumber:(int)num {
//    
//    
//    
//    return tableViewdo;
//}


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
