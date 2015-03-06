//
//  TheMainInterface.m
//  SMZDM
//
//  Created by 布鲁斯.韦恩  on 15/3/5.
//  Copyright (c) 2015年 布鲁斯.韦恩 . All rights reserved.
//

#import "TheMainInterface.h"
#import "AFNetworking.h"
#import "TheListOf.h"
#import "TheListViewCell.h"
#import "UIImageView+WebCache.h"
#import "NetworkTool.h"
#import "SearchVC.h"



@interface TheMainInterface ()

@end

@implementation TheMainInterface

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title =@"什么值得买";
    UIButton * leftButton =[UIButton buttonWithType:UIButtonTypeCustom];
    leftButton.frame =CGRectMake(0, 0, 20, 20);
    [leftButton setBackgroundImage:[UIImage imageNamed:@"ic_search@2x.png"] forState:UIControlStateNormal];
    [leftButton  addTarget:self action:@selector(searchShop) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem * leftItem =[[UIBarButtonItem alloc] initWithCustomView:leftButton];
    self.navigationItem.leftBarButtonItem=leftItem;
    

    
    [self.navigationController.navigationBar setBackgroundImage:[UIImage alloc] forBarMetrics:UIBarMetricsDefault];
    
    self.navigationController.navigationBar.shadowImage=[[UIImage alloc]init];
    
    UIView *view=[[UIView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    
    view.backgroundColor =[UIColor whiteColor];
    
    [self.view addSubview:view];
    
    [view release];
    
    [NetworkTool getFistPageScrollImageDataCompletionBlock:^(NSDictionary *dic) {
        
        baseClass =[ScrollBaseClass modelObjectWithDictionary:dic];
        
        [self  Classification];
    }];
    
    
}

-(void)searchShop
{
    SearchVC * svc =[[SearchVC alloc] init];
    [self presentViewController:svc animated:YES completion:nil];
    
    
}
-(void)Classification{
    
    articleClassification =[[UIScrollView alloc]initWithFrame:CGRectMake(0, 64, 320, 50)];
    
    articleClassification.pagingEnabled =YES;
    
    articleClassification.delegate =self;
    
    articleClassification.contentSize =CGSizeMake(7*70, 50);
    
    articleClassification.alwaysBounceHorizontal =YES;
    
    articleClassification.showsHorizontalScrollIndicator =NO;
    
    articleClassification.bounces=YES;
    
    [self.view addSubview:articleClassification];
    
    [articleClassification release];
    
    NSArray *titlearray =@[@"精选",@"优惠",@"海淘",@"发现",@"晒物",@"经验",@"资讯",];
    
    
    for (int i=0; i<7; i++) {
        
        UIButton *ification=[UIButton buttonWithType:UIButtonTypeRoundedRect];
        
        ification.frame =CGRectMake(i*70, 0, 70, 50);
        
        ification.tag =i;
        
        [ification setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        
        [ification setTitle:[NSString stringWithFormat:@"%@",titlearray[i]] forState:UIControlStateNormal];
        
        [ification addTarget:self action:@selector(btnMove:) forControlEvents:UIControlEventTouchUpInside];
        [articleClassification addSubview:ification];
    }
    NSString *string =titlearray[0];
    
    NSDictionary *dic =@{NSFontAttributeName:[UIFont systemFontOfSize:20]};
    
    float width =[string sizeWithAttributes:dic].width;
    
    _markimage =[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, width, 3)];
    
    _markimage.center =CGPointMake(40, 47.5);
    
    _markimage.backgroundColor =[UIColor redColor];
    
    [articleClassification addSubview:_markimage];
    
    [_markimage release];
    
    [self  ScrollView];
}

-(void)ScrollView{
    
    hostInterface = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 114, 320, 454)];
    
    hostInterface.pagingEnabled =YES;
    
    hostInterface.delegate =self;
    
    hostInterface.contentSize =CGSizeMake(7*320, 454);
    
    hostInterface.alwaysBounceHorizontal =YES;
    
    hostInterface.showsHorizontalScrollIndicator =YES;
    
    hostInterface.bounces=YES;
    
    [self.view addSubview:hostInterface];
    
    [hostInterfaceView release];
    
    [NetworkTool getFistPageSelectDataCompletionBlock:^(NSDictionary *dic) {
        
        selectClass =[SelectBaseClass modelObjectWithDictionary:dic];
        
        [showTable reloadData];
        
    }];
    
    showTable =[[UITableView alloc]initWithFrame:CGRectMake(0, 0, 320, 568)];
    
    showTable.delegate =self;
    
    showTable.dataSource =self;
    
    showTable.rowHeight =116;
    
    showTable.tag =100;
    
    [showTable registerClass:[TheListOf class] forCellReuseIdentifier:@"normal"];
    
    [hostInterface addSubview:showTable];
    
    [NetworkTool getFistPagePreferentialDataCompletionBlock:^(NSDictionary *dic){
        
        preferentialClass =[preferentialBaseClass modelObjectWithDictionary:dic];
        
        [preferential reloadData];
        
    }];
    
    preferential=[[UITableView alloc]initWithFrame:CGRectMake(320, 0, 320, 568)];
    
    preferential.delegate =self;
    
    preferential.dataSource =self;
    
    preferential.rowHeight =116;
    
    preferential.tag =101;
    
    [preferential registerClass:[TheListOf class] forCellReuseIdentifier:@"cell"];
    
    [hostInterface addSubview:preferential];
    
    [self selectedColumnsScrollView];
    
    [NetworkTool getFistPageHaiTaoDataCompletionBlock:^(NSDictionary *dic) {
        haiTaoClass =[HaiTaoBaseClass modelObjectWithDictionary:dic];
        
        [haiTao reloadData];
    }];
    
    haiTao=[[UITableView alloc]initWithFrame:CGRectMake(640, 0, 320, 568)];
    
    haiTao.delegate =self;
    
    haiTao.dataSource =self;
    
    haiTao.rowHeight =116;
    
    haiTao.tag =102;
    
    [haiTao registerClass:[TheListOf class] forCellReuseIdentifier:@"haitao"];
    
    [hostInterface addSubview:haiTao];
    
    
    
    [NetworkTool getFistPageExperienceDataCompletionBlock:^(NSDictionary *dic) {
        experienceCless =[ExperienceBaseClass modelObjectWithDictionary:dic];
        
        [experience reloadData];
    }];
    
    experience =[[UITableView alloc]initWithFrame:CGRectMake(1600, 0, 320, 568)];
    
    experience.delegate =self;
    
    experience.dataSource =self;
    
    experience.rowHeight =156;
    
    experience.tag =105;
    
    [experience  registerClass:[TheListViewCell class] forCellReuseIdentifier:@"experience"];
    
    [hostInterface addSubview:experience];
    
    [NetworkTool getFistPageInformationDataCompletionBlock:^(NSDictionary *dic) {
        
        informationClass =[InformationBaseClass modelObjectWithDictionary:dic];
        
        [information  reloadData];
        
    }];
    information=[[UITableView alloc]initWithFrame:CGRectMake(1920, 0, 320, 568)];
    
    information.delegate =self;
    
    information.dataSource =self;
    
    information.rowHeight =156;
    
    information.tag =106;
    
    [information registerClass:[TheListViewCell class] forCellReuseIdentifier:@"information"];
    
    [hostInterface addSubview:information];
    
    
    
    
    [self selectedColumnsScrollView];
    
    [showTable release];
    
    [preferential release];
    
    [hostInterface release];
    
    [haiTao release];
    
}

