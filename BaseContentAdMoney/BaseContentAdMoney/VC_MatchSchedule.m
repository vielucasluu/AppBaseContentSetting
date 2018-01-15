//
//  VC_MatchSchedule.m
//  BaseContentAdMoney
//
//  Created by Fanta on 12/20/17.
//  Copyright © 2017 Lucas Luu. All rights reserved.
//

#import "VC_MatchSchedule.h"
#import "TC_MatchScheduleCell.h"
#import "SoccerBorad.h"

@interface VC_MatchSchedule ()<UITableViewDelegate,UITableViewDataSource>

@property (strong, nonatomic) UITableView* tableView;

@end

@implementation VC_MatchSchedule

- (void)viewDidLoad {
    [super viewDidLoad];
    if ([self respondsToSelector:@selector(edgesForExtendedLayout)])
        self.edgesForExtendedLayout = UIRectEdgeNone;
    [self setTitle:@"Schedule"];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    UIImage *backImage = [[UIImage imageNamed:@"backImage"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIBarButtonItem *leftBtn = [[UIBarButtonItem alloc] initWithImage:backImage
                                                                          style:UIBarButtonItemStyleDone
                                                                         target:self
                                                                         action:@selector(backButtonTapped)];
    self.navigationItem.leftBarButtonItem = leftBtn;
    
    UIBarButtonItem *rightBtn = [[UIBarButtonItem alloc] initWithTitle:@"Refresh"
                                                                 style:UIBarButtonItemStyleDone
                                                                target:self
                                                                action:@selector(rightBarButtonTapped)];
    self.navigationItem.rightBarButtonItem = rightBtn;
    
    _tableView = [[UITableView alloc]init];
    [_tableView setDelegate:self];
    [_tableView setDataSource:self];
    [_tableView setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.view addSubview:_tableView];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:_tableView
                                                          attribute:NSLayoutAttributeTop
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeTop
                                                         multiplier:1.0
                                                           constant:0.0]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:_tableView
                                                          attribute:NSLayoutAttributeCenterX
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterX
                                                         multiplier:1.0
                                                           constant:0.0]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:_tableView
                                                          attribute:NSLayoutAttributeWidth
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeWidth
                                                         multiplier:01.0
                                                           constant:0.0]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:_tableView
                                                          attribute:NSLayoutAttributeBottom
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeBottom
                                                         multiplier:1.0
                                                           constant:0.0]];
    
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:NO];
}

//- (UIStatusBarStyle)preferredStatusBarStyle
//{
//    return UIStatusBarStyleLightContent;
//}

-(void)backButtonTapped
{
    [self.navigationController popViewControllerAnimated:YES];
}

-(void)rightBarButtonTapped
{
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Updated"
                                                                   message:@"No one match will become in short time, please wait until June 14, 2018 with match of Russia and Saudi Arabia. Try follow your favorite team in Group Page"
                                                            preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction* okAction = [UIAlertAction actionWithTitle:@"OK"
                                                       style:UIAlertActionStyleDefault
                                                     handler:^(UIAlertAction * _Nonnull action) {
                                                         [alert dismissViewControllerAnimated:YES completion:nil];
                                                     }];
//    UIAlertAction* gotoGroupPage = [UIAlertAction actionWithTitle:@"Go to Group page"
//                                                            style:UIAlertActionStyleDefault
//                                                          handler:^(UIAlertAction * _Nonnull action) {
//                                                              [alert dismissViewControllerAnimated:YES completion:nil];
//                                                              [self.navigationController popViewControllerAnimated:YES];
//                                                              VC_GroupTable* groupVC = [[VC_GroupTable alloc] init];
//                                                              [self.navigationController pushViewController:groupVC animated:YES];
//                                                          }];
    [alert addAction:okAction];
//    [alert addAction:gotoGroupPage];
    [self presentViewController:alert animated:YES completion:nil];
}
                                 
