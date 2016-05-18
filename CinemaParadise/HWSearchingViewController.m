//
//  SearchingViewController.m
//  CinemaParadise
//
//  Created by GraceLilac on 2016. 5. 13..
//  Copyright © 2016년 GraceLilac. All rights reserved.
//

#import "HWSearchingViewController.h"
#import "HWSearchingTableViewCell.h"
#import "HWSearchingCategory.h"
#import "HWResultTicketVeiwController.h"

@interface HWSearchingViewController ()

@end

@implementation HWSearchingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupViewComponents];
    [self setupConstraints];
}

- (void)setupViewComponents {
    self.navigationView = [[UIView alloc] init];
    self.navigationView.backgroundColor = [UIColor whiteColor];
    self.navigationView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview: self.navigationView];
    
    self.backButton = [[UIButton alloc] init];
    [self.backButton setImage:[UIImage imageNamed:@"arrows"] forState:UIControlStateNormal];
    [self.backButton addTarget:self action:@selector(backButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
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
    
    [self.tableView setSeparatorStyle:UITableViewCellSeparatorStyleSingleLine];
    [self.tableView setSeparatorColor:[UIColor blackColor]];

    
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
    [self.checkButton addTarget:self action:@selector(checkButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    self.checkButton.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:self.checkButton];
    
    
    /* alert */
    self.alert = [[UIAlertView alloc]initWithTitle:nil message:@"검색된 23개의 티켓 중\n최저가 티켓 보러 가기!"
                                          delegate:self cancelButtonTitle:@"취소" otherButtonTitles:@"확인", nil];

//    int abc = 5;
//    UIView *view = [[UIView alloc] init];
//    
//    __weak typeof(self) weakSelf = self;
//    [self presentViewController:[[HWSearchingViewController alloc] init] animated:YES completion:^(void){
//        int cdf = abc;
//        UIView *afsd = view;
//        
//        weakSelf.checkButton = [[UIButton alloc] init];
//    }];
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
    [cell.button setTitleColor:[UIColor colorWithRed:0.00 green:0.54 blue:0.48 alpha:1.00] forState:UIControlStateNormal];
    
    return cell;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 200;
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
     [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[navigationView(==80)][tableView][checkButton(==60)]|" options:0 metrics:nil views:views]];
    
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

       
    /* checkButton constraint */
    
    [self.view addConstraint:
     [NSLayoutConstraint constraintWithItem:self.view attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.checkButton attribute:NSLayoutAttributeCenterX multiplier:1 constant:0]];
    
    [self.view addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[checkButton]-0-|" options:0 metrics:nil views:views]];

}

- (void)backButtonClicked:(UIButton*)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}



- (void)checkButtonClicked:(UIButton*)sender {
    [self.alert show];
}

- (void)alertView:(UIAlertController *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    if (buttonIndex == 1) {
        HWResultTicketVeiwController *controler = [[HWResultTicketVeiwController alloc] init];
        [self presentViewController:controler animated:YES completion:nil];
    }
    else {
        
    }
}



@end
