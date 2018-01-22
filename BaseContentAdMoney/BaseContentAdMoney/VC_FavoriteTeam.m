//
//  VC_FavoriteTeam.m
//  BaseContentAdMoney
//
//  Created by Lucas Luu on 1/10/18.
//  Copyright © 2018 Lucas Luu. All rights reserved.
//

#import "VC_FavoriteTeam.h"

@interface VC_FavoriteTeam ()<UITableViewDataSource, UITableViewDelegate>
{
    NSArray*     _dataSource;
}
@property (strong, nonatomic) UITableView* tableView;

@end

@implementation VC_FavoriteTeam

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
    _dataSource = [[ApplicationDataHandler shareInstance] listFavoriteTeam];
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    _dataSource = [[ApplicationDataHandler shareInstance] listFavoriteTeam];
    [_tableView reloadData];
}

-(void)backButtonTapped
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDataSource
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _dataSource.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell* cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    
    UIImageView* backgroundView = [[UIImageView alloc] initWithFrame:cell.bounds];
    [backgroundView setImage: [UIImage imageNamed:@"goldenCell"]];
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
    [pointLabel setText:[[ApplicationDataHandler shareInstance] nextDateBattleOfCountry:[groups objectAtIndex:indexPath.row]]];
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
