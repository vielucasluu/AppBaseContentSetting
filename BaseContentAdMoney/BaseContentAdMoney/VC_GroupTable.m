//
//  VC_GroupTable.m
//  BaseContentAdMoney
//
//  Created by Fanta on 12/20/17.
//  Copyright © 2017 Lucas Luu. All rights reserved.
//

#import "VC_GroupTable.h"

@interface VC_GroupTable ()<UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) UITableView* tableView;

@end

@implementation VC_GroupTable

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle:@"Groups"];
    
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    [_tableView setBackgroundColor:[UIColor whiteColor]];
    [_tableView setDataSource:self];
    [_tableView setDelegate:self];
    [self.view addSubview:_tableView];
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:NO];
}

#pragma mark - UITableViewDataSource
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [ApplicationDataHandler groups].count;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSArray* array =  [[ApplicationDataHandler groups] objectAtIndex:section];
    return  array.count;
}

-(NSString*) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if (section == 0) {
        return @"Group A";
    }
    if (section == 1) {
        return @"Group B";
    }
    if (section == 2) {
        return @"Group C";
    }
    if (section == 3) {
        return @"Group D";
    }
    if (section == 4) {
        return @"Group E";
    }
    if (section == 5) {
        return @"Group F";
    }
    if (section == 6) {
        return @"Group G";
    }
    return @"Group H";
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell* cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    
    NSArray* groups = [[ApplicationDataHandler groups] objectAtIndex:indexPath.section];
    [cell.textLabel setText:[groups objectAtIndex:indexPath.row]];
    
    UIImageView* imageView = [[UIImageView alloc] init];
    [imageView setTranslatesAutoresizingMaskIntoConstraints:NO];
    [imageView setImage: [UIImage imageNamed:cell.textLabel.text]];
    [cell addSubview:imageView];
    [cell addConstraint:[NSLayoutConstraint constraintWithItem:imageView
                                                     attribute:NSLayoutAttributeTop
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:cell
                                                     attribute:NSLayoutAttributeTop
                                                    multiplier:1.0
                                                      constant:0.0]];
    [cell addConstraint:[NSLayoutConstraint constraintWithItem:imageView
                                                     attribute:NSLayoutAttributeRight
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:cell
                                                     attribute:NSLayoutAttributeRight
                                                    multiplier:1.0
                                                      constant:0.0]];
    [cell addConstraint:[NSLayoutConstraint constraintWithItem:imageView
                                                     attribute:NSLayoutAttributeBottom
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:cell
                                                     attribute:NSLayoutAttributeBottom
                                                    multiplier:1.0
                                                      constant:0.0]];
    [cell addConstraint:[NSLayoutConstraint constraintWithItem:imageView
                                                     attribute:NSLayoutAttributeWidth
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:cell
                                                     attribute:NSLayoutAttributeHeight
                                                    multiplier:1.3
                                                      constant:0.0]];
    
    UILabel* pointLabel = [[UILabel alloc] init];
    [pointLabel setTextAlignment:NSTextAlignmentRight];
    [pointLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
    [pointLabel setText:@"0 pt"];
    [cell addSubview:pointLabel];
    [cell addConstraint:[NSLayoutConstraint constraintWithItem:pointLabel
                                                     attribute:NSLayoutAttributeTop
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:cell
                                                     attribute:NSLayoutAttributeTop
                                                    multiplier:1.0
                                                      constant:0.0]];
    [cell addConstraint:[NSLayoutConstraint constraintWithItem:pointLabel
                                                     attribute:NSLayoutAttributeRight
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:imageView
                                                     attribute:NSLayoutAttributeLeft
                                                    multiplier:1.0
                                                      constant:-10.0]];
    [cell addConstraint:[NSLayoutConstraint constraintWithItem:pointLabel
                                                     attribute:NSLayoutAttributeBottom
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:cell
                                                     attribute:NSLayoutAttributeBottom
                                                    multiplier:1.0
                                                      constant:0.0]];
    [cell addConstraint:[NSLayoutConstraint constraintWithItem:pointLabel
                                                     attribute:NSLayoutAttributeLeft
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:cell
                                                     attribute:NSLayoutAttributeLeft
                                                    multiplier:1.0
                                                      constant:0.0]];
    
    return cell;
}

@end
