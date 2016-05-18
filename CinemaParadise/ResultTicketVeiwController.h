//
//  ResultTicketVeiwController.h
//  CinemaParadise
//
//  Created by GraceLilac on 2016. 5. 18..
//  Copyright © 2016년 GraceLilac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ResultTicketVeiwController :UIViewController


@property (nonatomic, strong) UIView *navigationView;
@property (nonatomic, strong) UIView *ticketInfoView;

@property (nonatomic, strong) UILabel *movieTitleLabel;
@property (nonatomic, strong) UILabel *movieTitleValueLabel;
@property (nonatomic, strong) UILabel *movieTheaterLabel;
@property (nonatomic, strong) UILabel *movieTheaterValueLabel;
@property (nonatomic, strong) UILabel *movieVeiwingDayLabel;
@property (nonatomic, strong) UILabel *movieVeiwingDayValueLabel;
@property (nonatomic, strong) UILabel *movieTicketCountLabel;
@property (nonatomic, strong) UILabel *movieTicketCountValueLabel;
@property (nonatomic, strong) UILabel *movieTypeLabel;
@property (nonatomic, strong) UILabel *movieTypeValueLabel;
@property (nonatomic, strong) UILabel *sellerIdLabel;
@property (nonatomic, strong) UILabel *sellerIdValueLabel;
@property (nonatomic, strong) UILabel *priceLabel;
@property (nonatomic, strong) UILabel *priceValueLabel;
//@property (nonatomic, strong) UILabel *descriptionLabel;
@property (nonatomic, strong) UILabel *descriptionValueLabel;

@property (nonatomic, strong) UIView *ticketSellerInfoView;
@property (nonatomic, strong) UIButton *buyButton;

@property (nonatomic, strong) UIView *underBorder;


//@property (nonatomic, strong) UITableView *tableView;
//@property (strong,nonatomic) NSArray *content;
//@property (strong,nonatomic) UITableViewCell *cell;

@end
