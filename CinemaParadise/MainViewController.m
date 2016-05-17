//
//  MainViewController.m
//  CinemaParadise
//
//  Created by GraceLilac on 2016. 5. 11..
//  Copyright © 2016년 GraceLilac. All rights reserved.
//

#import "MainViewController.h"
#import "SearchingViewController.h"

@interface MainViewController ()

@property (nonatomic, strong) UIImageView *posterImageView;
@property (nonatomic, strong) UILabel *presentingMessage;
@property (strong, nonatomic) UIButton *searchingButton;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    
    [self setupViewComponents];
    [self setupConstraints];
}

- (void)setupViewComponents {
    self.posterImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
    self.posterImageView.image = [UIImage imageNamed:@"Civil_War"];
    self.posterImageView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:self.posterImageView];
    
    self.presentingMessage = [[UILabel alloc] init];
    self.presentingMessage.text = @"최저가 영화 티켓 찾으러 가기!";
    self.presentingMessage.font=[self.presentingMessage.font fontWithSize:25];
    self.presentingMessage.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:self.presentingMessage];
    
    self.searchingButton = [[UIButton alloc] init];
    [self.searchingButton setImage:[UIImage imageNamed:@"search_btn"] forState:UIControlStateNormal];
    self.searchingButton.translatesAutoresizingMaskIntoConstraints = NO;
    [self.searchingButton addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    self.searchingButton.imageEdgeInsets = UIEdgeInsetsMake(110,110,110,110);

    [self.view addSubview:self.searchingButton];
    


}

- (void)setupConstraints {
    NSDictionary *views = @{
                            @"imageView" : self.posterImageView,
                            @"presentingMessage" : self.presentingMessage,
                            @"searchingButton" : self.searchingButton
                            };
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.view attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.posterImageView attribute:NSLayoutAttributeLeft multiplier:1 constant:0]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.view attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self.posterImageView attribute:NSLayoutAttributeRight multiplier:1 constant:0]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.view attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.posterImageView attribute:NSLayoutAttributeTop multiplier:1 constant:0]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.posterImageView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:450]];
    
    
    [self.view addConstraint:
     [NSLayoutConstraint constraintWithItem:self.view attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.presentingMessage attribute:NSLayoutAttributeCenterX multiplier:1 constant:0]];
    
    [self.view addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"V:[imageView]-30-[presentingMessage(==35)]" options:0 metrics:nil views:views]];
    

    
    [self.view addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"V:[presentingMessage]-20-[searchingButton(==100)]" options:0 metrics:nil views:views]];
    
    [self.view addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:[searchingButton(==100)]-25-|" options:0 metrics:nil views:views]];
    

    
}

- (void)buttonClicked:(UIButton*)sender
{
    SearchingViewController *controler = [[SearchingViewController alloc] init];
    [self presentViewController:controler animated:YES completion:nil];
}



@end
