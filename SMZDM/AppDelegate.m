//
//  AppDelegate.m
//  SMZDM
//
//  Created by 布鲁斯.韦恩  on 15/3/4.
//  Copyright (c) 2015年 布鲁斯.韦恩 . All rights reserved.
//
///////
#import "AppDelegate.h"
#import "TheMainInterface.h"

@interface AppDelegate (){
    UIScrollView *productIntroduction;
    
    UIPageControl *pageControl;
}

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    
    
    
    productIntroduction=[[UIScrollView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    
    productIntroduction.pagingEnabled =YES;
    
    productIntroduction.delegate =self;
    
    productIntroduction.contentSize =CGSizeMake(320*4, 150);
    
    productIntroduction.alwaysBounceHorizontal =YES;
    
    productIntroduction.showsHorizontalScrollIndicator =NO;
    
    productIntroduction.bounces=YES;
    
    [self.window addSubview:productIntroduction];
    
    [productIntroduction release];
    
    for (int i=0; i<4; i++) {
        UIImageView *briefImageView =[[UIImageView alloc]initWithImage:[UIImage imageNamed:[NSString stringWithFormat:@"intro_ip5_%d.png",i+1]]];
        
        briefImageView.frame =CGRectMake(i*320, 0, 320, 568);
        
        [productIntroduction addSubview:briefImageView];
        
        [briefImageView release];
    }
    
    
//    pageControl =[[UIPageControl alloc]initWithFrame:CGRectMake(110, 460, 100, 50)];
//    
//    [pageControl addTarget:self action:@selector(pageChanged:) forControlEvents:UIControlEventValueChanged];
//    
//    pageControl.numberOfPages =4;
//    
//    pageControl.pageIndicatorTintColor =[UIColor whiteColor];
//    
//    pageControl.currentPage =0;
//    
//    pageControl.currentPageIndicatorTintColor =[UIColor redColor];
//    
//    [self.window addSubview:pageControl];
    
    UIButton *experienceImmediately =[UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    experienceImmediately.frame =CGRectMake(1050, 460, 150, 40);
    
    [experienceImmediately setBackgroundImage:[UIImage imageNamed:[NSString stringWithFormat:@"intro_ip5_btn.png"]] forState:UIControlStateNormal];
    
    [experienceImmediately addTarget:self action:@selector(experience) forControlEvents:UIControlEventTouchUpInside];
    
    [productIntroduction addSubview:experienceImmediately];
    
    return YES;
}
-(void)experience{
    
    
    TheMainInterface *interface=[[TheMainInterface alloc]init];
    
    UINavigationController *controller =[[UINavigationController alloc]initWithRootViewController:interface];
    
    [[UINavigationBar appearance]setBarTintColor:[UIColor whiteColor]];
    
    self.window.rootViewController =controller;
    
    [productIntroduction  removeFromSuperview];
    
}

-(void)dealloc{
    
    [productIntroduction release];
    
    [super dealloc];
    
}
- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
