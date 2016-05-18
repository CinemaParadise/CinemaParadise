//
//  ResultTicketVeiwController.m
//  CinemaParadise
//
//  Created by GraceLilac on 2016. 5. 18..
//  Copyright © 2016년 GraceLilac. All rights reserved.
//

#import "ResultTicketVeiwController.h"
#import "HWTicket.h"
#import "HWTicketTableViewCell.h"

@interface ResultTicketVeiwController ()

@end

@implementation ResultTicketVeiwController

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
    self.movieTitleLabel.text = @"영화 제목";
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

}




- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 44;
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
                            @"movieTypeValueLabel" : self.movieTypeValueLabel
                            };
    
    [self.view addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[navigationView(==90)][ticketInfoView]|" options:0 metrics:nil views:views]];
    
    [self.view addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[navigationView]-0-|" options:0 metrics:nil views:views]];
    
    [self.view addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[ticketInfoView]-0-|" options:0 metrics:nil views:views]];


    /* ticketInfoView*/

    [self.ticketInfoView addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-40-[movieTitleLabel(==24)]-15-[movieTheaterLabel(==24)]-15-[movieVeiwingDayLabel(==24)]-15-[movieTicketCountLabel(==24)]-15-[movieTypeLabel(==24)]-15-|"
                                         options:0
                                         metrics:nil
                                           views:views]];

    [self.ticketInfoView addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-40-[movieTitleLabel]"
                                         options:0
                                         metrics:nil
                                           views:views]];

    [self.ticketInfoView addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-40-[movieTitleValueLabel(==24)]-15-[movieTheaterValueLabel(==24)]-15-[movieVeiwingDayValueLabel(==24)]-15-[movieTicketCountValueLabel(==24)]-15-[movieTypeValueLabel(==24)]-15-|"
                                         options:0
                                         metrics:nil
                                           views:views]];

    [self.ticketInfoView addConstraints:
    [NSLayoutConstraint constraintsWithVisualFormat:@"H:[movieTitleValueLabel]-40-|"
                                         options:0
                                         metrics:nil
                                           views:views]];



    [self.ticketInfoView addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-40-[movieTheaterLabel]"
                                         options:0
                                         metrics:nil
                                           views:views]];
   
    [self.ticketInfoView addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:[movieTheaterValueLabel]-40-|"
                                         options:0
                                         metrics:nil
                                           views:views]];

    [self.ticketInfoView addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-40-[movieVeiwingDayLabel]"
                                         options:0
                                         metrics:nil
                                           views:views]];

    [self.ticketInfoView addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:[movieVeiwingDayValueLabel]-40-|"
                                         options:0
                                         metrics:nil
                                           views:views]];

    [self.ticketInfoView addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-40-[movieTicketCountLabel]"
                                         options:0
                                         metrics:nil
                                           views:views]];


    [self.ticketInfoView addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:[movieTicketCountValueLabel]-40-|"
                                         options:0
                                         metrics:nil
                                           views:views]];

    [self.ticketInfoView addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-40-[movieTypeLabel]"
                                         options:0
                                         metrics:nil
                                           views:views]];

    [self.ticketInfoView addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:[movieTypeValueLabel]-40-|"
                                         options:0
                                         metrics:nil
                                           views:views]];
}


@end
