//
//  ViewController.m
//  BaseContentAdMoney
//
//  Created by Lucas Luu on 12/20/17.
//  Copyright © 2017 Lucas Luu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIImageView*        _backgroundView;
}
@property (strong, nonatomic) UIButton*     groupTableBtn;
@property (strong, nonatomic) UIButton*     matchScheduleTableBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor redColor]];
    [self setTitle:@"SingleView"];
    _backgroundView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [_backgroundView setImage:[UIImage imageNamed:@"background"]];
    [_backgroundView setContentMode:UIViewContentModeScaleAspectFill];
    [self.view addSubview:_backgroundView];
    
    _groupTableBtn =[[UIButton alloc] init];
    [_groupTableBtn setTitle:@"GROUPS" forState:UIControlStateNormal];
    [_groupTableBtn.titleLabel setFont:[UIFont boldSystemFontOfSize:15]];
    [_groupTableBtn setBackgroundColor:[UIColor LVL_colorWithHexString:@"ff7b10" andAlpha:1.0]];
    [_groupTableBtn.layer setCornerRadius:20];
    [_groupTableBtn.layer setMasksToBounds:YES];
    [_groupTableBtn addTarget: self action:@selector(groupButtonTapped) forControlEvents:UIControlEventTouchUpInside];
    [_groupTableBtn setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.view addSubview:_groupTableBtn];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:_groupTableBtn
                                                            attribute:NSLayoutAttributeBottom
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:self.view
                                                            attribute:NSLayoutAttributeBottom
                                                           multiplier:1.0
                                                             constant:-20.0]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:_groupTableBtn
                                                            attribute:NSLayoutAttributeRight
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:self.view
                                                            attribute:NSLayoutAttributeCenterX
                                                           multiplier:1.0
                                                             constant:-10.0]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:_groupTableBtn
                                                            attribute:NSLayoutAttributeWidth
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:self.view
                                                            attribute:NSLayoutAttributeWidth
                                                           multiplier:0.5
                                                             constant:-20.0]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:_groupTableBtn
                                                            attribute:NSLayoutAttributeTop
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:_groupTableBtn
                                                            attribute:NSLayoutAttributeBottom
                                                           multiplier:1.0
                                                             constant:-40.0]];
    _matchScheduleTableBtn =[[UIButton alloc] init];
    [_matchScheduleTableBtn setTitle:@"MATCH SCHEDULE" forState:UIControlStateNormal];
    [_matchScheduleTableBtn.titleLabel setFont:[UIFont boldSystemFontOfSize:15]];
    [_matchScheduleTableBtn setBackgroundColor:[UIColor LVL_colorWithHexString:@"ff7b10" andAlpha:1.0]];
    [_matchScheduleTableBtn.layer setCornerRadius:20];
    [_matchScheduleTableBtn.layer setMasksToBounds:YES];
    [_matchScheduleTableBtn addTarget: self action:@selector(matchButtonTapped) forControlEvents:UIControlEventTouchUpInside];
    [_matchScheduleTableBtn setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.view addSubview:_matchScheduleTableBtn];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:_matchScheduleTableBtn
                                                          attribute:NSLayoutAttributeBottom
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeBottom
                                                         multiplier:1.0
                                                           constant:-20.0]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:_matchScheduleTableBtn
                                                          attribute:NSLayoutAttributeLeft
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterX
                                                         multiplier:1.0
                                                           constant:10.0]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:_matchScheduleTableBtn
                                                          attribute:NSLayoutAttributeWidth
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeWidth
                                                         multiplier:0.5
                                                           constant:-20.0]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:_matchScheduleTableBtn
                                                          attribute:NSLayoutAttributeTop
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:_matchScheduleTableBtn
                                                          attribute:NSLayoutAttributeBottom
                                                         multiplier:1.0
                                                           constant:-40.0]];
}


-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES];
}

-(void)groupButtonTapped
{
    VC_GroupTable* groupVC = [[VC_GroupTable alloc] init];
    [self.navigationController pushViewController:groupVC animated:YES];
}

-(void)matchButtonTapped
{
    VC_MatchSchedule* scheduleVC = [[VC_MatchSchedule alloc] init];
    [self.navigationController pushViewController:scheduleVC animated:YES];
}
@end
