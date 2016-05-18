//
//  HWTicket.m
//  CinemaParadise
//
//  Created by GraceLilac on 2016. 5. 18..
//  Copyright © 2016년 GraceLilac. All rights reserved.
//

#import "HWTicket.h"

@implementation HWTicket


- (instancetype)init {
    
    self = [super init];
    
    if (self) {
        self.movieTitle = @"캡틴 아메리카: 시빌 워";
        self.movieTheater = @"CGV / 경기 / 야탑";
        self.movieVeiwingDay = @"2016.06.01";
        self.movieTicketCount = @"2";
        self.movieType = @"3D";
    }
    
    return self;
}

@end
