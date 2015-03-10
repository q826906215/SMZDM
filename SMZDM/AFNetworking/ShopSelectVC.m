


//
//  ShopSelectVC.m
//  SMZDM
//
//  Created by dushuai on 3/10/15.
//  Copyright (c) 2015 布鲁斯.韦恩 . All rights reserved.
//

#import "ShopSelectVC.h"
#import "NetworkTool.h"
#import "ShopCell.h"
@interface ShopSelectVC ()

@end

@implementation ShopSelectVC


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   // [self downView];
    [self topView];
      [self downView];

    NSMutableArray* youHuiArray = [NSMutableArray new];
    NSMutableArray* findArray = [NSMutableArray new];
    
    _bigArray = [[NSMutableArray arrayWithObjects:youHuiArray,findArray, nil] retain];
    
    [self sendRequest];
    
    for (int i= 0; i < 2; i++)
    {
        _publicTable = [[UITableView alloc] initWithFrame:CGRectMake(i * 320, 0, 320,575-101) style:UITableViewStylePlain];
        _publicTable.delegate=self;
        _publicTable.dataSource=self;
        _publicTable.tag= i + 60;
        [_scrollViewDown addSubview:_publicTable];
        
    }
    
}



-(void)sendRequest
{

float value = [[[NSUserDefaults standardUserDefaults] objectForKey:@"upButton"] floatValue];
    
for (int i = 0; i< 2; i++)
{
        [NetworkTool  getShopIndex:i getValue:value   CompletionBlock:^(NSDictionary *dic){
            
            NSDictionary * dataDic = dic;
            //--
            [[_bigArray  objectAtIndex:i] addObjectsFromArray:[[dataDic objectForKey:@"data"] objectForKey:@"rows" ]];
            _number=i;
             UITableView * table = (UITableView *)[self.view viewWithTag:i+60];
            [table  reloadData];
        }];
    }
    
    
}





#pragma mark- UITableViewDelegate
//
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSMutableArray *array = [_bigArray objectAtIndex:_number];
    
    if (_number==1) {
        return  array.count/2;
    }else{
        return  array.count ;
    }
}


