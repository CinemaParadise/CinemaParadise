//
//  ViewController.m
//  CinemaParadise
//
//  Created by  GraceLilac on 2016. 5. 10..
//  Copyright © 2016년 GraceLilac. All rights reserved.
//

#import "ViewController.h"
#import <KakaoOpenSDK/KakaoOpenSDK.h>
#import "UIButton+Addition.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *loginButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.loginButton setBackgroundColor:[UIColor colorWithRed:0xff / 255.0 green:0xcc / 255.0 blue:0x00 / 255.0 alpha:1.0] forState:UIControlStateNormal];
    [self.loginButton setBackgroundColor:[UIColor colorWithRed:0xff / 255.0 green:0xb4 / 255.0 blue:0x00 / 255.0 alpha:1.0] forState:UIControlStateHighlighted];
    self.loginButton.clipsToBounds = YES;
    self.loginButton.layer.cornerRadius = 4;

}
- (IBAction)login:(id)sender {
    KOSession *session = [KOSession sharedSession];
    
    if (session.isOpen) {
        [session close];
    }
    
    session.presentingViewController = self.navigationController;
    [session openWithCompletionHandler:^(NSError *error) {
        session.presentingViewController = nil;
        
        if (!session.isOpen) {
            [[[UIAlertView alloc] initWithTitle:@"에러" message:error.description delegate:nil cancelButtonTitle:@"확인" otherButtonTitles:nil, nil] show];
        }
    }];

}

@end
