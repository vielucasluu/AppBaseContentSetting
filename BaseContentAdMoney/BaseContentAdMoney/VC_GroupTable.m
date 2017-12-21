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
    if ([self respondsToSelector:@selector(edgesForExtendedLayout)])
        self.edgesForExtendedLayout = UIRectEdgeNone;
    [self setTitle:@"Groups"];
    UIImage *backImage = [[UIImage imageNamed:@"backImage"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIBarButtonItem *leftBtn = leftBtn = [[UIBarButtonItem alloc] initWithImage:backImage
                                                                          style:UIBarButtonItemStyleDone
                                                                         target:self
                                                                         action:@selector(backButtonTapped)];
    self.navigationItem.leftBarButtonItem = leftBtn;
    
    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStyleGrouped];
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
-(void)backButtonTapped
{
    [self.navigationController popViewControllerAnimated:YES];
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
    
    UIImageView* backgroundView = [[UIImageView alloc] initWithFrame:cell.bounds];
    [backgroundView setImage: [UIImage imageNamed:@"silverCell"]];
    [cell setBackgroundView:backgroundView];
    
    NSArray* groups = [[ApplicationDataHandler groups] objectAtIndex:indexPath.section];
    [cell.textLabel setText:[groups objectAtIndex:indexPath.row]];
    [cell.textLabel setTextColor:[UIColor whiteColor]];
    
//    [cell addConstraint:[NSLayoutConstraint constraintWithItem:imageView
//                                                     attribute:NSLayoutAttributeTop
//                                                     relatedBy:NSLayoutRelationEqual
//                                                        toItem:cell
//                                                     attribute:NSLayoutAttributeTop
//                                                    multiplier:1.0
//                                                      constant:0.0]];
//    [cell addConstraint:[NSLayoutConstraint constraintWithItem:imageView
//                                                     attribute:NSLayoutAttributeRight
//                                                     relatedBy:NSLayoutRelationEqual
//                                                        toItem:cell
//                                                     attribute:NSLayoutAttributeRight
//                                                    multiplier:1.0
//                                                      constant:0.0]];
//    [cell addConstraint:[NSLayoutConstraint constraintWithItem:imageView
//                                                     attribute:NSLayoutAttributeBottom
//                                                     relatedBy:NSLayoutRelationEqual
//                                                        toItem:cell
//                                                     attribute:NSLayoutAttributeBottom
//                                                    multiplier:1.0
//                                                      constant:0.0]];
//    [cell addConstraint:[NSLayoutConstraint constraintWithItem:imageView
//                                                     attribute:NSLayoutAttributeWidth
//                                                     relatedBy:NSLayoutRelationEqual
//                                                        toItem:cell
//                                                     attribute:NSLayoutAttributeHeight
//                                                    multiplier:1.3
//                                                      constant:0.0]];
    
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
    [pointLabel setTextColor:[UIColor whiteColor]];
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
