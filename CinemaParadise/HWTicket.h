//
//  HWTicket.h
//  CinemaParadise
//
//  Created by GraceLilac on 2016. 5. 18..
//  Copyright © 2016년 GraceLilac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HWTicket : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *selectedValue;

- (instancetype)initWithTitle:(NSString *)title selectedValue:(NSString *)selectedValue;



@end
