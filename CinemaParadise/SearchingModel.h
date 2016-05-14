//
//  SearchingModel.h
//  CinemaParadise
//
//  Created by GraceLilac on 2016. 5. 13..
//  Copyright © 2016년 GraceLilac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SearchingModel : NSObject

@property (nonatomic, copy) NSString *movieTitle;
@property (nonatomic) int theaterId;
@property (nonatomic) int peopleNumber;
@property (nonatomic, copy) NSString *movieType;
@property (nonatomic) int price;
@property (nonatomic, strong) NSDate *viewingDay;


@end
