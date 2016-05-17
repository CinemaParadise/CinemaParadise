//
//  HWSearchingCategory.h
//  CinemaParadise
//
//  Created by GraceLilac on 2016. 5. 17..
//  Copyright © 2016년 GraceLilac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HWSearchingCategory : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *selectedOption;
@property (nonatomic ,strong) NSString *buttonTitle;

- (instancetype)initWithTitle:(NSString *)title buttonTitle:(NSString *)buttonTitle;

@end