#pragma mark-ScrollViewPageControl

-(void)selectedColumnsScrollView{
    hostInterfaceView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, 320, 170)];
    
    hostInterfaceView.pagingEnabled =YES;
    
    hostInterfaceView.delegate =self;
    
    hostInterfaceView.contentSize =CGSizeMake(5*320, 170);
    
    hostInterfaceView.alwaysBounceHorizontal =YES;
    
    hostInterfaceView.showsHorizontalScrollIndicator =NO;
    
    hostInterfaceView.bounces=YES;
    
    hostInterfaceView.contentOffset =CGPointMake(0, 0);
    
    showTable.tableHeaderView =hostInterfaceView;
    
    [hostInterfaceView release];
    
    for (int i=0; i<5; i++) {
        
        ScrollRows *rows =baseClass.data.rows[i];
        
        NSLog(@"%@",rows.bannerPic);

        UIImageView *imageView =[[UIImageView alloc]init];
        
        imageView.frame =CGRectMake(i*320, 0, 320, 170);
        
        [hostInterfaceView addSubview:imageView];
        
        [imageView setImageWithURL:[NSURL URLWithString:rows.bannerPic]];
        
        [imageView release];
        
    }
    
    pageControl =[[UIPageControl alloc]initWithFrame:CGRectMake(110, 130, 100, 20)];
    
    [pageControl addTarget:self action:@selector(pageChanged:) forControlEvents:UIControlEventValueChanged];
    
    pageControl .numberOfPages =5;
    
    pageControl.pageIndicatorTintColor=[UIColor colorWithWhite:0.5 alpha:0.5];
    
    pageControl.currentPage =0;
    
    pageControl.currentPageIndicatorTintColor=[UIColor redColor];
    
    [showTable addSubview:pageControl];
    
    [pageControl release];
    
    [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(onTheWay) userInfo:Nil repeats:YES];
    
    yyy=320;
}

