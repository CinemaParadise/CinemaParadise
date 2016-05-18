//
//  HWTicket.h
//  CinemaParadise
//
//  Created by GraceLilac on 2016. 5. 18..
//  Copyright © 2016년 GraceLilac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HWTicket : NSObject

@property (nonatomic, strong) NSString *movieTitle;
@property (nonatomic, strong) NSString *movieTheater;
@property (nonatomic, strong) NSString *movieVeiwingDay;
@property (nonatomic, strong) NSString *movieTicketCount;
@property (nonatomic, strong) NSString *movieType;
@property (nonatomic, strong) NSString *sellerId;
@property (nonatomic, strong) NSString *price;
@property (nonatomic, strong) NSString *descriptionText;

@end
