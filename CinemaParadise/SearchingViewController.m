//
//  SearchingViewController.m
//  CinemaParadise
//
//  Created by GraceLilac on 2016. 5. 13..
//  Copyright © 2016년 GraceLilac. All rights reserved.
//

#import "SearchingViewController.h"

@interface SearchingViewController ()

@end

@implementation SearchingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupViewComponents];
    [self setupConstraints];
}

- (void)setupViewComponents {
    self.navigationView = [[UIView alloc] init];
    self.navigationView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview: self.navigationView];
    
    self.backButton = [[UIButton alloc] init];
    [self.backButton setImage:[UIImage imageNamed:@"arrows"] forState:UIControlStateNormal];
    
    self.backButton.translatesAutoresizingMaskIntoConstraints = NO;
    [self.navigationView addSubview:self.backButton];
    
    self.titleLabel = [[UILabel alloc] init];
    self.titleLabel.text = @"티켓 검색";
    self.titleLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self.navigationView addSubview:self.titleLabel];
    
    self.scrollView = [[UIScrollView alloc] init];
    self.scrollView.backgroundColor = [UIColor colorWithRed:0.96 green:0.96 blue:0.96 alpha:1.00];
    self.scrollView.contentSize =  CGSizeMake(320, 800);
    self.scrollView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:self.scrollView];

    
    self.titleView = [[UIView alloc] init];
    self.titleView.backgroundColor = [UIColor whiteColor];
    self.titleView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.scrollView addSubview:self.titleView];
    
    
    
}

- (void)setupConstraints {
    
    NSDictionary *views = @{
                            @"navigationView" : self.navigationView,
                            @"scrollView" : self.scrollView,
                            @"backButton" : self.backButton,
                            @"titleLabel" : self.titleLabel,
                            @"titleView" : self.titleView
                            };
    
    [self.view addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-0-[navigationView(==60)]-0-[scrollView]-0-|" options:0 metrics:nil views:views]];
    
    [self.view addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[navigationView]-0-|" options:0 metrics:nil views:views]];

    [self.view addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[scrollView]-0-|" options:0 metrics:nil views:views]];
    
    [self.navigationView addConstraint:
     [NSLayoutConstraint constraintWithItem:self.navigationView attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.backButton attribute:NSLayoutAttributeCenterY multiplier:1 constant:0]];
    
    [self.navigationView addConstraint:
     [NSLayoutConstraint constraintWithItem:self.navigationView attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.titleLabel attribute:NSLayoutAttributeCenterY multiplier:1 constant:0]];

    [self.navigationView addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"V:[backButton(==30)]" options:0 metrics:nil views:views]];
    
    [self.navigationView addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-15-[backButton(==30)]" options:0 metrics:nil views:views]];

    [self.navigationView addConstraint:
     [NSLayoutConstraint constraintWithItem:self.navigationView attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.titleLabel attribute:NSLayoutAttributeCenterX multiplier:1 constant:0]];

    
    [self.scrollView addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-0-[titleView(==50)]-0-|" options:0 metrics:nil views:views]];
    
    [self.scrollView addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[titleView(==50)]-0-|" options:0 metrics:nil views:views]];
}



@end
