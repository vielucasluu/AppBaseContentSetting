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
    
}


-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES];
}

@end
