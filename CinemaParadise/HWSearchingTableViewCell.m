//
//  HWSearchingTableViewCell.m
//  CinemaParadise
//
//  Created by GraceLilac on 2016. 5. 17..
//  Copyright © 2016년 GraceLilac. All rights reserved.
//

#import "HWSearchingTableViewCell.h"

@implementation HWSearchingTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self) {
        [self setupViewComponents];
        [self setupConstraints];
    }
    return self;
}

- (void)setupViewComponents {
    self.title = [[UILabel alloc] init];
    self.title.font=[self.title.font fontWithSize:35];
    self.title.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview:self.title];
    
    self.selectedOptionLabel = [[UILabel alloc] init];
    self.selectedOptionLabel.font=[self.selectedOptionLabel.font fontWithSize:20];
    self.selectedOptionLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview:self.selectedOptionLabel];
    
    self.button = [[UIButton alloc] init];
    self.button.font=[self.button.font fontWithSize:35];
    self.button.translatesAutoresizingMaskIntoConstraints = NO;
    [self.button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self addSubview:self.button];
}


- (void)setupConstraints {
    NSDictionary *views = @{
                            @"title" : self.title,
                            @"selectedOptionLabel" : self.selectedOptionLabel,
                            @"button" : self.button
                            };
    
    [self addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-65-[title(==35)]-15-[selectedOptionLabel(==20)]-65-|"
                                                options:0
                                                metrics:nil
                                                  views:views]];
    
    [self addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-80-[button(==40)]-80-|"
                                             options:0
                                             metrics:nil
                                               views:views]];

    [self addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-30-[title]"
                                             options:0
                                             metrics:nil
                                               views:views]];
    
    [self addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-30-[selectedOptionLabel]"
                                             options:0
                                             metrics:nil
                                               views:views]];
    [self addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:[button]-30-|"
                                             options:0
                                             metrics:nil
                                               views:views]];
}


@end
