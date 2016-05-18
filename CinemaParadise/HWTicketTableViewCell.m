//
//  HWTicketTableViewCell.m
//  CinemaParadise
//
//  Created by GraceLilac on 2016. 5. 18..
//  Copyright © 2016년 GraceLilac. All rights reserved.
//

#import "HWTicketTableViewCell.h"

@implementation HWTicketTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self) {
        [self setupViewComponents];
        [self setupConstraints];
        [self setUnderLine];
    }
    return self;
}

- (void)setupViewComponents {
    self.title = [[UILabel alloc] init];
    self.title.font=[self.title.font fontWithSize:23];
    self.title.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview:self.title];
    
    
    self.selectedValue = [[UILabel alloc] init];
    self.selectedValue.font=[self.selectedValue.font fontWithSize:23];
    self.selectedValue.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview:self.selectedValue];

}

- (void)setupConstraints {
    NSDictionary *views = @{
                            @"title" : self.title,
                            @"selectedValue" : self.selectedValue
                            };
    
    [self addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-10-[title(==24)]-10-|"
                                             options:0
                                             metrics:nil
                                               views:views]];
    
    [self addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-10-[selectedValue(==24)]-10-|"
                                             options:0
                                             metrics:nil
                                               views:views]];
    
    [self addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-30-[title]"
                                             options:0
                                             metrics:nil
                                               views:views]];

    [self addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:[selectedValue]-30-|"
                                             options:0
                                             metrics:nil
                                               views:views]];
    
}

- (void) setUnderLine {
    UIView *lineView = [[UIView alloc] initWithFrame:CGRectMake(17, 43, self.contentView.bounds.size.width-33, 0.1)];
    lineView.backgroundColor = [UIColor grayColor];
    lineView.autoresizingMask = 0x3f;
    [self.contentView addSubview:lineView];
}

@end
