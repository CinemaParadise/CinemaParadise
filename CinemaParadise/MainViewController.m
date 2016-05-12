//
//  MainViewController.m
//  CinemaParadise
//
//  Created by GraceLilac on 2016. 5. 11..
//  Copyright © 2016년 GraceLilac. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@property (nonatomic, strong) UIImageView *posterImageView;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    self.posterImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
    self.posterImageView.image = [UIImage imageNamed:@"movie_image"];
    
    [self.view addSubview:self.posterImageView];
    
    [self setupConstraints];
}

- (void)setupConstraints {
    NSDictionary *views = @{@"imageView" : _posterImageView};
    
    self.posterImageView.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.view attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.posterImageView attribute:NSLayoutAttributeLeft multiplier:1 constant:0]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.view attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self.posterImageView attribute:NSLayoutAttributeRight multiplier:1 constant:0]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.view attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.posterImageView attribute:NSLayoutAttributeTop multiplier:1 constant:0]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.posterImageView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:450]];
}



@end
