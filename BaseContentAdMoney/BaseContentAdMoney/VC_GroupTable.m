//
//  VC_GroupTable.m
//  BaseContentAdMoney
//
//  Created by Fanta on 12/20/17.
//  Copyright © 2017 Lucas Luu. All rights reserved.
//

#import "VC_GroupTable.h"

@interface VC_GroupTable ()

@end

@implementation VC_GroupTable

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle:@"Groups"];
    [self.view setBackgroundColor:[UIColor yellowColor]];
    
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:NO];
}

@end
