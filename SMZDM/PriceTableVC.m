//
//  PriceTableVC.m
//  SMZDM
//
//  Created by dushuai on 3/9/15.
//  Copyright (c) 2015 布鲁斯.韦恩 . All rights reserved.
//

#import "PriceTableVC.h"
#import "PriceCell.h"
#import "NetworkTool.h"

@interface PriceTableVC ()

@end

@implementation PriceTableVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    
    [self downView];
    [self topView];
    NSMutableArray* youHuiArray = [NSMutableArray new];
    NSMutableArray* haiTaoArray = [NSMutableArray new];
    NSMutableArray* showArray = [NSMutableArray new];
    NSMutableArray* exArray = [NSMutableArray new];
    NSMutableArray*  newsArray = [NSMutableArray new];
    NSMutableArray* findArray = [NSMutableArray new];
    _bigArray = [[NSMutableArray arrayWithObjects:youHuiArray,haiTaoArray,findArray,showArray,exArray,newsArray, nil] retain];
    
    
    
    for (int i = 0; i< 2; i++)
    {
        [NetworkTool  getPriceIndex:i CompletionBlock:^(NSDictionary *dic){
            
            NSDictionary * dataDic = dic;
            //--
            [[_bigArray  objectAtIndex:i] addObjectsFromArray:[[dataDic objectForKey:@"data"] objectForKey:@"rows" ]];
            _number=i;
            UITableView * table = (UITableView *)[self.view viewWithTag:i+50];
            [table  reloadData];
            
        }];
    }
    
    for (int i= 0; i < 2; i++)
    {
        _publicTable = [[UITableView alloc] initWithFrame:CGRectMake(i * 320, 0, 320,575-101) style:UITableViewStylePlain];
        _publicTable.delegate=self;
        _publicTable.dataSource=self;
        _publicTable.tag= i + 50;
        [_scrollViewDown addSubview:_publicTable];
        
    }
}


#pragma mark- UITableViewDelegate
//
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSMutableArray *array = [_bigArray objectAtIndex:_number];
    
           return  array.count ;
    
}


-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    PriceCell * cell  =[_publicTable dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [[[PriceCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"] autorelease];
    }
    
    [cell getDayList:tableView.tag-50 dataArray:[_bigArray objectAtIndex:_number] indexRow:indexPath.row];
    
    return cell;
}

#pragma mark - UITableViewDelegate
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
          return 135;
    
}


-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 0;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [_publicTable deselectRowAtIndexPath:indexPath  animated:NO];
    
}

