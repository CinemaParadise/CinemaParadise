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

- (IBAction)backButton:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)setupViewComponents {
    self.navigationView = [[UIView alloc] init];
    self.navigationView.backgroundColor = [UIColor redColor];
    self.navigationView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview: self.navigationView];
    
    self.backButton = [[UIButton alloc] init];
    [self.backButton setTitle:@"뒤로가기" forState:UIControlStateNormal];
    self.backButton.translatesAutoresizingMaskIntoConstraints = NO;
    [self.navigationView addSubview:self.backButton];
    
    self.titleLabel = [[UILabel alloc] init];
    self.titleLabel.text = @"표 검색";
    self.titleLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self.navigationView addSubview:self.titleLabel];
    
    
    self.scrollView = [[UIScrollView alloc] init];
    self.scrollView.backgroundColor = [UIColor greenColor];
    self.scrollView.contentSize =  CGSizeMake(320, 800);
    self.scrollView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:self.scrollView];

    
    self.view1 = [[UIView alloc] init];
    self.view1.backgroundColor = [UIColor orangeColor];
    self.view1.translatesAutoresizingMaskIntoConstraints = NO;
    [self.scrollView addSubview:self.view1];
    
    
    
}

- (void)setupConstraints {
    
    NSDictionary *views = @{
                            @"navigationView" : self.navigationView,
                            @"scrollView" : self.scrollView,
                            @"backButton" : self.backButton,
                            @"titleLabel" : self.titleLabel,
                            @"view1" : self.view1
                            };
    
    [self.view addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-0-[navigationView(==50)]-0-[scrollView]-0-|" options:0 metrics:nil views:views]];
    
    [self.view addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[navigationView]-0-|" options:0 metrics:nil views:views]];

    [self.view addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[scrollView]-0-|" options:0 metrics:nil views:views]];
    
    [self.navigationView addConstraint:
     [NSLayoutConstraint constraintWithItem:self.navigationView attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.backButton attribute:NSLayoutAttributeCenterY multiplier:1 constant:0]];
    
    [self.navigationView addConstraint:
     [NSLayoutConstraint constraintWithItem:self.navigationView attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.titleLabel attribute:NSLayoutAttributeCenterY multiplier:1 constant:0]];

    [self.navigationView addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-10-[backButton]" options:0 metrics:nil views:views]];

    [self.navigationView addConstraint:
     [NSLayoutConstraint constraintWithItem:self.navigationView attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.titleLabel attribute:NSLayoutAttributeCenterX multiplier:1 constant:0]];

    
    
    [self.scrollView addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-0-[view1(==50)]-0-|" options:0 metrics:nil views:views]];
    
    [self.scrollView addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[view1(==50)]-0-|" options:0 metrics:nil views:views]];
    
    
}

@end
