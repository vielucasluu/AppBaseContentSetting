//
//  VC_GroupTable.m
//  BaseContentAdMoney
//
//  Created by Fanta on 12/20/17.
//  Copyright © 2017 Lucas Luu. All rights reserved.
//

#import "VC_GroupTable.h"
#import "VC_FavoriteTeam.h"

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
//    self.navigationItem.leftBarButtonItem = leftBtn;
    
//    UIBarButtonItem *rightBtn = [[UIBarButtonItem alloc] initWithTitle:@"Favorite"
//                                                                 style:UIBarButtonItemStyleDone
//                                                                target:self
//                                                                action:@selector(rightBarButtonTapped)];
//    self.navigationItem.rightBarButtonItem = rightBtn;
    
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
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
//    return UIStatusBarStyleBlackOpaque;
//}

-(void)backButtonTapped
{
    [self.navigationController popViewControllerAnimated:YES];
}

-(void)rightBarButtonTapped
{
    VC_FavoriteTeam* favoriteTeam = [[VC_FavoriteTeam alloc] init];
    [self.navigationController pushViewController:favoriteTeam animated:YES];
    
//    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Favorite"
//                                                                   message:@"No one match will become in short time, please wait until June 14, 2018 with match of Russia and Saudi Arabia. Try follow your favorite team in Group Page"
//                                                            preferredStyle:UIAlertControllerStyleAlert];
//    UIAlertAction* okAction = [UIAlertAction actionWithTitle:@"OK"
//                                                       style:UIAlertActionStyleDefault
//                                                     handler:^(UIAlertAction * _Nonnull action) {
//                                                         [alert dismissViewControllerAnimated:YES completion:nil];
//                                                     }];
//    UIAlertAction* gotoGroupPage = [UIAlertAction actionWithTitle:@"Go to Group page"
//                                                            style:UIAlertActionStyleDefault
//                                                          handler:^(UIAlertAction * _Nonnull action) {
//                                                              [alert dismissViewControllerAnimated:YES completion:nil];
//                                                              [self.navigationController popViewControllerAnimated:YES];
//                                                              VC_GroupTable* groupVC = [[VC_GroupTable alloc] init];
//                                                              [self.navigationController pushViewController:groupVC animated:YES];
//                                                          }];
//    [alert addAction:okAction];
//    [alert addAction:gotoGroupPage];
//    [self presentViewController:alert animated:YES completion:nil];
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

#pragma mark - UITableViewDelegate
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    UIAlertController* alertVC = [UIAlertController alertControllerWithTitle:@"AddFavorite"
                                                                     message:@"Do you want to add this team to your favorite team list? All information about the Favorite Team will be prioritized for you. Make sure that you enable the Notifications feature for the app so that you do not miss anything about your team."
                                                              preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction* okAction = [UIAlertAction actionWithTitle:@"Ok"
                                                       style:UIAlertActionStyleDefault
                                                     handler:^(UIAlertAction * _Nonnull action) {
                                                         [alertVC dismissViewControllerAnimated:YES completion:nil];
                                                         
                                                         NSArray* groups = [[ApplicationDataHandler groups] objectAtIndex:indexPath.section];
                                                         [[ApplicationDataHandler shareInstance] addFavoriteGroup:[groups objectAtIndex:indexPath.row]];
                                                     }];
    UIAlertAction* cancelAction = [UIAlertAction actionWithTitle:@"Cancel"
                                                       style:UIAlertActionStyleDefault
                                                     handler:^(UIAlertAction * _Nonnull action) {
                                                         [alertVC dismissViewControllerAnimated:YES completion:nil];
                                                     }];
    [alertVC addAction:okAction];
    [alertVC addAction:cancelAction];
    [self presentViewController:alertVC animated:YES completion:nil];
}

@end
