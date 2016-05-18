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
        self.sellerId = @"gracelilac";
        self.price = @"20,000";
        self.descriptionText = @"문자 주시면 대리예매 해 드립니다~!\n연락주실 때 원하는 좌석을 말해주세요\n연락처 010 - xxx - xxxx\n입니다!!!\n감사합니당\n";
    }
    
    return self;
}

@end