-(void)onTheWay{
    offsetx+=yyy;
    
    [hostInterfaceView setContentOffset:CGPointMake(offsetx, 0) animated:YES];
    
    if (offsetx == 1280) {
        yyy=-yyy;
    }
    if (offsetx == 0) {
        yyy=320;
    }
    pageControl.currentPage =offsetx/320;
    
    
}

-(void)pageChanged:(UIPageControl *)sender{
    
    int  currentIndex =sender.currentPage;
    
    [hostInterfaceView setContentOffset:CGPointMake(currentIndex *320, 0) animated:YES];
    
    offsetx+=yyy;
    
    [hostInterface setContentOffset:CGPointMake(offsetx, 0) animated:YES];
    
    if (offsetx == 2240) {
        yyy+=yyy;
    }
    if (offsetx == 0) {
        yyy=320;
    }
    [articleClassification setContentOffset:CGPointMake(offsetx/70, 0)animated:YES];

    
}
-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{ 
    if (scrollView==articleClassification)
    {
        return;
    }
    if (scrollView==hostInterface)
    {
        CGFloat x=scrollView.contentOffset.x;
        
        int index =x/320;
        NSLog(@"%d",index);
        
        [articleClassification setContentOffset:CGPointMake(30*index, 0) animated:YES];
        
        NSDictionary *dic =@{NSFontAttributeName:[UIFont systemFontOfSize:20]};
        
        float width=[@"色魔" sizeWithAttributes:dic].width;
        
        pageControl.currentPage =index;
        
        [UIView animateWithDuration:0.5 animations:^{
            _markimage.bounds =CGRectMake(0, 0, width, 3);
            
            _markimage.center =CGPointMake(70*index+35, 47.5);
        }];
    }

}