-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if (section == 0) {
        return @"June 14, 2018";
    }
    else if (section == 1)
    {
        return @"June 15, 2018";
    }
    else if (section == 2)
    {
        return @"June 16, 2018";
    }
    else if (section == 3)
    {
        return @"June 17, 2018";
    }
    else if (section == 4)
    {
        return @"June 18, 2018";
    }
    else if (section == 5)
    {
        return @"June 19, 2018";
    }
    else if (section == 6)
    {
        return @"June 20, 2018";
    }
    else if (section == 7)
    {
        return @"June 21, 2018";
    }
    else if (section == 8)
    {
        return @"June 22, 2018";
    }
    else if (section == 9)
    {
        return @"June 23, 2018";
    }
    else if (section == 10)
    {
        return @"June 24, 2018";
    }
    else if (section == 11)
    {
        return @"June 25, 2018";
    }
    else if (section == 12)
    {
        return @"June 26, 2018";
    }
    else if (section == 13)
    {
        return @"June 27, 2018";
    }
    else if (section == 14)
    {
        return @"June 28, 2018";
    }
    else if (section == 15)
    {
        return @"June 29, 2018";
    }
    else if (section == 16)
    {
        return @"June 30, 2018";
    }
    else if (section == 17)
    {
        return @"July 1, 2018";
    }
    else if (section == 18)
    {
        return @"July 2, 2018";
    }
    else if (section == 19)
    {
        return @"July 3, 2018";
    }
    else if (section == 20)
    {
        return @"July 4, 2018";
    }
    else if (section == 21)
    {
        return @"July 6, 2018";
    }
    else if (section == 22)
    {
        return @"July 7, 2018";
    }
    else if (section == 23)
    {
        return @"July 8, 2018";
    }
    else if (section == 24)
    {
        return @"July 11, 2018";
    }
    else if (section == 25)
    {
        return @"July 14, 2018";
    }
    else
        return @"June 15, 2018";
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 27;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    switch (section) {
        case 0:
            return 1;
            break;
        case 1:
            return 2;
            break;
        case 2:
            return 4;
            break;
        case 3:
            return 3;
            break;
        case 4:
            return 3;
            break;
        case 5:
            return 3;
            break;
        case 6:
            return 3;
            break;
        case 7:
            return 3;
            break;
        case 8:
            return 3;
            break;
        case 9:
            return 3;
            break;
        case 10:
            return 3;
            break;
        case 11:
            return 3;
            break;
        case 12:
            return 4;
            break;
        case 13:
            return 4;
            break;
        case 14:
            return 4;
            break;
        case 15:
            return 2;
            break;
        case 16:
            return 1;
            break;
        case 17:
            return 2;
            break;
        case 18:
            return 2;
            break;
        case 19:
            return 2;
            break;
        case 20:
            return 1;
            break;
        case 21:
            return 1;
            break;
        case 22:
            return 2;
            break;
        case 23:
            return 1;
            break;
        case 24:
            return 2;
            break;
        case 25:
            return 1;
            break;
            
            
        default:
            return 1;
            break;
    }
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TC_MatchScheduleCell* cell = [tableView dequeueReusableCellWithIdentifier:@"scheduleCell"];
    if (!cell) {
        cell = [[TC_MatchScheduleCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"scheduleCell"];
    }
    [cell.backgroundCellView setImage:[UIImage imageNamed:@"rowBackground"]];
    if (indexPath.section == 0)
    {
        if (indexPath.row == 0) {
            [cell.team1Name setText:@"Russia"];
            [cell.team2Name setText:@"Saudi Arabia"];
            [cell.startTime setText:@"10:00 PM"];
            [cell.team1ImageView setImage:[UIImage imageNamed:@"Russia"]];
            [cell.team2ImageView setImage:[UIImage imageNamed:@"Saudi Arabia"]];
        }
    }
    else if (indexPath.section == 1)
    {
        if (indexPath.row == 0)
        {
            [cell.team1Name setText:@"Egypt"];
            [cell.team2Name setText:@"Uruguay"];
            [cell.startTime setText:@"7:00 PM"];
            [cell.team1ImageView setImage:[UIImage imageNamed:@"Egypt"]];
            [cell.team2ImageView setImage:[UIImage imageNamed:@"Uruguay"]];
        }
        else if (indexPath.row == 1)
        {
            [cell.team1Name setText:@"Morocco"];
            [cell.team2Name setText:@"Iran"];
            [cell.startTime setText:@"10:00 PM"];
            [cell.team1ImageView setImage:[UIImage imageNamed:@"Morocco"]];
            [cell.team2ImageView setImage:[UIImage imageNamed:@"Iran"]];
        }
    }
    else if (indexPath.section == 2)
    {
        if (indexPath.row == 0)
        {
            [cell.team1Name setText:@"Portugal"];
            [cell.team2Name setText:@"Spain"];
            [cell.startTime setText:@"1:00 AM"];
            [cell.team1ImageView setImage:[UIImage imageNamed:@"Portugal"]];
            [cell.team2ImageView setImage:[UIImage imageNamed:@"Spain"]];
        }
        else if (indexPath.row == 1)
        {
            [cell.team1Name setText:@"France"];
            [cell.team2Name setText:@"Australia"];
            [cell.startTime setText:@"5:00 PM"];
            [cell.team1ImageView setImage:[UIImage imageNamed:@"France"]];
            [cell.team2ImageView setImage:[UIImage imageNamed:@"Australia"]];
        }
        else if (indexPath.row == 2)
        {
            [cell.team1Name setText:@"Argentina"];
            [cell.team2Name setText:@"Iceland"];
            [cell.startTime setText:@"8:00 PM"];
            [cell.team1ImageView setImage:[UIImage imageNamed:@"Argentina"]];
            [cell.team2ImageView setImage:[UIImage imageNamed:@"Iceland"]];
        }
        else if (indexPath.row == 3)
        {
            [cell.team1Name setText:@"Peru"];
            [cell.team2Name setText:@"Denmark"];
            [cell.startTime setText:@"11:00 PM"];
            [cell.team1ImageView setImage:[UIImage imageNamed:@"Peru"]];
            [cell.team2ImageView setImage:[UIImage imageNamed:@"Denmark"]];
        }
    }
    else if (indexPath.section == 3)
    {
        if (indexPath.row == 0)
        {
            [cell.team1Name setText:@"Croatia"];
            [cell.team2Name setText:@"Nigeria"];
            [cell.startTime setText:@"2:00 AM"];
            [cell.team1ImageView setImage:[UIImage imageNamed:@"Croatia"]];
            [cell.team2ImageView setImage:[UIImage imageNamed:@"Nigeria"]];
        }
        else if (indexPath.row == 1)
        {
            [cell.team1Name setText:@"Costa Rica"];
            [cell.team2Name setText:@"Serbia"];
            [cell.startTime setText:@"7:00 PM"];
            [cell.team1ImageView setImage:[UIImage imageNamed:@"Costa Rica"]];
            [cell.team2ImageView setImage:[UIImage imageNamed:@"Serbia"]];
        }
        else if (indexPath.row == 2)
        {
            [cell.team1Name setText:@"Germany"];
            [cell.team2Name setText:@"Mexico"];
            [cell.startTime setText:@"10:00 PM"];
            [cell.team1ImageView setImage:[UIImage imageNamed:@"Germany"]];
            [cell.team2ImageView setImage:[UIImage imageNamed:@"Mexico"]];
        }
    }
    else if (indexPath.section == 4)
    {
        if (indexPath.row == 0)
        {
            [cell.team1Name setText:@"Brazil"];
            [cell.team2Name setText:@"Switzerland"];
            [cell.startTime setText:@"1:00 AM"];
            [cell.team1ImageView setImage:[UIImage imageNamed:@"Brazil"]];
            [cell.team2ImageView setImage:[UIImage imageNamed:@"Switzerland"]];
        }
        else if (indexPath.row == 1)
        {
            [cell.team1Name setText:@"Sweden"];
            [cell.team2Name setText:@"South Korea"];
            [cell.startTime setText:@"7:00 PM"];
            [cell.team1ImageView setImage:[UIImage imageNamed:@"Sweden"]];
            [cell.team2ImageView setImage:[UIImage imageNamed:@"South Korea"]];
        }
        else if (indexPath.row == 2)
        {
            [cell.team1Name setText:@"Belgium"];
            [cell.team2Name setText:@"Panama"];
            [cell.startTime setText:@"10:00 PM"];
            [cell.team1ImageView setImage:[UIImage imageNamed:@"Belgium"]];
            [cell.team2ImageView setImage:[UIImage imageNamed:@"Panama"]];
        }
    }
    else if (indexPath.section == 5)
    {
        if (indexPath.row == 0)
        {
            [cell.team1Name setText:@"Tunisia"];
            [cell.team2Name setText:@"England"];
            [cell.startTime setText:@"1:00 AM"];
            [cell.team1ImageView setImage:[UIImage imageNamed:@"Tunisia"]];
            [cell.team2ImageView setImage:[UIImage imageNamed:@"England"]];
        }
        else if (indexPath.row == 1)
        {
            [cell.team1Name setText:@"Colombia"];
            [cell.team2Name setText:@"Japan"];
            [cell.startTime setText:@"7:00 PM"];
            [cell.team1ImageView setImage:[UIImage imageNamed:@"Colombia"]];
            [cell.team2ImageView setImage:[UIImage imageNamed:@"Japan"]];
            
        }
        else if (indexPath.row == 2)
        {
            [cell.team1Name setText:@"Poland"];
            [cell.team2Name setText:@"Senegal"];
            [cell.startTime setText:@"10:00 PM"];
            [cell.team1ImageView setImage:[UIImage imageNamed:@"Poland"]];
            [cell.team2ImageView setImage:[UIImage imageNamed:@"Senegal"]];
        }
    }
    else if (indexPath.section == 6)
    {
        if (indexPath.row == 0)
        {
            [cell.team1Name setText:@"Russia"];
            [cell.team2Name setText:@"Egypt"];
            [cell.startTime setText:@"1:00 AM"];
            [cell.team1ImageView setImage:[UIImage imageNamed:@"Russia"]];
            [cell.team2ImageView setImage:[UIImage imageNamed:@"Egypt"]];
        }
        else if (indexPath.row == 1)
        {
            [cell.team1Name setText:@"Portugal"];
            [cell.team2Name setText:@"Morocco"];
            [cell.startTime setText:@"7:00 PM"];
            [cell.team1ImageView setImage:[UIImage imageNamed:@"Portugal"]];
            [cell.team2ImageView setImage:[UIImage imageNamed:@"Morocco"]];
            
        }
        else if (indexPath.row == 2)
        {
            [cell.team1Name setText:@"Uruguay"];
            [cell.team2Name setText:@"Saudi Arabia"];
            [cell.startTime setText:@"10:00 PM"];
            [cell.team1ImageView setImage:[UIImage imageNamed:@"Uruguay"]];
            [cell.team2ImageView setImage:[UIImage imageNamed:@"Saudi Arabia"]];
        }
    }
    else if (indexPath.section == 7)
    {
        if (indexPath.row == 0)
        {
            [cell.team1Name setText:@"Iran"];
            [cell.team2Name setText:@"Spain"];
            [cell.startTime setText:@"1:00 AM"];
            [cell.team1ImageView setImage:[UIImage imageNamed:@"Iran"]];
            [cell.team2ImageView setImage:[UIImage imageNamed:@"Spain"]];
        }
        else if (indexPath.row == 1)
        {
            [cell.team1Name setText:@"Denmark"];
            [cell.team2Name setText:@"Australia"];
            [cell.startTime setText:@"7:00 PM"];
            [cell.team1ImageView setImage:[UIImage imageNamed:@"Denmark"]];
            [cell.team2ImageView setImage:[UIImage imageNamed:@"Australia"]];
            
        }
        else if (indexPath.row == 2)
        {
            [cell.team1Name setText:@"France"];
            [cell.team2Name setText:@"Peru"];
            [cell.startTime setText:@"10:00 PM"];
            [cell.team1ImageView setImage:[UIImage imageNamed:@"France"]];
            [cell.team2ImageView setImage:[UIImage imageNamed:@"Peru"]];
        }
    }
    else if (indexPath.section == 8)
    {
        if (indexPath.row == 0)
        {
            [cell.team1Name setText:@"Argentina"];
            [cell.team2Name setText:@"Croatia"];
            [cell.startTime setText:@"1:00 AM"];
            [cell.team1ImageView setImage:[UIImage imageNamed:@"Argentina"]];
            [cell.team2ImageView setImage:[UIImage imageNamed:@"Croatia"]];
        }
        else if (indexPath.row == 1)
        {
            [cell.team1Name setText:@"Brazil"];
            [cell.team2Name setText:@"Costa Rica"];
            [cell.startTime setText:@"7:00 PM"];
            [cell.team1ImageView setImage:[UIImage imageNamed:@"Brazil"]];
            [cell.team2ImageView setImage:[UIImage imageNamed:@"Costa Rica"]];
            
        }
        else if (indexPath.row == 2)
        {
            [cell.team1Name setText:@"Nigeria"];
            [cell.team2Name setText:@"Iceland"];
            [cell.startTime setText:@"10:00 PM"];
            [cell.team1ImageView setImage:[UIImage imageNamed:@"Nigeria"]];
            [cell.team2ImageView setImage:[UIImage imageNamed:@"Iceland"]];
        }
    }
    else if (indexPath.section == 9)
    {
        if (indexPath.row == 0)
        {
            [cell.team1Name setText:@"Serbia"];
            [cell.team2Name setText:@"Switzerland"];
            [cell.startTime setText:@"1:00 AM"];
            [cell.team1ImageView setImage:[UIImage imageNamed:@"Serbia"]];
            [cell.team2ImageView setImage:[UIImage imageNamed:@"Switzerland"]];
        }
        else if (indexPath.row == 1)
        {
            [cell.team1Name setText:@"Belgium"];
            [cell.team2Name setText:@"Tunisia"];
            [cell.startTime setText:@"7:00 PM"];
            [cell.team1ImageView setImage:[UIImage imageNamed:@"Belgium"]];
            [cell.team2ImageView setImage:[UIImage imageNamed:@"Tunisia"]];
            
        }
        else if (indexPath.row == 2)
        {
            [cell.team1Name setText:@"South Korea"];
            [cell.team2Name setText:@"Mexico"];
            [cell.startTime setText:@"10:00 PM"];
            [cell.team1ImageView setImage:[UIImage imageNamed:@"South Korea"]];
            [cell.team2ImageView setImage:[UIImage imageNamed:@"Mexico"]];
        }
    }
    else if (indexPath.section == 10)
    {
        if (indexPath.row == 0)
        {
            [cell.team1Name setText:@"Germany"];
            [cell.team2Name setText:@"Sweden"];
            [cell.startTime setText:@"1:00 AM"];
            [cell.team1ImageView setImage:[UIImage imageNamed:@"Germany"]];
            [cell.team2ImageView setImage:[UIImage imageNamed:@"Sweden"]];
        }
        else if (indexPath.row == 1)
        {
            [cell.team1Name setText:@"England"];
            [cell.team2Name setText:@"Panama"];
            [cell.startTime setText:@"7:00 PM"];
            [cell.team1ImageView setImage:[UIImage imageNamed:@"England"]];
            [cell.team2ImageView setImage:[UIImage imageNamed:@"Panama"]];
            
        }
        else if (indexPath.row == 2)
        {
            [cell.team1Name setText:@"Japan"];
            [cell.team2Name setText:@"Senegal"];
            [cell.startTime setText:@"10:00 PM"];
            [cell.team1ImageView setImage:[UIImage imageNamed:@"Japan"]];
            [cell.team2ImageView setImage:[UIImage imageNamed:@"Senegal"]];
        }
    }
    else if (indexPath.section == 11)
    {
        if (indexPath.row == 0)
        {
            [cell.team1Name setText:@"Poland"];
            [cell.team2Name setText:@"Columbia"];
            [cell.startTime setText:@"1:00 AM"];
            [cell.team1ImageView setImage:[UIImage imageNamed:@"Poland"]];
            [cell.team2ImageView setImage:[UIImage imageNamed:@"Columbia"]];
        }
        else if (indexPath.row == 1)
        {
            [cell.team1Name setText:@"Uruguay"];
            [cell.team2Name setText:@"Russia"];
            [cell.startTime setText:@"9:00 PM"];
            [cell.team1ImageView setImage:[UIImage imageNamed:@"Uruguay"]];
            [cell.team2ImageView setImage:[UIImage imageNamed:@"Russia"]];
            
        }
        else if (indexPath.row == 2)
        {
            [cell.team1Name setText:@"Saudi Arabia"];
            [cell.team2Name setText:@"Egypt"];
            [cell.startTime setText:@"9:00 PM"];
            [cell.team1ImageView setImage:[UIImage imageNamed:@"Saudi Arabia"]];
            [cell.team2ImageView setImage:[UIImage imageNamed:@"Egypt"]];
        }
    }
    else if (indexPath.section == 12)
    {
        if (indexPath.row == 0)
        {
            [cell.team1Name setText:@"Spain"];
            [cell.team2Name setText:@"Morocco"];
            [cell.startTime setText:@"1:00 AM"];
            [cell.team1ImageView setImage:[UIImage imageNamed:@"Spain"]];
            [cell.team2ImageView setImage:[UIImage imageNamed:@"Morocco"]];
        }
        else if (indexPath.row == 1)
        {
            [cell.team1Name setText:@"Iran"];
            [cell.team2Name setText:@"Portugal"];
            [cell.startTime setText:@"1:00 AM"];
            [cell.team1ImageView setImage:[UIImage imageNamed:@"Iran"]];
            [cell.team2ImageView setImage:[UIImage imageNamed:@"Portugal"]];
            
        }
        else if (indexPath.row == 2)
        {
            [cell.team1Name setText:@"Denmark"];
            [cell.team2Name setText:@"France"];
            [cell.startTime setText:@"9:00 PM"];
            [cell.team1ImageView setImage:[UIImage imageNamed:@"Denmark"]];
            [cell.team2ImageView setImage:[UIImage imageNamed:@"France"]];
        }
        else if (indexPath.row == 3)
        {
            [cell.team1Name setText:@"Australia"];
            [cell.team2Name setText:@"Peru"];
            [cell.startTime setText:@"9:00 PM"];
            [cell.team1ImageView setImage:[UIImage imageNamed:@"Australia"]];
            [cell.team2ImageView setImage:[UIImage imageNamed:@"Peru"]];
        }
    }
    else if (indexPath.section == 13)
    {
        if (indexPath.row == 0)
        {
            [cell.team1Name setText:@"Iceland"];
            [cell.team2Name setText:@"Croatia"];
            [cell.startTime setText:@"1:00 AM"];
            [cell.team1ImageView setImage:[UIImage imageNamed:@"Iceland"]];
            [cell.team2ImageView setImage:[UIImage imageNamed:@"Croatia"]];
        }
        else if (indexPath.row == 1)
        {
            [cell.team1Name setText:@"Nigeria"];
            [cell.team2Name setText:@"Argentina"];
            [cell.startTime setText:@"1:00 AM"];
            [cell.team1ImageView setImage:[UIImage imageNamed:@"Nigeria"]];
            [cell.team2ImageView setImage:[UIImage imageNamed:@"Argentina"]];
            
        }
        else if (indexPath.row == 2)
        {
            [cell.team1Name setText:@"Mexico"];
            [cell.team2Name setText:@"Sweden"];
            [cell.startTime setText:@"9:00 PM"];
            [cell.team1ImageView setImage:[UIImage imageNamed:@"Mexico"]];
            [cell.team2ImageView setImage:[UIImage imageNamed:@"Sweden"]];
        }
        else if (indexPath.row == 3)
        {
            [cell.team1Name setText:@"South Korea"];
            [cell.team2Name setText:@"Germany"];
            [cell.startTime setText:@"9:00 PM"];
            [cell.team1ImageView setImage:[UIImage imageNamed:@"South Korea"]];
            [cell.team2ImageView setImage:[UIImage imageNamed:@"Germany"]];
        }
    }
    else if (indexPath.section == 14)
    {
        if (indexPath.row == 0)
        {
            [cell.team1Name setText:@"Serbia"];
            [cell.team2Name setText:@"Brazil"];
            [cell.startTime setText:@"1:00 AM"];
            [cell.team1ImageView setImage:[UIImage imageNamed:@"Serbia"]];
            [cell.team2ImageView setImage:[UIImage imageNamed:@"Brazil"]];
        }
        else if (indexPath.row == 1)
        {
            [cell.team1Name setText:@"Switzerland"];
            [cell.team2Name setText:@"Costa Rica"];
            [cell.startTime setText:@"1:00 AM"];
            [cell.team1ImageView setImage:[UIImage imageNamed:@"Switzerland"]];
            [cell.team2ImageView setImage:[UIImage imageNamed:@"Costa Rica"]];
            
        }
        else if (indexPath.row == 2)
        {
            [cell.team1Name setText:@"Japan"];
            [cell.team2Name setText:@"Poland"];
            [cell.startTime setText:@"9:00 PM"];
            [cell.team1ImageView setImage:[UIImage imageNamed:@"Japan"]];
            [cell.team2ImageView setImage:[UIImage imageNamed:@"Poland"]];
        }
        else if (indexPath.row == 3)
        {
            [cell.team1Name setText:@"Senegal"];
            [cell.team2Name setText:@"Colombia"];
            [cell.startTime setText:@"9:00 PM"];
            [cell.team1ImageView setImage:[UIImage imageNamed:@"Senegal"]];
            [cell.team2ImageView setImage:[UIImage imageNamed:@"Colombia"]];
        }
    }
    else if (indexPath.section == 15)
    {
        if (indexPath.row == 0)
        {
            [cell.team1Name setText:@"England"];
            [cell.team2Name setText:@"Belgium"];
            [cell.startTime setText:@"1:00 AM"];
            [cell.team1ImageView setImage:[UIImage imageNamed:@"England"]];
            [cell.team2ImageView setImage:[UIImage imageNamed:@"Belgium"]];
        }
        else if (indexPath.row == 1)
        {
            [cell.team1Name setText:@"Panama"];
            [cell.team2Name setText:@"Tunisia"];
            [cell.startTime setText:@"1:00 AM"];
            [cell.team1ImageView setImage:[UIImage imageNamed:@"Panama"]];
            [cell.team2ImageView setImage:[UIImage imageNamed:@"Tunisia"]];
        }
    }
    else if (indexPath.section == 16)
    {
        [cell.backgroundCellView setImage:[UIImage imageNamed:@"semiCell"]];
        if (indexPath.row == 0)
        {
            [cell.team1Name setText:@"[1 C]"];
            [cell.team2Name setText:@"[2 D]"];
            [cell.startTime setText:@"9:00 PM"];
            [cell.team1ImageView setImage:[UIImage imageNamed:@"unknowFlag"]];
            [cell.team2ImageView setImage:[UIImage imageNamed:@"unknowFlag"]];
        }
    }
    else if (indexPath.section == 17)
    {
        [cell.backgroundCellView setImage:[UIImage imageNamed:@"semiCell"]];
        if (indexPath.row == 0)
        {
            [cell.team1Name setText:@"[1 C]"];
            [cell.team2Name setText:@"[2 D]"];
            [cell.startTime setText:@"1:00 AM"];
            [cell.team1ImageView setImage:[UIImage imageNamed:@"unknowFlag"]];
            [cell.team2ImageView setImage:[UIImage imageNamed:@"unknowFlag"]];
        }
        else if (indexPath.row == 1)
        {
            [cell.team1Name setText:@"[1 A]"];
            [cell.team2Name setText:@"[2 B]"];
            [cell.startTime setText:@"9:00 PM"];
            [cell.team1ImageView setImage:[UIImage imageNamed:@"unknowFlag"]];
            [cell.team2ImageView setImage:[UIImage imageNamed:@"unknowFlag"]];
        }
    }
    else if (indexPath.section == 18)
    {
        [cell.backgroundCellView setImage:[UIImage imageNamed:@"semiCell"]];
        if (indexPath.row == 0)
        {
            [cell.team1Name setText:@"[1 D]"];
            [cell.team2Name setText:@"[2 C]"];
            [cell.startTime setText:@"1:00 AM"];
            [cell.team1ImageView setImage:[UIImage imageNamed:@"unknowFlag"]];
            [cell.team2ImageView setImage:[UIImage imageNamed:@"unknowFlag"]];
        }
        else if (indexPath.row == 1)
        {
            [cell.team1Name setText:@"[1 E]"];
            [cell.team2Name setText:@"[2 F]"];
            [cell.startTime setText:@"9:00 PM"];
            [cell.team1ImageView setImage:[UIImage imageNamed:@"unknowFlag"]];
            [cell.team2ImageView setImage:[UIImage imageNamed:@"unknowFlag"]];
        }
    }
    else if (indexPath.section == 19)
    {
        [cell.backgroundCellView setImage:[UIImage imageNamed:@"semiCell"]];
        if (indexPath.row == 0)
        {
            [cell.team1Name setText:@"[1 G]"];
            [cell.team2Name setText:@"[2 H]"];
            [cell.startTime setText:@"1:00 AM"];
            [cell.team1ImageView setImage:[UIImage imageNamed:@"unknowFlag"]];
            [cell.team2ImageView setImage:[UIImage imageNamed:@"unknowFlag"]];
        }
        else if (indexPath.row == 1)
        {
            [cell.team1Name setText:@"[1 F]"];
            [cell.team2Name setText:@"[2 E]"];
            [cell.startTime setText:@"9:00 PM"];
            [cell.team1ImageView setImage:[UIImage imageNamed:@"unknowFlag"]];
            [cell.team2ImageView setImage:[UIImage imageNamed:@"unknowFlag"]];
        }
    }
    else if (indexPath.section == 20)
    {
        [cell.backgroundCellView setImage:[UIImage imageNamed:@"semiCell"]];
        if (indexPath.row == 0)
        {
            [cell.team1Name setText:@"[1 H]"];
            [cell.team2Name setText:@"[2 G]"];
            [cell.startTime setText:@"1:00 AM"];
            [cell.team1ImageView setImage:[UIImage imageNamed:@"unknowFlag"]];
            [cell.team2ImageView setImage:[UIImage imageNamed:@"unknowFlag"]];
        }
    }
    else if (indexPath.section == 21)
    {
        [cell.backgroundCellView setImage:[UIImage imageNamed:@"semiCell"]];
        if (indexPath.row == 0)
        {
            [cell.team1Name setText:@"???"];
            [cell.team2Name setText:@"???"];
            [cell.startTime setText:@"9:00 PM"];
            [cell.team1ImageView setImage:[UIImage imageNamed:@"unknowFlag"]];
            [cell.team2ImageView setImage:[UIImage imageNamed:@"unknowFlag"]];
        }
    }
    else if (indexPath.section == 22)
    {
        [cell.backgroundCellView setImage:[UIImage imageNamed:@"semiCell"]];
        if (indexPath.row == 0)
        {
            [cell.team1Name setText:@"???"];
            [cell.team2Name setText:@"???"];
            [cell.startTime setText:@"1:00 AM"];
            [cell.team1ImageView setImage:[UIImage imageNamed:@"unknowFlag"]];
            [cell.team2ImageView setImage:[UIImage imageNamed:@"unknowFlag"]];
        }
        else if (indexPath.row == 1)
        {
            [cell.team1Name setText:@"???"];
            [cell.team2Name setText:@"???"];
            [cell.startTime setText:@"9:00 PM"];
            [cell.team1ImageView setImage:[UIImage imageNamed:@"unknowFlag"]];
            [cell.team2ImageView setImage:[UIImage imageNamed:@"unknowFlag"]];
        }
    }
    else if (indexPath.section == 23)
    {
        [cell.backgroundCellView setImage:[UIImage imageNamed:@"semiCell"]];
        if (indexPath.row == 0)
        {
            [cell.team1Name setText:@"???"];
            [cell.team2Name setText:@"???"];
            [cell.startTime setText:@"1:00 AM"];
            [cell.team1ImageView setImage:[UIImage imageNamed:@"unknowFlag"]];
            [cell.team2ImageView setImage:[UIImage imageNamed:@"unknowFlag"]];
        }
    }
    else if (indexPath.section == 24)
    {
        [cell.backgroundCellView setImage:[UIImage imageNamed:@"semiCell"]];
        if (indexPath.row == 0)
        {
            [cell.team1Name setText:@"???"];
            [cell.team2Name setText:@"???"];
            [cell.startTime setText:@"1:00 AM"];
            [cell.team1ImageView setImage:[UIImage imageNamed:@"unknowFlag"]];
            [cell.team2ImageView setImage:[UIImage imageNamed:@"unknowFlag"]];
        }
        else if (indexPath.row == 1)
        {
            [cell.team1Name setText:@"???"];
            [cell.team2Name setText:@"???"];
            [cell.startTime setText:@"1:00 PM"];
            [cell.team1ImageView setImage:[UIImage imageNamed:@"unknowFlag"]];
            [cell.team2ImageView setImage:[UIImage imageNamed:@"unknowFlag"]];
        }
    }
    else if (indexPath.section == 25)
    {
        if (indexPath.row == 0)
        {
            [cell.backgroundCellView setImage:[UIImage imageNamed:@"silverCell"]];
            [cell.team1Name setText:@"???"];
            [cell.team2Name setText:@"???"];
            [cell.startTime setText:@"1:00 AM"];
            [cell.team1ImageView setImage:[UIImage imageNamed:@"unknowFlag"]];
            [cell.team2ImageView setImage:[UIImage imageNamed:@"unknowFlag"]];
        }
    }
    else
    {
        if (indexPath.row == 0)
        {
            [cell.backgroundCellView setImage:[UIImage imageNamed:@"goldenCell"]];
            [cell.team1Name setText:@"???"];
            [cell.team2Name setText:@"???"];
            [cell.startTime setText:@"1:00 AM"];
            [cell.team1ImageView setImage:[UIImage imageNamed:@"unknowFlag"]];
            [cell.team2ImageView setImage:[UIImage imageNamed:@"unknowFlag"]];
        }
    }
    
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    SoccerBorad* soccerBoradVC = [[SoccerBorad alloc] init];
//    soccerBoradVC s
    [self.navigationController pushViewController:soccerBoradVC animated:YES];
}

@end
