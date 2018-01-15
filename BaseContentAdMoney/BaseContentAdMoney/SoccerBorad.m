//
//  SoccerBorad.m
//  BaseContentAdMoney
//
//  Created by Lucas Luu on 1/11/18.
//  Copyright © 2018 Lucas Luu. All rights reserved.
//

#import "SoccerBorad.h"

@interface SoccerBorad ()

@end

@implementation SoccerBorad

- (void)viewDidLoad {
    [super viewDidLoad];
    if ([self respondsToSelector:@selector(edgesForExtendedLayout)])
    self.edgesForExtendedLayout = UIRectEdgeNone;
    [self setTitle:@"Schedule"];
    [self.view setBackgroundColor:[UIColor whiteColor]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
