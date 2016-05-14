//
//  TicketModel.m
//  CinemaParadise
//
//  Created by GraceLilac on 2016. 5. 13..
//  Copyright © 2016년 GraceLilac. All rights reserved.
//

#import "TicketModel.h"

@implementation TicketModel

-(instancetype)initWithDictionary:(NSDictionary *)ticketInfo
{
    self = [super init];
    
    if(self) {
        
        _ticketId = (int) ticketInfo[@"ticketId"];
        _userId = ticketInfo[@"userId"];
//        @property (nonatomic) int ticketId;
//        @property (nonatomic, copy) NSString *userId;
//        @property (nonatomic, copy) NSString *movieTitle;
//        @property (nonatomic) int theaterId;
//        @property (nonatomic) int peopleNumber;
//        @property (nonatomic, copy) NSString *movieType;
//        @property (nonatomic) int price;
//        @property (nonatomic, strong) NSDate *expirationDay;
//        @property (nonatomic, copy) NSString *description;

        NSMutableDictionary *dummy1 = [[NSMutableDictionary alloc] init];
        [dummy1 setObject:@(4) forKey:@"ticketId"];
        [dummy1 setObject:@"wshh123" forKey:@"userId"];
    }
    return self;
}


@end