-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ShopCell * cell  =[_publicTable dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [[[ShopCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"] autorelease];
    }
    
    [cell getShopList:tableView.tag-60 dataArray:[_bigArray objectAtIndex:_number] indexRow:indexPath.row];
    
    return cell;
}

#pragma mark - UITableViewDelegate
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (_number==1) {
        return 290;
    }        else
    {
        return 135;
    }
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
    aView.frame = CGRectMake(0 , 0 , 320, 100);
    [aView  setBackgroundColor:[UIColor  whiteColor]];
    [self.view addSubview:aView];
    [aView release];

    UIButton * button =[UIButton buttonWithType:UIButtonTypeSystem];
    [button  setBackgroundImage:[UIImage imageNamed:@"ic_red_back@2x"] forState:UIControlStateNormal];
    button.frame = CGRectMake(20 , 30, 20, 18);
    [button addTarget:self action:@selector(backClick) forControlEvents:UIControlEventTouchUpInside];
    [aView addSubview:button];

   
    float value = [[[NSUserDefaults standardUserDefaults] objectForKey:@"upButton"] floatValue];
    if (value >= 1000) {
            NSArray * titleArray =@[@"筛选“京东”",@"筛选“天猫精选”",@"筛选“亚马逊中国”",@"筛选“苏宁易购”",@"筛选“1号店”",@"筛选“顺丰优选”",@"筛选“中粮我买网”",@"筛选“淘宝精选”",@"筛选“易迅网”",@"筛选“国美在线”",@"筛选“当当”",@"筛选“优购网”",@"筛选“沱沱工社”",@"筛选“健一网”",@"“新蛋中国”",@"美国亚马逊",@"日本亚马逊",@"ebay",@"6PM",@"STP",@"Ashford",@"woot",@"GNCC美国官网",@"MYHABIT",@"REI",@"druastore",@"Joe's NB Outlet.chls",@"德国亚马逊",@"JOMASHOP",@"TheWatchery"];
    UILabel * lab =[[UILabel alloc]init];
    lab.frame = CGRectMake(50, 30, 200, 25);
    lab.textAlignment =NSTextAlignmentCenter;
    lab.text=[titleArray objectAtIndex:(value-1000)];
    [lab setFont:[UIFont systemFontOfSize:22]];
    lab.textColor = [UIColor colorWithRed:0.1 green:0.1 blue:0.1 alpha:1];
    [aView addSubview:lab];

    [lab release];
    
    }
    
    _scrollViewTop =[[UIScrollView alloc] init];
    _scrollViewTop.frame = CGRectMake(0, 50, 320,50 );
    _scrollViewTop.contentSize = CGSizeMake(400, 40);
    _scrollViewTop.showsHorizontalScrollIndicator=NO;
    //    scrollView.backgroundColor =[UIColor grayColor];
    [aView addSubview: _scrollViewTop];
    
    NSArray * array =@[@"优惠",@"发现"];
    int lie = 2;
    for (int i= 0; i < 2; i++) {
        int    width = 40;
        float  colum = i% lie;
        
        float  interval =  (120 - width* lie)/lie;
        
        UIButton* btnList =[UIButton buttonWithType:UIButtonTypeSystem];
        btnList .frame =CGRectMake( 10+colum * (width+interval), 5, width, 40);
        [btnList.titleLabel setFont:[UIFont systemFontOfSize:20]];
        btnList.tag = i+ 300;
        
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
    lineView.frame = CGRectMake(0 , 100 , 320, 1);
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
    NSLog(@"------------5555");
    long   index = sender.tag-300;
    _scrollViewDown.contentOffset = CGPointMake(index * 320, 0);
    [UIView animateWithDuration:0.5 animations:^{
        _downView.frame =CGRectMake(10+index*60, 48, 40, 2.5);
    }];
    for (int i=0; i<2; i++)
    {
        UIButton * btn =(UIButton *)[self.view viewWithTag:i + 300];
        
        [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithLong:btn.tag] forKey:@"tag"];
        
        if (sender.tag == btn.tag)
        {
            [sender setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
            
          

            
        }
        else
        {
            [btn setTitleColor:[UIColor colorWithRed:0.4 green:0.4 blue:0.4 alpha:1] forState:UIControlStateNormal];
            
        }
    }
    
    _number = sender.tag -300;
    UITableView * table =(UITableView*) [self.view viewWithTag:sender.tag-60];
    [table reloadData];
    
    
    
    
//    _scrollViewTop.contentOffset = CGPointMake(index*16, 0);
}

    
#pragma mark- UIScrollViewDelegate
    
-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    _page = _scrollViewDown.contentOffset.x/320;
    
    [UIView animateWithDuration:0.2 animations:^{
        _downView.frame =CGRectMake(10+_page*60, 48, 40, 2);
    }];
    
    for (int i = 0; i<2; i++) {
        UIButton * btn=(UIButton*)[self.view viewWithTag:i+300];
        if (btn.tag==_page+300) {
            [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
            
        }
        else
        {
            [btn setTitleColor:[UIColor colorWithRed:0.4 green:0.4 blue:0.4 alpha:1] forState:UIControlStateNormal];
        }
    }
    
    
    
    _number = _page;
    UITableView * table =(UITableView*) [self.view viewWithTag:_page+60];
    [table reloadData];
    
    
    
}

-(void)backClick
{
    [self dismissViewControllerAnimated:YES completion:nil];
}
//
//
//
-(void)dealloc
{
    self.publicTable=nil;
    self.bigArray=nil;
    [_scrollViewTop release];
    [_scrollViewDown release];
    [_downView release];
    [super dealloc];
}
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
