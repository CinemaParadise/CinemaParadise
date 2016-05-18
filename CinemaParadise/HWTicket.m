//
//  HWTicket.m
//  CinemaParadise
//
//  Created by GraceLilac on 2016. 5. 18..
//  Copyright © 2016년 GraceLilac. All rights reserved.
//

#import "HWTicket.h"

@implementation HWTicket

- (instancetype)initWithTitle:(NSString *)title selectedValue:(NSString *)selectedValue {
    
    self = [super init];
    
    if (self) {
        self.title = title;
        self.selectedValue = selectedValue;
    }
    
    return self;
}

@end
