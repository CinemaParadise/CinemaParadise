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
        self.layer.borderWidth = 1;
        
        [self setupViewComponents];
        [self setupConstraints];
    }
    
    return self;
}

- (void)setupViewComponents {
    self.title = [[UILabel alloc] init];
    self.title.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview:self.title];
    
    self.selectedOptionLabel = [[UILabel alloc] init];
    self.selectedOptionLabel.font=[self.selectedOptionLabel.font fontWithSize:13];
    self.selectedOptionLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview:self.selectedOptionLabel];
    
    self.button = [[UIButton alloc] init];
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
     [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-50-[title(==15)]-10-[selectedOptionLabel(==15)]-50-|"
                                                options:0
                                                metrics:nil
                                                  views:views]];
    
    [self addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-60-[button(==20)]-60-|"
                                             options:0
                                             metrics:nil
                                               views:views]];

    [self addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-20-[title]"
                                             options:0
                                             metrics:nil
                                               views:views]];
    
    [self addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-20-[selectedOptionLabel]"
                                             options:0
                                             metrics:nil
                                               views:views]];
    [self addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:[button]-20-|"
                                             options:0
                                             metrics:nil
                                               views:views]];
}

@end
