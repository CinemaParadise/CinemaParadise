//
//  ResultTicketVeiwController.m
//  CinemaParadise
//
//  Created by GraceLilac on 2016. 5. 18..
//  Copyright © 2016년 GraceLilac. All rights reserved.
//

#import "HWResultTicketVeiwController.h"
#import "HWTicket.h"
#import "HWPaymentViewController.h"

@interface HWResultTicketVeiwController ()

@end

@implementation HWResultTicketVeiwController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupViewComponents];
    [self setupConstraints];
}

- (void)setupViewComponents {
    /* navigation view */
    self.navigationView = [[UIView alloc] init];
    [self.navigationView  setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"pattern"]]];
    self.navigationView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview: self.navigationView];
    
    
    /* ticket info view */
    self.ticketInfoView = [[UIView alloc] init];
    self.ticketInfoView.backgroundColor = [UIColor whiteColor];
    self.ticketInfoView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:self.ticketInfoView];
    
    HWTicket *ticket = [[HWTicket alloc] init];
    
    self.movieTitleLabel = [[UILabel alloc] init];
    self.movieTitleLabel.font=[self.movieTitleLabel.font fontWithSize:23];
    self.movieTitleLabel.text = @"영화명";
    self.movieTitleLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self.ticketInfoView addSubview:self.movieTitleLabel];

    self.movieTitleValueLabel = [[UILabel alloc] init];
    self.movieTitleValueLabel.font=[self.movieTitleValueLabel.font fontWithSize:23];
    self.movieTitleValueLabel.text = ticket.movieTitle;
    self.movieTitleValueLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self.ticketInfoView addSubview:self.movieTitleValueLabel];
    
    
    self.movieTheaterLabel = [[UILabel alloc] init];
    self.movieTheaterLabel.font=[self.movieTheaterLabel.font fontWithSize:23];
    self.movieTheaterLabel.text = @"영화관";
    self.movieTheaterLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self.ticketInfoView addSubview:self.movieTheaterLabel];
    
    self.movieTheaterValueLabel = [[UILabel alloc] init];
    self.movieTheaterValueLabel.font=[self.movieTheaterValueLabel.font fontWithSize:23];
    self.movieTheaterValueLabel.text = ticket.movieTheater;
    self.movieTheaterValueLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self.ticketInfoView addSubview:self.movieTheaterValueLabel];
    
    self.movieVeiwingDayLabel = [[UILabel alloc] init];
    self.movieVeiwingDayLabel.font=[self.movieVeiwingDayLabel.font fontWithSize:23];
    self.movieVeiwingDayLabel.text = @"날짜";
    self.movieVeiwingDayLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self.ticketInfoView addSubview:self.movieVeiwingDayLabel];
    
    self.movieVeiwingDayValueLabel = [[UILabel alloc] init];
    self.movieVeiwingDayValueLabel.font=[self.movieVeiwingDayValueLabel.font fontWithSize:23];
    self.movieVeiwingDayValueLabel.text = ticket.movieVeiwingDay;
    self.movieVeiwingDayValueLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self.ticketInfoView addSubview:self.movieVeiwingDayValueLabel];
    
    self.movieTicketCountLabel = [[UILabel alloc] init];
    self.movieTicketCountLabel.font=[self.movieTicketCountLabel.font fontWithSize:23];
    self.movieTicketCountLabel.text = @"티켓 수량";
    self.movieTicketCountLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self.ticketInfoView addSubview:self.movieTicketCountLabel];
    
    self.movieTicketCountValueLabel = [[UILabel alloc] init];
    self.movieTicketCountValueLabel.font=[self.movieTicketCountValueLabel.font fontWithSize:23];
    self.movieTicketCountValueLabel.text = ticket.movieTicketCount;
    self.movieTicketCountValueLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self.ticketInfoView addSubview:self.movieTicketCountValueLabel];
    
    self.movieTypeLabel = [[UILabel alloc] init];
    self.movieTypeLabel.font=[self.movieTypeLabel.font fontWithSize:23];
    self.movieTypeLabel.text = @"영화 타입";
    self.movieTypeLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self.ticketInfoView addSubview:self.movieTypeLabel];
    
    self.movieTypeValueLabel = [[UILabel alloc] init];
    self.movieTypeValueLabel.font=[self.movieTypeValueLabel.font fontWithSize:23];
    self.movieTypeValueLabel.text = ticket.movieType;
    self.movieTypeValueLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self.ticketInfoView addSubview:self.movieTypeValueLabel];
    
   
    /* under line */
    self.underBorder = [[UIView alloc] init];
    self.underBorder.backgroundColor = [UIColor blackColor];
    self.underBorder.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:self.underBorder];
    
    /* ticketSellerInfoView */
    
    self.ticketSellerInfoView = [[UIView alloc] init];
    self.ticketSellerInfoView.backgroundColor = [UIColor whiteColor];
    self.ticketSellerInfoView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:self.ticketSellerInfoView];
    
    self.sellerIdLabel = [[UILabel alloc] init];
    self.sellerIdLabel.font=[self.sellerIdLabel.font fontWithSize:23];
    self.sellerIdLabel.text = @"판매자 ID";
    self.sellerIdLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self.ticketSellerInfoView addSubview:self.sellerIdLabel];
    
    self.sellerIdValueLabel = [[UILabel alloc] init];
    self.sellerIdValueLabel.font=[self.sellerIdValueLabel.font fontWithSize:23];
    self.sellerIdValueLabel.text = ticket.sellerId;
    self.sellerIdValueLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self.ticketSellerInfoView addSubview:self.sellerIdValueLabel];
    
    self.priceLabel = [[UILabel alloc] init];
    self.priceLabel.font=[self.priceLabel.font fontWithSize:23];
    self.priceLabel.text = @"가격";
    self.priceLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self.ticketSellerInfoView addSubview:self.priceLabel];
    
    self.priceValueLabel = [[UILabel alloc] init];
    self.priceValueLabel.font=[self.priceValueLabel.font fontWithSize:23];
    self.priceValueLabel.text = ticket.price;
    self.priceValueLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self.ticketSellerInfoView addSubview:self.priceValueLabel];
    
   
    self.descriptionValueLabel = [[UILabel alloc] init];
    self.descriptionValueLabel.font=[self.descriptionValueLabel.font fontWithSize:23];
    self.descriptionValueLabel.text = ticket.descriptionText;
