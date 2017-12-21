//
//  TC_MatchScheduleCell.m
//  BaseContentAdMoney
//
//  Created by Fanta on 12/20/17.
//  Copyright © 2017 Lucas Luu. All rights reserved.
//

#import "TC_MatchScheduleCell.h"

@implementation TC_MatchScheduleCell
{
    UIImageView* _backgroundView;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        _backgroundView = [[UIImageView alloc] init];
        [_backgroundView setImage:[UIImage imageNamed:@"rowBackground"]];
        [_backgroundView setContentMode:UIViewContentModeScaleAspectFill];
        [_backgroundView setTranslatesAutoresizingMaskIntoConstraints:NO];
        [self addSubview:_backgroundView];
        [self addConstraint:[NSLayoutConstraint constraintWithItem:_backgroundView
                                                              attribute:NSLayoutAttributeTop
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:self
                                                              attribute:NSLayoutAttributeTop
                                                             multiplier:1.0
                                                               constant:0.0]];
        [self addConstraint:[NSLayoutConstraint constraintWithItem:_backgroundView
                                                              attribute:NSLayoutAttributeCenterX
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:self
                                                              attribute:NSLayoutAttributeCenterX
                                                             multiplier:1.0
                                                               constant:0.0]];
        [self addConstraint:[NSLayoutConstraint constraintWithItem:_backgroundView
                                                              attribute:NSLayoutAttributeWidth
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:self
                                                              attribute:NSLayoutAttributeWidth
                                                             multiplier:1.0
                                                               constant:0.0]];
        [self addConstraint:[NSLayoutConstraint constraintWithItem:_backgroundView
                                                              attribute:NSLayoutAttributeBottom
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:self
                                                              attribute:NSLayoutAttributeBottom
                                                             multiplier:1.0
                                                               constant:0.0]];
        
        _team1ImageView = [[UIImageView alloc] init];
        [_team1ImageView setBackgroundColor:[UIColor redColor]];
        [_team1ImageView setTranslatesAutoresizingMaskIntoConstraints:NO];
        [self addSubview:_team1ImageView];
        [self addConstraint:[NSLayoutConstraint constraintWithItem:_team1ImageView
                                                         attribute:NSLayoutAttributeCenterY
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:self
                                                         attribute:NSLayoutAttributeCenterY
                                                        multiplier:1.0
                                                          constant:0.0]];
        [self addConstraint:[NSLayoutConstraint constraintWithItem:_team1ImageView
                                                         attribute:NSLayoutAttributeLeft
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:self
                                                         attribute:NSLayoutAttributeLeft
                                                        multiplier:1.0
                                                          constant:15.0]];
        [self addConstraint:[NSLayoutConstraint constraintWithItem:_team1ImageView
                                                         attribute:NSLayoutAttributeRight
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:_team1ImageView
                                                         attribute:NSLayoutAttributeLeft
                                                        multiplier:1.0
                                                          constant:40.0]];
        [self addConstraint:[NSLayoutConstraint constraintWithItem:_team1ImageView
                                                         attribute:NSLayoutAttributeBottom
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:_team1ImageView
                                                         attribute:NSLayoutAttributeTop
                                                        multiplier:1.0
                                                          constant:40.0]];
        
        _team2ImageView = [[UIImageView alloc] init];
        [_team2ImageView setBackgroundColor:[UIColor redColor]];
        [_team2ImageView setTranslatesAutoresizingMaskIntoConstraints:NO];
        [self addSubview:_team2ImageView];
        [self addConstraint:[NSLayoutConstraint constraintWithItem:_team2ImageView
                                                         attribute:NSLayoutAttributeCenterY
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:self
                                                         attribute:NSLayoutAttributeCenterY
                                                        multiplier:1.0
                                                          constant:0.0]];
        [self addConstraint:[NSLayoutConstraint constraintWithItem:_team2ImageView
                                                         attribute:NSLayoutAttributeRight
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:self
                                                         attribute:NSLayoutAttributeRight
                                                        multiplier:1.0
                                                          constant:-15.0]];
        [self addConstraint:[NSLayoutConstraint constraintWithItem:_team2ImageView
                                                         attribute:NSLayoutAttributeLeft
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:_team2ImageView
                                                         attribute:NSLayoutAttributeRight
                                                        multiplier:1.0
                                                          constant:-40.0]];
        [self addConstraint:[NSLayoutConstraint constraintWithItem:_team2ImageView
                                                         attribute:NSLayoutAttributeBottom
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:_team2ImageView
                                                         attribute:NSLayoutAttributeTop
                                                        multiplier:1.0
                                                          constant:40.0]];
        
        _team1Name = [[UILabel alloc] init];
        [_team1Name setFont:[UIFont boldSystemFontOfSize:15]];
        [_team1Name setTextColor:[UIColor whiteColor]];
        [_team1Name setText:@"Team 1"];
        [_team1Name setTranslatesAutoresizingMaskIntoConstraints:NO];
        [self addSubview:_team1Name];
        [self addConstraint:[NSLayoutConstraint constraintWithItem:_team1Name
                                                         attribute:NSLayoutAttributeCenterY
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:self
                                                         attribute:NSLayoutAttributeCenterY
                                                        multiplier:1.0
                                                          constant:0.0]];
        [self addConstraint:[NSLayoutConstraint constraintWithItem:_team1Name
                                                         attribute:NSLayoutAttributeLeft
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:_team1ImageView
                                                         attribute:NSLayoutAttributeRight
                                                        multiplier:1.0
                                                          constant:5.0]];
        [self addConstraint:[NSLayoutConstraint constraintWithItem:_team1Name
                                                         attribute:NSLayoutAttributeBottom
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:_team1Name
                                                         attribute:NSLayoutAttributeTop
                                                        multiplier:1.0
                                                          constant:45.0]];
        
        _team1Score = [[UILabel alloc] init];
        [_team1Score setFont:[UIFont boldSystemFontOfSize:22]];
        [_team1Score setTextColor:[UIColor whiteColor]];
        [_team1Score setText:@"0"];
        [_team1Score setTextAlignment:NSLayoutAttributeRight];
        [_team1Score setTranslatesAutoresizingMaskIntoConstraints:NO];
        [self addSubview:_team1Score];
        [self addConstraint:[NSLayoutConstraint constraintWithItem:_team1Score
                                                         attribute:NSLayoutAttributeCenterY
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:self
                                                         attribute:NSLayoutAttributeCenterY
                                                        multiplier:1.0
                                                          constant:0.0]];
        [self addConstraint:[NSLayoutConstraint constraintWithItem:_team1Score
                                                         attribute:NSLayoutAttributeRight
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:self
                                                         attribute:NSLayoutAttributeCenterX
                                                        multiplier:1.0
                                                          constant:-10.0]];
        [self addConstraint:[NSLayoutConstraint constraintWithItem:_team1Score
                                                         attribute:NSLayoutAttributeBottom
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:_team1Score
                                                         attribute:NSLayoutAttributeTop
                                                        multiplier:1.0
                                                          constant:45.0]];
        
        _team2Name = [[UILabel alloc] init];
        [_team2Name setFont:[UIFont boldSystemFontOfSize:15]];
        [_team2Name setTextColor:[UIColor whiteColor]];
        [_team2Name setText:@"Team 2"];
        [_team2Name setTextAlignment:NSLayoutAttributeRight];
        [_team2Name setTranslatesAutoresizingMaskIntoConstraints:NO];
        [self addSubview:_team2Name];
        [self addConstraint:[NSLayoutConstraint constraintWithItem:_team2Name
                                                         attribute:NSLayoutAttributeCenterY
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:self
                                                         attribute:NSLayoutAttributeCenterY
                                                        multiplier:1.0
                                                          constant:0.0]];
        [self addConstraint:[NSLayoutConstraint constraintWithItem:_team2Name
                                                         attribute:NSLayoutAttributeRight
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:_team2ImageView
                                                         attribute:NSLayoutAttributeLeft
                                                        multiplier:1.0
                                                          constant:-5.0]];
        [self addConstraint:[NSLayoutConstraint constraintWithItem:_team2Name
                                                         attribute:NSLayoutAttributeBottom
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:_team2Name
                                                         attribute:NSLayoutAttributeTop
                                                        multiplier:1.0
                                                          constant:45.0]];
        
        _team2Score = [[UILabel alloc] init];
        [_team2Score setFont:[UIFont boldSystemFontOfSize:22]];
        [_team2Score setTextColor:[UIColor whiteColor]];
        [_team2Score setText:@"0"];
        [_team2Score setTextAlignment:NSLayoutAttributeRight];
        [_team2Score setTranslatesAutoresizingMaskIntoConstraints:NO];
        [self addSubview:_team2Score];
        [self addConstraint:[NSLayoutConstraint constraintWithItem:_team2Score
                                                         attribute:NSLayoutAttributeCenterY
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:self
                                                         attribute:NSLayoutAttributeCenterY
                                                        multiplier:1.0
                                                          constant:0.0]];
        [self addConstraint:[NSLayoutConstraint constraintWithItem:_team2Score
                                                         attribute:NSLayoutAttributeLeft
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:self
                                                         attribute:NSLayoutAttributeCenterX
                                                        multiplier:1.0
                                                          constant:10.0]];
        [self addConstraint:[NSLayoutConstraint constraintWithItem:_team2Score
                                                         attribute:NSLayoutAttributeBottom
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:_team2Score
                                                         attribute:NSLayoutAttributeTop
                                                        multiplier:1.0
                                                          constant:45.0]];
        UILabel* separator = [[UILabel alloc] init];
        [separator setText:@"-"];
        [separator setTextColor:[UIColor whiteColor]];
        [separator setFont:[UIFont boldSystemFontOfSize:20]];
        [separator setTranslatesAutoresizingMaskIntoConstraints:NO];
        [self addSubview:separator];
        [self addConstraint:[NSLayoutConstraint constraintWithItem:separator
                                                         attribute:NSLayoutAttributeCenterY
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:self
                                                         attribute:NSLayoutAttributeCenterY
                                                        multiplier:1.0
                                                          constant:0.0]];
        [self addConstraint:[NSLayoutConstraint constraintWithItem:separator
                                                         attribute:NSLayoutAttributeCenterX
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:self
                                                         attribute:NSLayoutAttributeCenterX
                                                        multiplier:1.0
                                                          constant:0.0]];
        [self addConstraint:[NSLayoutConstraint constraintWithItem:_team2Score
                                                         attribute:NSLayoutAttributeBottom
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:_team2Score
                                                         attribute:NSLayoutAttributeTop
                                                        multiplier:1.0
                                                          constant:45.0]];
    }
    return self;
}
@end
