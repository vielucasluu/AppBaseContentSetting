//
//  VC_MainPageHome.m
//  BaseContentAdMoney
//
//  Created by Lucas Luu on 1/11/18.
//  Copyright © 2018 Lucas Luu. All rights reserved.
//

#import "VC_MainPageHome.h"
#import "VC_GroupTable.h"
#import "VC_MatchSchedule.h"
#import "VC_FavoriteTeam.h"

@interface VC_MainPageHome ()

@end

@implementation VC_MainPageHome

- (instancetype)init
{
    [[UITabBarItem appearance] setTitleTextAttributes:@{ NSForegroundColorAttributeName : [UIColor blackColor] }
                                             forState:UIControlStateNormal];
    [[UITabBarItem appearance] setTitleTextAttributes:@{ NSForegroundColorAttributeName : [UIColor LVL_colorWithHexString:@"007aff" andAlpha:1.0] }
                                             forState:UIControlStateSelected];
    
    VC_MatchSchedule* matchVC = [[VC_MatchSchedule alloc] init];
    UINavigationController* firstNavigationController = [[UINavigationController alloc] initWithRootViewController:matchVC];
    firstNavigationController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Schedules"
                                                                         image:[[UIImage imageNamed:@"tabbar_dashboard"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]
                                                                 selectedImage:[[UIImage imageNamed:@"tabbar_dashboard"] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate]];
    [firstNavigationController.tabBarItem setTag:0];
    //    firstNavigationController.tabBarItem.imageInsets = UIEdgeInsetsMake(6, 0, -6, 0);
    
    VC_GroupTable* groupVC = [[VC_GroupTable alloc] init];
    UINavigationController* secondNavigationController = [[UINavigationController alloc] initWithRootViewController:groupVC];
    secondNavigationController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Groups"
                                                                          image:[[UIImage imageNamed:@"tabbar_search"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]
                                                                  selectedImage:[[UIImage imageNamed:@"tabbar_search"] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate]];
    [secondNavigationController.tabBarItem setTag:1];
    
    VC_FavoriteTeam* favoriteVC = [[VC_FavoriteTeam alloc] init];
    UINavigationController* thirdNavigationController = [[UINavigationController alloc] initWithRootViewController:favoriteVC];
    thirdNavigationController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Favorites"
                                                                         image:[[UIImage imageNamed:@"tabbar_search"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]
                                                                 selectedImage:[[UIImage imageNamed:@"tabbar_search"] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate]];
    [thirdNavigationController.tabBarItem setTag:1];
    
    self = [super init];
    if (self) {
        [self setViewControllers:@[firstNavigationController, secondNavigationController, thirdNavigationController]];
        
        [self setSelectedIndex:0];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return 0;
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