//    self.descriptionValueLabel.backgroundColor = [UIColor colorWithRed:0.96 green:0.96 blue:0.96 alpha:1.00];
    [self.descriptionValueLabel setNumberOfLines:0];
    [self.descriptionValueLabel setLineBreakMode:UILineBreakModeWordWrap];
    
    self.descriptionValueLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self.ticketSellerInfoView addSubview:self.descriptionValueLabel];


    /* buy button */
    
    self.buyButton = [[UIButton alloc] init];
    self.buyButton.backgroundColor = [UIColor blackColor];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.buyButton setTitle:@"티켓 결재 하기" forState:UIControlStateNormal];
    [self.buyButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.buyButton addTarget:self action:@selector(buyButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    self.buyButton.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:self.buyButton];
    
}


- (void)setupConstraints {
    NSDictionary *views = @{
                            @"navigationView" : self.navigationView,
                            @"ticketInfoView" : self.ticketInfoView,
                            @"movieTitleLabel" : self.movieTitleLabel,
                            @"movieTitleValueLabel" : self.movieTitleValueLabel,
                            @"movieTheaterLabel" : self.movieTheaterLabel,
                            @"movieTheaterValueLabel" : self.movieTheaterValueLabel,
                            @"movieVeiwingDayLabel" : self.movieVeiwingDayLabel,
                            @"movieVeiwingDayValueLabel" : self.movieVeiwingDayValueLabel,
                            @"movieTicketCountLabel" : self.movieTicketCountLabel,
                            @"movieTicketCountValueLabel" : self.movieTicketCountValueLabel,
                            @"movieTypeLabel" : self.movieTypeLabel,
                            @"movieTypeValueLabel" : self.movieTypeValueLabel,
                            @"underBorder" : self.underBorder,
                            @"ticketSellerInfoView" : self.ticketSellerInfoView,
                            @"sellerIdLabel" : self.sellerIdLabel,
                            @"sellerIdValueLabel" : self.sellerIdValueLabel,
                            @"priceLabel" : self.priceLabel,
                            @"priceValueLabel" : self.priceValueLabel,
                            @"descriptionValueLabel" : self.descriptionValueLabel
                            ,@"buyButton" : self.buyButton
                            };
    
    
    [self.view addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[navigationView(==90)][ticketInfoView(==230)]-15-[underBorder(==2)][ticketSellerInfoView]-15-[buyButton(==60)]-10-|" options:0 metrics:nil views:views]];
    
    [self.view addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[navigationView]-0-|" options:0 metrics:nil views:views]];
    
    [self.view addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[ticketInfoView]-0-|" options:0 metrics:nil views:views]];
    
    [self.view addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[ticketSellerInfoView]-0-|" options:0 metrics:nil views:views]];
    

    /* ticketInfoView*/

    [self.ticketInfoView addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-35-[movieTitleLabel(==24)]-15-[movieTheaterLabel(==24)]-15-[movieVeiwingDayLabel(==24)]-15-[movieTicketCountLabel(==24)]-15-[movieTypeLabel(==24)]"
                                         options:0
                                         metrics:nil
                                           views:views]];

    [self.ticketInfoView addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-35-[movieTitleLabel]"
                                         options:0
                                         metrics:nil
                                           views:views]];

    [self.ticketInfoView addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-35-[movieTitleValueLabel(==24)]-15-[movieTheaterValueLabel(==24)]-15-[movieVeiwingDayValueLabel(==24)]-15-[movieTicketCountValueLabel(==24)]-15-[movieTypeValueLabel(==24)]"
                                         options:0
                                         metrics:nil
                                           views:views]];

    [self.ticketInfoView addConstraints:
    [NSLayoutConstraint constraintsWithVisualFormat:@"H:[movieTitleValueLabel]-35-|"
                                         options:0
                                         metrics:nil
                                           views:views]];


    [self.ticketInfoView addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-35-[movieTheaterLabel]"
                                         options:0
                                         metrics:nil
                                           views:views]];
   
    [self.ticketInfoView addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:[movieTheaterValueLabel]-35-|"
                                         options:0
                                         metrics:nil
                                           views:views]];

    [self.ticketInfoView addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-35-[movieVeiwingDayLabel]"
                                         options:0
                                         metrics:nil
                                           views:views]];

    [self.ticketInfoView addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:[movieVeiwingDayValueLabel]-35-|"
                                         options:0
                                         metrics:nil
                                           views:views]];

    [self.ticketInfoView addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-35-[movieTicketCountLabel]"
                                         options:0
                                         metrics:nil
                                           views:views]];


    [self.ticketInfoView addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:[movieTicketCountValueLabel]-35-|"
                                         options:0
                                         metrics:nil
                                           views:views]];

    [self.ticketInfoView addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-35-[movieTypeLabel]"
                                         options:0
                                         metrics:nil
                                           views:views]];

    [self.ticketInfoView addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:[movieTypeValueLabel]-35-|"
                                         options:0
                                         metrics:nil
                                           views:views]];

    [self.view addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-15-[underBorder]-15-|"
                                             options:0
                                             metrics:nil
                                               views:views]];


    /* seller info */
    
    [self.ticketSellerInfoView addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-20-[sellerIdLabel(==24)]-15-[priceLabel(==24)]-15-[descriptionValueLabel]|"
                                             options:0
                                             metrics:nil
                                               views:views]];
    
    [self.ticketSellerInfoView addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-35-[sellerIdLabel]"
                                             options:0
                                             metrics:nil
                                               views:views]];
    
    [self.ticketSellerInfoView addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-20-[sellerIdValueLabel(==24)]-15-[priceValueLabel(==24)]-15-[descriptionValueLabel]|"
                                             options:0
                                             metrics:nil
                                               views:views]];
    
    [self.ticketSellerInfoView addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:[sellerIdValueLabel]-35-|"
                                             options:0
                                             metrics:nil
                                               views:views]];
    
    [self.ticketSellerInfoView addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-35-[priceLabel]"
                                             options:0
                                             metrics:nil
                                               views:views]];
    
    [self.ticketSellerInfoView addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:[priceValueLabel]-35-|"
                                             options:0
                                             metrics:nil
                                               views:views]];
    
    [self.ticketSellerInfoView addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-25-[descriptionValueLabel]-25-|" options:0 metrics:nil views:views]];

    
    [self.view addConstraint:
    [NSLayoutConstraint constraintWithItem:self.view attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.buyButton attribute:NSLayoutAttributeCenterX multiplier:1 constant:0]];
    
    [self.view addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-10-[buyButton]-10-|" options:0 metrics:nil views:views]];
}

- (void) buyButtonClicked:(UIButton*)sender
{
    HWPaymentViewController *controler = [[HWPaymentViewController alloc] init];
    [self presentViewController:controler animated:YES completion:nil];
}


@end
