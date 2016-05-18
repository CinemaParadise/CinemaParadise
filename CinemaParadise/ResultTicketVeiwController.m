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
    self.navigationView = [[UIView alloc] init];
    [self.navigationView  setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"pattern"]]];
    self.navigationView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview: self.navigationView];
    
    
    self.tableView = [[UITableView alloc] init];
    self.tableView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.tableView setDelegate:self];
    [self.tableView setDataSource:self];
    [self.view addSubview:self.tableView];
    
    self.content = @[
                     [[HWTicket alloc] initWithTitle:@"영화 제목" selectedValue:@"캡틴 아메리카: 시빌 워"],
                     [[HWTicket alloc] initWithTitle:@"영화관" selectedValue:@"CGV / 경기 / 야탑"],
                     [[HWTicket alloc] initWithTitle:@"날짜" selectedValue:@"2016.06.01"],
                     [[HWTicket alloc] initWithTitle:@"티켓 수량" selectedValue:@"2"],
                     [[HWTicket alloc] initWithTitle:@"영화 타입" selectedValue:@"3D"],
                     ];


}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.content count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier = @"Cell";
    
    HWTicketTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    if (cell == nil) {
        cell = [[HWTicketTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    
    HWTicket *ticketCategory = self.content[indexPath.row];
    cell.title.text = ticketCategory.title;
    cell.selectedValue.text = ticketCategory.selectedValue;
        
    return cell;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 44;
}


- (void)setupConstraints {
    NSDictionary *views = @{
                            @"navigationView" : self.navigationView,
                            @"tableView" : self.tableView
                            };

    
    [self.view addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[navigationView(==90)]-20-[tableView]|" options:0 metrics:nil views:views]];
    
    [self.view addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[navigationView]-0-|" options:0 metrics:nil views:views]];
    
    [self.view addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[tableView]-0-|" options:0 metrics:nil views:views]];}




@end