//-------------top UI
-(void)topView
{
    
    UIView * aView =[[UIView alloc]init];
    aView.frame = CGRectMake(0, 0, 320, 100);
    [aView  setBackgroundColor:[UIColor  whiteColor]];
    [self.view addSubview:aView];
    [aView release];
    
    UIButton * button =[UIButton buttonWithType:UIButtonTypeSystem];
    [button  setBackgroundImage:[UIImage imageNamed:@"ic_red_back@2x"] forState:UIControlStateNormal];
    button.frame = CGRectMake(20 , 30, 20, 25);
    [button addTarget:self action:@selector(backClick) forControlEvents:UIControlEventTouchUpInside];
    [aView addSubview:button];
    
    
    UILabel * lab =[[UILabel alloc] init];
    lab.text  = @" 筛选“神价格” ";
    [lab setFont:[UIFont systemFontOfSize:25]];
    lab.frame = CGRectMake(80, 30,170 , 25);
    [aView addSubview:lab] ;
    [lab release];
    
    _scrollViewTop =[[UIScrollView alloc] init];
    _scrollViewTop.frame = CGRectMake(0, 50, 320,50 );
    _scrollViewTop.contentSize = CGSizeMake(400, 40);
    _scrollViewTop.showsHorizontalScrollIndicator=NO;
    //    scrollView.backgroundColor =[UIColor grayColor];
    [aView addSubview: _scrollViewTop];
    
    NSArray * array =@[@"优惠",@"海淘"];
    int lie = 2;
    for (int i= 0; i < 2; i++) {
        int    width = 40;
        float  colum = i% lie;
        
        float  interval =  (200 - width* lie)/lie;
        
        UIButton* btnList =[UIButton buttonWithType:UIButtonTypeSystem];
        btnList .frame =CGRectMake( 10+colum * (width+interval), 5, width, 40);
        [btnList.titleLabel setFont:[UIFont systemFontOfSize:20]];
        btnList.tag = i+ 100;
        
        [btnList addTarget:self action:@selector(clickBtn:) forControlEvents:UIControlEventTouchUpInside];
        
        
        [btnList setTitle:[array objectAtIndex:i] forState:UIControlStateNormal];
        if (i==0) {
            [btnList setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        }else
        {
            [btnList setTitleColor:[UIColor colorWithRed:0.4 green:0.4 blue:0.4 alpha:1] forState:UIControlStateNormal];
        }
        
        [_scrollViewTop addSubview:btnList];
    }
    
    _downView =[[UIView alloc] init];
    _downView.frame = CGRectMake(10, 47, 40, 2.5);
    _downView.backgroundColor =[UIColor redColor];
    [_scrollViewTop addSubview:_downView];
    
    UIView * lineView=[UIView new];
    lineView.frame = CGRectMake(0,100 , 320, 1);
    lineView.backgroundColor =[UIColor colorWithRed:0.9 green:0.9 blue:0.9 alpha:1];
    [aView addSubview:lineView];
    [lineView release];
}


-(void)downView
{
    _scrollViewDown =[[UIScrollView alloc] init];
    _scrollViewDown.frame =CGRectMake(0, 101, 320,575-101 );
    _scrollViewDown.contentSize = CGSizeMake(320*2, 575-101);
    _scrollViewDown.backgroundColor=[UIColor whiteColor];
    _scrollViewDown.pagingEnabled=YES;
    _scrollViewDown.delegate=self;
    [self.view addSubview:_scrollViewDown];
    
    
}

// 小scrollView 选择
-(void)clickBtn:(UIButton*)sender
{
    long   index = sender.tag-100;
    _scrollViewDown.contentOffset = CGPointMake(index * 320, 0);
    [UIView animateWithDuration:0.5 animations:^{
        _downView.frame =CGRectMake(index* 100 + 10, 48, 40, 2);
    }];
    for (int i=0; i<2; i++)
    {
        UIButton * btn =(UIButton *)[self.view viewWithTag:i + 100];
        
        [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithLong:btn.tag] forKey:@"tag"];
        
        if (sender.tag ==btn.tag) {
            [sender setTitleColor:[UIColor redColor] forState:UIControlStateNormal];   
        }
        else
        {
            [btn setTitleColor:[UIColor colorWithRed:0.4 green:0.4 blue:0.4 alpha:1] forState:UIControlStateNormal];
        }
    }
    _number = sender.tag -100;
    UITableView * table =(UITableView*)[self.view viewWithTag:sender.tag-50];
    [table reloadData];
    
}


#pragma mark- UIScrollViewDelegate

-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    _page = _scrollViewDown.contentOffset.x/320;
    
    [UIView animateWithDuration:0.2 animations:^{
        _downView.frame =CGRectMake(_page* (100) + 10, 48, 40, 2);
    }];
    
    for (int i = 0; i<2; i++) {
        UIButton * btn=(UIButton*)[self.view viewWithTag:i+100];
        if (btn.tag==_page+100) {
            [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
            
        }
        else
        {
            [btn setTitleColor:[UIColor colorWithRed:0.4 green:0.4 blue:0.4 alpha:1] forState:UIControlStateNormal];
        }
    }
    
    _scrollViewTop.contentOffset = CGPointMake(_page*1, 0);
    _number = _page;
    UITableView * table =(UITableView*) [self.view viewWithTag:_page+50];
    [table reloadData];

}




-(void)backClick
{
    [self dismissViewControllerAnimated:YES completion:nil];
}



-(void)dealloc
{
    self.publicTable=nil;
    self.bigArray=nil;
    [_scrollViewTop release];
    [_scrollViewDown release];
    [_downView release];
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
