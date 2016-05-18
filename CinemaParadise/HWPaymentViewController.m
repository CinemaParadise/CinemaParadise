//
//  HWPaymentViewController.m
//  CinemaParadise
//
//  Created by GraceLilac on 2016. 5. 19..
//  Copyright © 2016년 GraceLilac. All rights reserved.
//

#import "HWPaymentViewController.h"

@interface HWPaymentViewController ()

@end

@implementation HWPaymentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupViewComponents];
    [self setupConstraints];

}

- (void)setupViewComponents {
    self.paymentView = [[UIView alloc] init];
    self.paymentView.backgroundColor = [UIColor colorWithRed:0.00 green:0.75 blue:0.65 alpha:1.00];
    self.paymentView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:self.paymentView];
    
    self.paymentMessage = [[UILabel alloc] init];
    self.paymentMessage.text = @"결재 완료되었습니다 :)";
    self.paymentMessage.textColor = [UIColor whiteColor];
    self.paymentMessage.font=[self.paymentMessage.font fontWithSize:33];
    self.paymentMessage.translatesAutoresizingMaskIntoConstraints = NO;
    [self.paymentView addSubview:self.paymentMessage];
}

- (void)setupConstraints {
    NSDictionary *views = @{
                            @"paymentView" : self.paymentView,
                            @"paymentMessage" : self.paymentMessage
                            };
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.view attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.paymentView attribute:NSLayoutAttributeLeft multiplier:1 constant:0]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.view attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self.paymentView attribute:NSLayoutAttributeRight multiplier:1 constant:0]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.view attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.paymentView attribute:NSLayoutAttributeTop multiplier:1 constant:0]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.view attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.paymentView attribute:NSLayoutAttributeBottom multiplier:1 constant:0]];
    
    [self.paymentView addConstraint:
     [NSLayoutConstraint constraintWithItem:self.paymentView attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.paymentMessage attribute:NSLayoutAttributeCenterY multiplier:1 constant:0]];
    
    [self.paymentView addConstraint:
     [NSLayoutConstraint constraintWithItem:self.paymentView attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.paymentMessage attribute:NSLayoutAttributeCenterX multiplier:1 constant:0]];
    
    
}

@end
