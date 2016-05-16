//
//  SearchingViewController.h
//  CinemaParadise
//
//  Created by GraceLilac on 2016. 5. 13..
//  Copyright © 2016년 GraceLilac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SearchingViewController : UIViewController

@property (nonatomic, strong) UIView *navigationView;
@property (nonatomic, strong) UIButton *backButton;
@property (nonatomic, strong) UILabel *titleLabel;

@property (strong, nonatomic) UIScrollView *scrollView;
@property (strong, nonatomic) UIView *titleView;
@property (strong, nonatomic) UIView *theaterView;
@property (strong, nonatomic) UIView *viewingDayView;
@property (strong, nonatomic) UIView *ticketCountView;
@property (strong, nonatomic) UIView *movieTypeView;


@property (nonatomic, strong) UIButton *checkButton;

- (IBAction)backButton:(id)sender;


@end
