//
//  ViewController.m
//  CinemaParadise
//
//  Created by  조현호 on 2016. 5. 10..
//  Copyright © 2016년 GraceLilac. All rights reserved.
//

#import "ViewController.h"
#import <KakaoOpenSDK/KakaoOpenSDK.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    KOLoginButton *loginButton = [[KOLoginButton alloc] initWithFrame:CGRectMake(0, 0, 300, 100)];
    [self.view addSubview:loginButton];
    
}

@end
