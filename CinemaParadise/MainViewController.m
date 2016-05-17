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
@property (nonatomic, strong) UILabel *presentingMessage1;
@property (nonatomic, strong) UILabel *presentingMessage2;
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
    
    
    self.presentingMessage1 = [[UILabel alloc] init];
    self.presentingMessage1.text = @"혜원님, 안녕하세요";
    self.presentingMessage1.font=[self.presentingMessage1.font fontWithSize:27];
    self.presentingMessage1.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:self.presentingMessage1];
    
    self.presentingMessage2 = [[UILabel alloc] init];
    self.presentingMessage2.text = @"최저가 영화 티켓 찾으러 가기!";
    self.presentingMessage2.font=[self.presentingMessage2.font fontWithSize:22];
    self.presentingMessage2.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:self.presentingMessage2];
    
    self.searchingButton = [[UIButton alloc] init];
    [self.searchingButton setImage:[UIImage imageNamed:@"search_btn"] forState:UIControlStateNormal];
    self.searchingButton.translatesAutoresizingMaskIntoConstraints = NO;
    [self.searchingButton addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    self.searchingButton.imageEdgeInsets = UIEdgeInsetsMake(114,114,114,114);

    [self.view addSubview:self.searchingButton];
    


}

- (void)setupConstraints {
    NSDictionary *views = @{
                            @"imageView" : self.posterImageView,
                            @"presentingMessage1" : self.presentingMessage1,
                            @"presentingMessage2" : self.presentingMessage2,
                            @"searchingButton" : self.searchingButton
                            };
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.view attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.posterImageView attribute:NSLayoutAttributeLeft multiplier:1 constant:0]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.view attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self.posterImageView attribute:NSLayoutAttributeRight multiplier:1 constant:0]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.view attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.posterImageView attribute:NSLayoutAttributeTop multiplier:1 constant:0]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.posterImageView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:450]];
    
    
    /* present message */
    
    [self.view addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-35-[presentingMessage1]" options:0 metrics:nil views:views]];
    
    [self.view addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"V:[imageView]-35-[presentingMessage1]" options:0 metrics:nil views:views]];
    
    
    [self.view addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-35-[presentingMessage2]" options:0 metrics:nil views:views]];
    
    [self.view addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"V:[presentingMessage1]-10-[presentingMessage2]" options:0 metrics:nil views:views]];
    

    /* searching button */
    
    [self.view addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"V:[presentingMessage2][searchingButton(==100)]" options:0 metrics:nil views:views]];
    
    [self.view addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:[searchingButton(==100)]-30-|" options:0 metrics:nil views:views]];
    

    
}

- (void)buttonClicked:(UIButton*)sender
{
    SearchingViewController *controler = [[SearchingViewController alloc] init];
    [self presentViewController:controler animated:YES completion:nil];
}



@end
