//
//  SearchingViewController.m
//  CinemaParadise
//
//  Created by GraceLilac on 2016. 5. 13..
//  Copyright © 2016년 GraceLilac. All rights reserved.
//

#import "SearchingViewController.h"
#import "HWSearchingTableViewCell.h"
#import "HWSearchingCategory.h"

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
    
    
    self.tableView = [[UITableView alloc] init];
    self.tableView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.tableView setDelegate:self];
    [self.tableView setDataSource:self];
    
    [self.view addSubview:self.tableView];
    
    self.content = @[
                     [[HWSearchingCategory alloc] initWithTitle:@"영화 제목" buttonTitle:@"선택"],
                     [[HWSearchingCategory alloc] initWithTitle:@"영화관" buttonTitle:@"선택"],
                     [[HWSearchingCategory alloc] initWithTitle:@"날짜" buttonTitle:@"선택"],
                     [[HWSearchingCategory alloc] initWithTitle:@"티켓 수량" buttonTitle:@"선택"],
                     [[HWSearchingCategory alloc] initWithTitle:@"영화 타입" buttonTitle:@"선택"],
                     ];
    
    self.checkButton = [[UIButton alloc] init];
    self.checkButton.backgroundColor = [UIColor blackColor];
    [self.checkButton setTitle:@"티켓 찾기" forState:UIControlStateNormal];
    [self.checkButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.checkButton.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:self.checkButton];

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.content count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier = @"Cell";
    
    HWSearchingTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    if (cell == nil) {
        cell = [[HWSearchingTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    
    HWSearchingCategory *searchingCategory = self.content[indexPath.row];
    cell.title.text = searchingCategory.title;
    cell.selectedOptionLabel.text = searchingCategory.selectedOption;
    [cell.button setTitle:searchingCategory.buttonTitle forState:UIControlStateNormal];
    
    return cell;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 140;
}


- (void)setupConstraints {
    
    NSDictionary *views = @{
                            @"navigationView" : self.navigationView,
                            @"tableView" : self.tableView,
                            @"backButton" : self.backButton,
                            @"titleLabel" : self.titleLabel,
                            @"checkButton" : self.checkButton
                            };
    
    [self.view addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[navigationView(==60)][tableView][checkButton(==60)]|" options:0 metrics:nil views:views]];
    
    [self.view addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[navigationView]-0-|" options:0 metrics:nil views:views]];

    [self.view addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[tableView]-0-|" options:0 metrics:nil views:views]];
    
    [self.navigationView addConstraint:
     [NSLayoutConstraint constraintWithItem:self.navigationView attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.backButton attribute:NSLayoutAttributeCenterY multiplier:1 constant:0]];
    
    [self.navigationView addConstraint:
     [NSLayoutConstraint constraintWithItem:self.navigationView attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.titleLabel attribute:NSLayoutAttributeCenterY multiplier:1 constant:0]];

    [self.navigationView addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"V:[backButton(==25)]" options:0 metrics:nil views:views]];
    
    [self.navigationView addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-15-[backButton(==25)]" options:0 metrics:nil views:views]];

    [self.navigationView addConstraint:
     [NSLayoutConstraint constraintWithItem:self.navigationView attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.titleLabel attribute:NSLayoutAttributeCenterX multiplier:1 constant:0]];

    
//    /* titleVeiw constraint */
//    
//    [self.tableView addConstraint:
//     [NSLayoutConstraint constraintWithItem:self.tableView attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.titleView attribute:NSLayoutAttributeCenterX multiplier:1 constant:0]];
//    
//    [self.tableView addConstraints:
//     [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-20-[titleView]-20-|" options:0 metrics:nil views:views]];
//    
//    [self.tableView addConstraints:
//     [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-20-[titleView(==100)]-10-|" options:0 metrics:nil views:views]];
//
//    
//    /* theaterView constraint */
//    
//    [self.tableView addConstraint:
//     [NSLayoutConstraint constraintWithItem:self.tableView attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.theaterView attribute:NSLayoutAttributeCenterX multiplier:1 constant:0]];
//    
//    [self.tableView addConstraints:
//     [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-20-[theaterView]-20-|" options:0 metrics:nil views:views]];
//    
//    [self.tableView addConstraints:
//     [NSLayoutConstraint constraintsWithVisualFormat:@"V:[titleView]-20-[theaterView(==100)]" options:0 metrics:nil views:views]];
//    
//    /* viewingDayView constraint */
//    
//    [self.tableView addConstraint:
//     [NSLayoutConstraint constraintWithItem:self.tableView attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.viewingDayView attribute:NSLayoutAttributeCenterX multiplier:1 constant:0]];
//    
//    [self.tableView addConstraints:
//     [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-20-[viewingDayView]-20-|" options:0 metrics:nil views:views]];
//    
//    [self.tableView addConstraints:
//     [NSLayoutConstraint constraintsWithVisualFormat:@"V:[theaterView]-20-[viewingDayView(==100)]" options:0 metrics:nil views:views]];
//
//    
//    
//    /* ticketCountView constraint */
//    
//    [self.tableView addConstraint:
//     [NSLayoutConstraint constraintWithItem:self.tableView attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.ticketCountView attribute:NSLayoutAttributeCenterX multiplier:1 constant:0]];
//    
//    [self.tableView addConstraints:
//     [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-20-[ticketCountView]-20-|" options:0 metrics:nil views:views]];
//    
//    [self.tableView addConstraints:
//     [NSLayoutConstraint constraintsWithVisualFormat:@"V:[viewingDayView]-20-[ticketCountView(==100)]" options:0 metrics:nil views:views]];
//    
//    
//    /* movieTypeView constraint */
//    
//    [self.tableView addConstraint:
//     [NSLayoutConstraint constraintWithItem:self.tableView attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.movieTypeView attribute:NSLayoutAttributeCenterX multiplier:1 constant:0]];
//    
//    [self.tableView addConstraints:
//     [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-20-[movieTypeView]-20-|" options:0 metrics:nil views:views]];
//    
//    [self.tableView addConstraints:
//     [NSLayoutConstraint constraintsWithVisualFormat:@"V:[ticketCountView]-20-[movieTypeView(==100)]" options:0 metrics:nil views:views]];

    
    /* checkButton constraint */
    
    [self.view addConstraint:
     [NSLayoutConstraint constraintWithItem:self.view attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.checkButton attribute:NSLayoutAttributeCenterX multiplier:1 constant:0]];
    
    [self.view addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[checkButton]-0-|" options:0 metrics:nil views:views]];

}



@end
