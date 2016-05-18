//
//  ResultTicketVeiwController.h
//  CinemaParadise
//
//  Created by GraceLilac on 2016. 5. 18..
//  Copyright © 2016년 GraceLilac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ResultTicketVeiwController :UIViewController<UITableViewDelegate, UITableViewDataSource>


@property (nonatomic, strong) UIView *navigationView;
@property (nonatomic, strong) UITableView *tableView;
@property (strong,nonatomic) NSArray *content;
@property (strong,nonatomic) UITableViewCell *cell;

@end
