//
//  HWSearchingCategory.m
//  CinemaParadise
//
//  Created by GraceLilac on 2016. 5. 17..
//  Copyright © 2016년 GraceLilac. All rights reserved.
//

#import "HWSearchingCategory.h"

@implementation HWSearchingCategory

- (instancetype)initWithTitle:(NSString *)title buttonTitle:(NSString *)buttonTitle {
    
    self = [super init];
    
    if (self) {
        self.title = title;
        self.buttonTitle = buttonTitle;
        
        self.selectedOption = @"상관없음";
    }
    
    return self;
}

@end
