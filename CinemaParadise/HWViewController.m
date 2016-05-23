//
//  ViewController.m
//  CinemaParadise
//
//  Created by  GraceLilac on 2016. 5. 10..
//  Copyright © 2016년 GraceLilac. All rights reserved.
//

#import "HWViewController.h"
#import <KakaoOpenSDK/KakaoOpenSDK.h>
#import "UIButton+Addition.h"

@interface HWViewController ()

@property (nonatomic, strong) UIImageView *mainImageView;
@property (weak, nonatomic) IBOutlet UIButton *loginButton;

@end

@implementation HWViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupViewComponents];
    [self setupConstraints];
}


- (void)setupViewComponents {
    self.mainImageView = [[UIImageView alloc] init];
    self.mainImageView.image = [UIImage imageNamed:@"Default"];
    self.mainImageView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:self.mainImageView];
    
    [self.loginButton setBackgroundColor:[UIColor colorWithRed:0xff / 255.0 green:0xcc / 255.0 blue:0x00 / 255.0 alpha:1.0] forState:UIControlStateNormal];
    [self.loginButton setBackgroundColor:[UIColor colorWithRed:0xff / 255.0 green:0xb4 / 255.0 blue:0x00 / 255.0 alpha:1.0] forState:UIControlStateHighlighted];
    self.loginButton.clipsToBounds = YES;
    self.loginButton.layer.cornerRadius = 4;
    self.loginButton.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:self.loginButton];
    self.loginButton.hidden = YES;
    
    [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(timeoutHandler:) userInfo:nil repeats:NO];
}

-(void)timeoutHandler:(NSTimer*) timer
{
    self.loginButton.hidden = NO;
    [timer invalidate];
}


- (void)setupConstraints {
    NSDictionary *views = @{
                            @"mainImageView" : self.mainImageView,
                            @"loginButton" : self.loginButton
                            };
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.view attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.mainImageView attribute:NSLayoutAttributeLeft multiplier:1 constant:0]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.view attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self.mainImageView attribute:NSLayoutAttributeRight multiplier:1 constant:0]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.view attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.mainImageView attribute:NSLayoutAttributeTop multiplier:1 constant:0]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.view attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.mainImageView attribute:NSLayoutAttributeBottom multiplier:1 constant:0]];
    
    [self.view addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-480-[loginButton(==40)]" options:0 metrics:nil views:views]];
    
    [self.view addConstraint:
     [NSLayoutConstraint constraintWithItem:self.mainImageView attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.loginButton attribute:NSLayoutAttributeCenterX multiplier:1 constant:0]];
    
    [self.view addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:[loginButton(==150)]" options:0 metrics:nil views:views]];
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