#pragma mark-UITableView

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    if (tableView.tag==100) {
        return selectClass.data.rows.count;
    }else if(tableView.tag ==101){
        return preferentialClass.data.rows.count;
    }else if(tableView.tag == 102){
        return haiTaoClass.data.rows.count;
    }else if(tableView.tag == 103){
        return haiTaoClass.data.rows.count;
    }else if(tableView.tag == 104){
        return haiTaoClass.data.rows.count;
    }else if(tableView.tag == 105){
        return experienceCless.data.rows.count;
    }else if(tableView.tag == 106){
        return informationClass.data.rows.count;
    }else{
        return 0;
    }
    
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (tableView.tag == 100) {
        TheListOf *cell =(TheListOf *)[tableView dequeueReusableCellWithIdentifier:@"normal" forIndexPath:indexPath];
        
        [cell.headerImageView setImageWithURL:[NSURL URLWithString:[[selectClass.data.rows objectAtIndex:indexPath.row]articlePic]]];
        
        cell.label.text=[[selectClass.data.rows objectAtIndex:indexPath.row]articleChannelName];
        
        cell.rightLabel.text =[[selectClass.data.rows objectAtIndex:indexPath.row]articleFormatDate];
        
        cell.bigLabel.text =[[selectClass.data.rows objectAtIndex:indexPath.row]articleTitle];
        
        cell.redLabel.text =[[selectClass.data.rows objectAtIndex:indexPath.row]articlePrice];
        
        cell.iImageView.image=[UIImage imageNamed:@"ic_no_comment@2x.png"];
        
        cell.nextLabel.text =[[selectClass.data.rows objectAtIndex:indexPath.row]articleComment];
        
        return cell;

    }else if(tableView.tag ==101){
        
        TheListOf *cell =(TheListOf *)[tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
        
        [cell.headerImageView setImageWithURL:[NSURL URLWithString:[[preferentialClass.data.rows objectAtIndex:indexPath.row]articlePic]]];
        
        cell.label.text=[[preferentialClass.data.rows objectAtIndex:indexPath.row]articleMall];
        
        cell.rightLabel.text =[[preferentialClass.data.rows objectAtIndex:indexPath.row]articleFormatDate];
        
        cell.bigLabel.text =[[preferentialClass.data.rows objectAtIndex:indexPath.row]articleTitle];
        
        cell.redLabel.text =[[preferentialClass.data.rows objectAtIndex:indexPath.row]articlePrice];
        
        cell.iImageView.image=[UIImage imageNamed:@"ic_no_comment@2x.png"];
        
        cell.nextLabel.text =[[preferentialClass.data.rows objectAtIndex:indexPath.row]articleComment];
        
        return cell;
        
    }else if (tableView.tag ==102){
        
        TheListOf *cell =(TheListOf *)[tableView dequeueReusableCellWithIdentifier:@"haitao" forIndexPath:indexPath];
        
        [cell.headerImageView setImageWithURL:[NSURL URLWithString:[[haiTaoClass.data.rows objectAtIndex:indexPath.row]articlePic]]];
        
        cell.label.text=[[haiTaoClass.data.rows objectAtIndex:indexPath.row]articleMall];
        
        cell.rightLabel.text =[[haiTaoClass.data.rows objectAtIndex:indexPath.row]articleFormatDate];
        
        cell.bigLabel.text =[[haiTaoClass.data.rows objectAtIndex:indexPath.row]articleTitle];
        
        cell.redLabel.text =[[haiTaoClass.data.rows objectAtIndex:indexPath.row]articlePrice];
        
        cell.iImageView.image=[UIImage imageNamed:@"ic_no_comment@2x.png"];
        
        cell.nextLabel.text =[[haiTaoClass.data.rows objectAtIndex:indexPath.row]articleComment];
        
        return cell;
        
    }else if (tableView.tag == 103){
        TheListViewCell *cell =(TheListViewCell *)[tableView dequeueReusableCellWithIdentifier:@"information"forIndexPath:indexPath];
        
        return cell;
        
        
    }else if (tableView.tag == 104){
        TheListViewCell *cell =(TheListViewCell *)[tableView dequeueReusableCellWithIdentifier:@"information"forIndexPath:indexPath];
        
        return cell;
        
    }else if (tableView.tag == 105){
        
        TheListViewCell *cell =(TheListViewCell *)[tableView dequeueReusableCellWithIdentifier:@"experience"forIndexPath:indexPath];
        
        [cell.headerImageView setImageWithURL:[NSURL URLWithString:[[experienceCless.data.rows objectAtIndex:indexPath.row]articlePic]]];
        
        cell.label.text=[[experienceCless.data.rows objectAtIndex:indexPath.row]articleReferrals];
        
        cell.rightLabel.text =[[experienceCless.data.rows objectAtIndex:indexPath.row]articleFormatDate];
        
        cell.bigLabel.text =[[experienceCless.data.rows objectAtIndex:indexPath.row]articleFilterContent];
        
        cell.redLabel.text =[[experienceCless.data.rows objectAtIndex:indexPath.row]articleTitle];
        
        cell.iImageView.image=[UIImage imageNamed:@"ic_no_comment@2x.png"];
        
        cell.nextLabel.text =[[experienceCless.data.rows objectAtIndex:indexPath.row]articleComment];

        return cell;
        
    }else if(tableView.tag == 106)  {
        
        TheListViewCell *cell =(TheListViewCell *)[tableView dequeueReusableCellWithIdentifier:@"information"forIndexPath:indexPath];
        
        [cell.headerImageView setImageWithURL:[NSURL URLWithString:[[informationClass.data.rows objectAtIndex:indexPath.row]articlePic]]];
        
        cell.label.text=[[informationClass.data.rows objectAtIndex:indexPath.row]articleRzlx];
        
        cell.rightLabel.text =[[informationClass.data.rows objectAtIndex:indexPath.row]articleFormatDate];
        
        cell.bigLabel.text =[[informationClass.data.rows objectAtIndex:indexPath.row]articleFilterContent];
        
        cell.redLabel.text =[[informationClass.data.rows objectAtIndex:indexPath.row]articleTitle];
        
        cell.iImageView.image=[UIImage imageNamed:@"ic_no_comment@2x.png"];
        
        cell.nextLabel.text =[[informationClass.data.rows objectAtIndex:indexPath.row]articleComment];
        
        return cell;
    }else{
        TheListViewCell *cell =(TheListViewCell *)[tableView dequeueReusableCellWithIdentifier:@"information"forIndexPath:indexPath];
        
        return cell;
        
    }
    
}
#pragma mark -ScrollViewArticleClassification

-(void)btnMove:(UIButton *)btn{
    
    NSDictionary *dic =@{NSFontAttributeName:[UIFont systemFontOfSize:20]};
    
    float width=[btn.titleLabel.text sizeWithAttributes:dic].width;
    
    [UIView animateWithDuration:0.5 animations:^{
       _markimage.bounds =CGRectMake(0, 0, width, 3);
        
        _markimage.center =CGPointMake(btn.center.x, 47.5);
        
    }];
    
    [articleClassification setContentOffset:CGPointMake(30*btn.tag, 0) animated:YES];
    [hostInterface setContentOffset:CGPointMake(320*btn.tag, 0)animated:YES];
}


-(void)dealloc{
    [super dealloc];
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
