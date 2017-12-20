//
//  VC_MatchSchedule.m
//  BaseContentAdMoney
//
//  Created by Fanta on 12/20/17.
//  Copyright © 2017 Lucas Luu. All rights reserved.
//

#import "VC_MatchSchedule.h"

@interface VC_MatchSchedule ()

@end

@implementation VC_MatchSchedule

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle:@"Schedule"];
    [self.view setBackgroundColor:[UIColor redColor]];
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:NO];
}

@end
