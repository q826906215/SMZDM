//
//  TheMainInterface.m
//  SMZDM
//
//  Created by 布鲁斯.韦恩  on 15/3/5.
//  Copyright (c) 2015年 布鲁斯.韦恩 . All rights reserved.
//

#import "TheMainInterface.h"
#import <AFNetworking.h>
#import "TheListOf.h"
#import "TheListViewCell.h"
#import <UIImageView+WebCache.h>
#import "NetworkTool.h"
#import "SearchVC.h"
#import "BaskInContentCell.h"
#import "PersonalInformation.h"
#import "FoundCell.h"




@interface TheMainInterface ()

@end

@implementation TheMainInterface


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor =[UIColor whiteColor];
    UINavigationBar*bar=[[UINavigationBar alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 64)];
    
    UINavigationItem *item = [[UINavigationItem alloc] initWithTitle:@"什么值得买"];
    
    [bar setTitleTextAttributes:@{NSFontAttributeName:[UIFont boldSystemFontOfSize:20]}];
    
    [bar setBackgroundImage:[UIImage alloc] forBarMetrics:UIBarMetricsDefault];
    
    bar.shadowImage=[[UIImage alloc]init];
    
    [bar pushNavigationItem:item animated:NO];
    
    [self.view addSubview:bar];
    
    UIButton * leftButton =[UIButton buttonWithType:UIButtonTypeCustom];
    leftButton.frame =CGRectMake(15,27, 22, 22);
    [leftButton setBackgroundImage:[UIImage imageNamed:@"ic_search@2x.png"] forState:UIControlStateNormal];
    leftButton.tag=1000;
    [leftButton  addTarget:self action:@selector(searchShop:) forControlEvents:UIControlEventTouchUpInside];
    
    [bar addSubview:leftButton];
//    UIBarButtonItem * leftItem =[[UIBarButtonItem alloc] initWithCustomView:leftButton];
//    self.navigationItem.leftBarButtonItem=leftItem;
    
    UIButton * Button =[UIButton buttonWithType:UIButtonTypeCustom];
    Button.frame =CGRectMake(282, 27, 22, 22);
    [Button setBackgroundImage:[UIImage imageNamed:@"ic_user@2x.png"] forState:UIControlStateNormal];
    Button.tag =1001;
    [Button  addTarget:self action:@selector(searchShop:) forControlEvents:UIControlEventTouchUpInside];
    
    [bar addSubview:Button];
    
//    UIBarButtonItem * Item =[[UIBarButtonItem alloc] initWithCustomView:Button];
//    self.navigationItem.rightBarButtonItem=Item;
    [NetworkTool getFistPageScrollImageDataCompletionBlock:^(NSDictionary *dic) {
        
        baseClass =[ScrollBaseClass modelObjectWithDictionary:dic];
        
        [self  Classification];
    }];
}

