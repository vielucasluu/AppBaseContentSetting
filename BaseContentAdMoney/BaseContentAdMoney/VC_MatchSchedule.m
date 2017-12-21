//
//  VC_MatchSchedule.m
//  BaseContentAdMoney
//
//  Created by Fanta on 12/20/17.
//  Copyright © 2017 Lucas Luu. All rights reserved.
//

#import "VC_MatchSchedule.h"
#import "TC_MatchScheduleCell.h"

@interface VC_MatchSchedule ()<UITableViewDelegate,UITableViewDataSource>

@property (strong, nonatomic) UITableView* tableView;

@end

@implementation VC_MatchSchedule

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle:@"Schedule"];
    [self.view setBackgroundColor:[UIColor redColor]];
    
    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [_tableView setDelegate:self];
    [_tableView setDataSource:self];
    [self.view addSubview:_tableView];
    
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:NO];
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if (section == 0) {
        return @"Header 1";
    }
    else if (section == 1)
    {
        return @"Header 2";
    }
    else
        return @"";
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 4;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 80;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TC_MatchScheduleCell* cell = [tableView dequeueReusableCellWithIdentifier:@"scheduleCell"];
    if (!cell) {
        cell = [[TC_MatchScheduleCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"scheduleCell"];
    }
    
    return cell;
}
@end