-(void)searchShop:(UIButton *)sender
{
    if (sender.tag ==1000) {
        SearchVC * svc =[[SearchVC alloc] init];
        [self presentViewController:svc animated:YES completion:nil];
    }else{
        PersonalInformation *vc =[[PersonalInformation alloc]init];
        [self.navigationController pushViewController:vc animated:YES];
    }
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
    
    UIImageView *line = [[UIImageView alloc] init];
    line.backgroundColor = [UIColor lightGrayColor];
    line.alpha = .2;
    line.frame = CGRectMake(0,113, self.view.frame.size.width, 1);
    [self.view addSubview:line];
    [line release];
    
    NSArray *titlearray =@[@"精选",@"优惠",@"海淘",@"发现",@"晒物",@"经验",@"资讯",];
    
    for (int i=0; i<7; i++) {
        
        ification=[UIButton buttonWithType:UIButtonTypeRoundedRect];
        
        ification.frame =CGRectMake(i*70, 0, 70, 50);
        
        ification.tag =i;
        
        ification .alpha=0.6;
        
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
    
    hostInterface.showsHorizontalScrollIndicator =NO;
    
    hostInterface.bounces=YES;
    
    [self.view addSubview:hostInterface];
    
    [hostInterfaceView release];
    
    [NetworkTool getFistPageSelectDataCompletionBlock:^(NSDictionary *dic) {
        
        selectClass =[SelectBaseClass modelObjectWithDictionary:dic];
        
        [showTable reloadData];
        
    }];
    
    showTable =[[UITableView alloc]initWithFrame:CGRectMake(0, 0, 320, 454)];
    
    showTable.delegate =self;
    
    showTable.dataSource =self;
    
    showTable.rowHeight =116;
    
    showTable.tag =100;
    
    [showTable registerClass:[TheListOf class] forCellReuseIdentifier:@"normal"];
    
    [hostInterface addSubview:showTable];
    
    refreshControl=[[UIRefreshControl alloc]init];
    
    [refreshControl addTarget:self action:@selector(refresshNowBlog) forControlEvents:UIControlEventValueChanged];

    [showTable addSubview:refreshControl];

    [NetworkTool getFistPagePreferentialDataCompletionBlock:^(NSDictionary *dic){
        
        preferentialClass =[preferentialBaseClass modelObjectWithDictionary:dic];
        
        [preferential reloadData];
        
    }];
    
    preferential=[[UITableView alloc]initWithFrame:CGRectMake(320, 0, 320, 454)];
    
    preferential.delegate =self;
    
    preferential.dataSource =self;
    
    preferential.rowHeight =116;
    
    preferential.tag =101;
    
    [preferential registerClass:[TheListOf class] forCellReuseIdentifier:@"cell"];
    
    [hostInterface addSubview:preferential];
    
    [self selectedColumnsScrollView];
    
    refreshControl1=[[UIRefreshControl alloc]init];
    
    [refreshControl1 addTarget:self action:@selector(preferential) forControlEvents:UIControlEventValueChanged];
    
    [preferential addSubview:refreshControl1];
    
    [NetworkTool getFistPageHaiTaoDataCompletionBlock:^(NSDictionary *dic) {
        haiTaoClass =[HaiTaoBaseClass modelObjectWithDictionary:dic];
        
        [haiTao reloadData];
    }];
    
    haiTao=[[UITableView alloc]initWithFrame:CGRectMake(640, 0, 320, 454)];
    
    haiTao.delegate =self;
    
    haiTao.dataSource =self;
    
    haiTao.rowHeight =116;
    
    haiTao.tag =102;
    
    [haiTao registerClass:[TheListOf class] forCellReuseIdentifier:@"haitao"];
    
    [hostInterface addSubview:haiTao];
    
    refreshControl2=[[UIRefreshControl alloc]init];
    
    [refreshControl2 addTarget:self action:@selector(refresshHowBlog) forControlEvents:UIControlEventValueChanged];
    
    [haiTao addSubview:refreshControl2];
    
    [NetworkTool getFistPagefoundCompletionBlock:^(NSDictionary *dic) {
        
        foundClass =[foundBaseClass modelObjectWithDictionary:dic];
        
        [found reloadData];
    }];
    
    found =[[UITableView alloc]initWithFrame:CGRectMake(960, 0, 320, 454)];
    
    found.delegate =self;
    
    found.dataSource =self ;
    
    [found registerClass:[FoundCell class] forCellReuseIdentifier:@"found"];
    
    found.rowHeight =250;
    
    found.tag =103;
    
    [hostInterface addSubview:found];
    
    refreshControl3=[[UIRefreshControl alloc]init];
    
    [refreshControl3 addTarget:self action:@selector(refresshZowBlog) forControlEvents:UIControlEventValueChanged];
    
    [found addSubview:refreshControl3];
    
    
    
    [NetworkTool getFistPageBaskInContentDataCompletionBlock:^(NSDictionary *dic) {
        
        contentCless = [BaskInContentBaseClass modelObjectWithDictionary:dic];
        
        [baskinContent reloadData];
    }];
    
    baskinContent =[[UITableView alloc]initWithFrame:CGRectMake(1280, 0, 320, 454)];
    
    baskinContent.delegate =self;
    
    baskinContent.dataSource =self ;
    
    baskinContent.separatorStyle =NO;
    
    [baskinContent registerClass:[BaskInContentCell class] forCellReuseIdentifier:@"baskin"];
    
    baskinContent.rowHeight =180;
    
    baskinContent.tag =104;
    
    [hostInterface addSubview:baskinContent];
    
    refreshControl4=[[UIRefreshControl alloc]init];
    
    [refreshControl4 addTarget:self action:@selector(refresshXowBlog) forControlEvents:UIControlEventValueChanged];
    
    [baskinContent addSubview:refreshControl4];


    [NetworkTool getFistPageExperienceDataCompletionBlock:^(NSDictionary *dic) {
        experienceCless =[ExperienceBaseClass modelObjectWithDictionary:dic];
        
        [experience reloadData];
    }];
    
    experience =[[UITableView alloc]initWithFrame:CGRectMake(1600, 0, 320, 454)];
    
    experience.delegate =self;
    
    experience.dataSource =self;
    
    experience.rowHeight =156;
    
    experience.tag =105;
    
    [experience  registerClass:[TheListViewCell class] forCellReuseIdentifier:@"experience"];
    
    [hostInterface addSubview:experience];
    
    refreshControl5=[[UIRefreshControl alloc]init];
    
    [refreshControl5 addTarget:self action:@selector(refresshCowBlog) forControlEvents:UIControlEventValueChanged];
    
    [experience addSubview:refreshControl5];

    
    [NetworkTool getFistPageInformationDataCompletionBlock:^(NSDictionary *dic) {
        
        informationClass =[InformationBaseClass modelObjectWithDictionary:dic];
        
        [information  reloadData];
        
    }];
    information=[[UITableView alloc]initWithFrame:CGRectMake(1920, 0, 320, 454)];
    
    information.delegate =self;
    
    information.dataSource =self;
    
    information.rowHeight =156;
    
    information.tag =106;
    
    [information registerClass:[TheListViewCell class] forCellReuseIdentifier:@"information"];
    
    [hostInterface addSubview:information];
    
    refreshControl6=[[UIRefreshControl alloc]init];
    
    [refreshControl6 addTarget:self action:@selector(refresshDowBlog) forControlEvents:UIControlEventValueChanged];
    
    [information addSubview:refreshControl6];

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
    
    hostInterfaceView.showsVerticalScrollIndicator =FALSE;
    
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
        
        [imageView sd_setImageWithURL:[NSURL URLWithString:rows.bannerPic]];
        
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
    
    if (offsetx == 1600) {
        yyy=-yyy;
    }
    if (offsetx == 0) {
        yyy=320;
    }
    pageControl.currentPage =offsetx/320;
    
    
}

-(void)pageChanged:(UIPageControl *)sender{
    
    NSInteger  currentIndex =sender.currentPage;
    
    [hostInterfaceView setContentOffset:CGPointMake(currentIndex *320, 0) animated:YES];
    
    
}
-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    
    
    CGFloat x=scrollView.contentOffset.x;
    
    int index =x/320;
    
    pageControl.currentPage =index;
    
    if (scrollView==articleClassification)
    {
        return;
    }
    if (scrollView==hostInterface)
    {
        
        NSLog(@"%d",index);
        
        CGFloat x=scrollView.contentOffset.x;
        
        int index =x/320;
        
        pageControl.currentPage =index;
        
        [articleClassification setContentOffset:CGPointMake(30*index, 0) animated:YES];
        
        NSDictionary *dic =@{NSFontAttributeName:[UIFont systemFontOfSize:20]};
        
        float width=[@"色魔" sizeWithAttributes:dic].width;
        
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
        return foundClass.data.rows.count/2;
    }else if(tableView.tag == 104){
        return contentCless.data.rows.count;
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
        
        [cell.headerImageView sd_setImageWithURL:[NSURL URLWithString:[[selectClass.data.rows objectAtIndex:indexPath.row]articlePic]]];
        
        cell.label.text=[[selectClass.data.rows objectAtIndex:indexPath.row]articleChannelName];
        
        cell.rightLabel.text =[[selectClass.data.rows objectAtIndex:indexPath.row]articleFormatDate];
        
        cell.bigLabel.text =[[selectClass.data.rows objectAtIndex:indexPath.row]articleTitle];
        
        cell.redLabel.text =[[selectClass.data.rows objectAtIndex:indexPath.row]articlePrice];
        
        cell.iImageView.image=[UIImage imageNamed:@"ic_no_comment@2x.png"];
        
        cell.nextLabel.text =[[selectClass.data.rows objectAtIndex:indexPath.row]articleComment];
        
        return cell;

    }else if(tableView.tag ==101){
        
        TheListOf *cell =(TheListOf *)[tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
        
        [cell.headerImageView sd_setImageWithURL:[NSURL URLWithString:[[preferentialClass.data.rows objectAtIndex:indexPath.row]articlePic]]];
        
        cell.label.text=[[preferentialClass.data.rows objectAtIndex:indexPath.row]articleMall];
        
        cell.rightLabel.text =[[preferentialClass.data.rows objectAtIndex:indexPath.row]articleFormatDate];
        
        cell.bigLabel.text =[[preferentialClass.data.rows objectAtIndex:indexPath.row]articleTitle];
        
        cell.redLabel.text =[[preferentialClass.data.rows objectAtIndex:indexPath.row]articlePrice];
        
        cell.iImageView.image=[UIImage imageNamed:@"ic_no_comment@2x.png"];
        
        cell.nextLabel.text =[[preferentialClass.data.rows objectAtIndex:indexPath.row]articleComment];
        
        return cell;
        
    }else if (tableView.tag ==102){
        
        TheListOf *cell =(TheListOf *)[tableView dequeueReusableCellWithIdentifier:@"haitao" forIndexPath:indexPath];
        
        [cell.headerImageView sd_setImageWithURL:[NSURL URLWithString:[[haiTaoClass.data.rows objectAtIndex:indexPath.row]articlePic]]];
        
        cell.label.text=[[haiTaoClass.data.rows objectAtIndex:indexPath.row]articleMall];
        
        cell.rightLabel.text =[[haiTaoClass.data.rows objectAtIndex:indexPath.row]articleFormatDate];
        
        cell.bigLabel.text =[[haiTaoClass.data.rows objectAtIndex:indexPath.row]articleTitle];
        
        cell.redLabel.text =[[haiTaoClass.data.rows objectAtIndex:indexPath.row]articlePrice];
        
        cell.iImageView.image=[UIImage imageNamed:@"ic_no_comment@2x.png"];
        
        cell.nextLabel.text =[[haiTaoClass.data.rows objectAtIndex:indexPath.row]articleComment];
        
        return cell;
        
    }else if (tableView.tag == 103){
        FoundCell *cell =(FoundCell *)[tableView dequeueReusableCellWithIdentifier:@"found"forIndexPath:indexPath];
        int  dataDic = indexPath.row*2;
        //--左边
        [cell.leftImage sd_setImageWithURL:[NSURL URLWithString:[[foundClass.data.rows objectAtIndex:dataDic]articlePic]]];
        cell.leftLab.text = [[foundClass.data.rows objectAtIndex:dataDic]articleMall];
        cell.rightLab.text =[[foundClass.data.rows objectAtIndex:dataDic]articleFormatDate];
        cell.middleLab.text =[[foundClass.data.rows objectAtIndex:dataDic]articleTitle];
        cell.thirdRowLab.text=[[foundClass.data.rows objectAtIndex:dataDic]articlePrice];
        cell.downLab.text =[[foundClass.data.rows objectAtIndex:dataDic]articleComment];
        // --右边
        int dataDic1= indexPath.row*2+1;
        [cell.leftImageR  sd_setImageWithURL:[NSURL URLWithString:[[foundClass.data.rows objectAtIndex:dataDic1]articlePic]]];
        cell.leftLabR.text = [[foundClass.data.rows objectAtIndex:dataDic1]articleMall];
        cell.rightLabR.text =[[foundClass.data.rows objectAtIndex:dataDic1]articleFormatDate];
        cell.middleLabR.text =[[foundClass.data.rows objectAtIndex:dataDic1]articleTitle];
        cell.thirdRowLabR.text=[[foundClass.data.rows objectAtIndex:dataDic1]articlePrice];
        cell.downLabR.text =[[foundClass.data.rows objectAtIndex:dataDic1]articleComment];
        
        return cell;
        
        
    }else if (tableView.tag == 104){
        BaskInContentCell *cell =(BaskInContentCell *)[tableView dequeueReusableCellWithIdentifier:@"baskin"forIndexPath:indexPath];
        [cell.headerImageView sd_setImageWithURL:[NSURL URLWithString:[[contentCless.data.rows objectAtIndex:indexPath.row]articlePic]]];
        
        [cell.ImageViewto sd_setImageWithURL:[NSURL URLWithString:[[contentCless.data.rows objectAtIndex:indexPath.row]articleAvatar]]];
        
        cell.rightLabel.text =[[contentCless.data.rows objectAtIndex:indexPath.row]articleReferrals];
        
        cell.redLabel.text =[[contentCless.data.rows objectAtIndex:indexPath.row]articleTitle];
        
        cell.iImageView.image=[UIImage imageNamed:@"ic_no_comment@2x.png"];
        
        cell.nextLabel.text =[[contentCless.data.rows objectAtIndex:indexPath.row]articleComment];
        
        return cell;

        
    }else if (tableView.tag == 105){
        
        TheListViewCell *cell =(TheListViewCell *)[tableView dequeueReusableCellWithIdentifier:@"experience"forIndexPath:indexPath];
        
        [cell.headerImageView sd_setImageWithURL:[NSURL URLWithString:[[experienceCless.data.rows objectAtIndex:indexPath.row]articlePic]]];
        
        cell.label.text=[[experienceCless.data.rows objectAtIndex:indexPath.row]articleReferrals];
        
        cell.rightLabel.text =[[experienceCless.data.rows objectAtIndex:indexPath.row]articleFormatDate];
        
        cell.bigLabel.text =[[experienceCless.data.rows objectAtIndex:indexPath.row]articleFilterContent];
        
        cell.redLabel.text =[[experienceCless.data.rows objectAtIndex:indexPath.row]articleTitle];
        
        cell.iImageView.image=[UIImage imageNamed:@"ic_no_comment@2x.png"];
        
        cell.nextLabel.text =[[experienceCless.data.rows objectAtIndex:indexPath.row]articleComment];

        return cell;
        
    }else if(tableView.tag == 106)  {
        
        TheListViewCell *cell =(TheListViewCell *)[tableView dequeueReusableCellWithIdentifier:@"information"forIndexPath:indexPath];
        
        [cell.headerImageView sd_setImageWithURL:[NSURL URLWithString:[[informationClass.data.rows objectAtIndex:indexPath.row]articlePic]]];
        
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

#pragma mark -refreshControl

-(void)refresshNowBlog{
    [refreshControl beginRefreshing];
    
    [NetworkTool getFistPageSelectDataCompletionBlock:^(NSDictionary *dic) {
            selectClass =[SelectBaseClass modelObjectWithDictionary:dic];
        [showTable reloadData];
    }];
    double delayInSeconds = 4.0;
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
        
        [refreshControl endRefreshing];
    });
}
-(void)preferential{
    
    [refreshControl1 beginRefreshing];

    [NetworkTool getFistPagePreferentialDataCompletionBlock:^(NSDictionary *dic){
        
        preferentialClass =[preferentialBaseClass modelObjectWithDictionary:dic];
        
        [preferential reloadData];
    }];
    double delayInSeconds = 4.0;
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
        
        [refreshControl1 endRefreshing];
    });
}
-(void)refresshHowBlog{
    [refreshControl2 beginRefreshing];
    
    [NetworkTool getFistPageHaiTaoDataCompletionBlock:^(NSDictionary *dic) {
        haiTaoClass =[HaiTaoBaseClass modelObjectWithDictionary:dic];
        
        [haiTao reloadData];
    }];
    double delayInSeconds = 4.0;
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
        
        [refreshControl2 endRefreshing];
    });
}
-(void)refresshZowBlog{
    [refreshControl3 beginRefreshing];
    
    [NetworkTool getFistPagefoundCompletionBlock:^(NSDictionary *dic) {
        
        foundClass =[foundBaseClass modelObjectWithDictionary:dic];
        
        [found reloadData];
    }];

    double delayInSeconds = 4.0;
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
        
        [refreshControl3 endRefreshing];
    });
    
}
-(void)refresshXowBlog{
    [refreshControl4 beginRefreshing];
    
    [NetworkTool getFistPageBaskInContentDataCompletionBlock:^(NSDictionary *dic) {
        
        contentCless = [BaskInContentBaseClass modelObjectWithDictionary:dic];
        
        [baskinContent reloadData];
    }];
    double delayInSeconds = 4.0;
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
        
        [refreshControl4 endRefreshing];
    });
}
-(void)refresshCowBlog{
    [refreshControl5 beginRefreshing];
    
    [NetworkTool getFistPageExperienceDataCompletionBlock:^(NSDictionary *dic) {
        experienceCless =[ExperienceBaseClass modelObjectWithDictionary:dic];
        
        [experience reloadData];
    }];
    double delayInSeconds = 4.0;
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
        
        [refreshControl5 endRefreshing];
    });
}
-(void)refresshDowBlog{
    [refreshControl6 beginRefreshing];
    
    [NetworkTool getFistPageInformationDataCompletionBlock:^(NSDictionary *dic) {
        
        informationClass =[InformationBaseClass modelObjectWithDictionary:dic];
        
        [information  reloadData];
        
    }];
    double delayInSeconds = 4.0;
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
        
        [refreshControl6 endRefreshing];
    });
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
