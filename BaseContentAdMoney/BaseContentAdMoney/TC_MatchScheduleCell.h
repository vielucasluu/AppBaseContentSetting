//
//  TC_MatchScheduleCell.h
//  BaseContentAdMoney
//
//  Created by Fanta on 12/20/17.
//  Copyright © 2017 Lucas Luu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TC_MatchScheduleCell : UITableViewCell

@property (strong, nonatomic) UIImageView*      team1ImageView;
@property (strong, nonatomic) UIImageView*      team2ImageView;
@property (strong, nonatomic) UILabel*          team1Name;
@property (strong, nonatomic) UILabel*          team2Name;
@property (strong, nonatomic) UILabel*          team1Score;
@property (strong, nonatomic) UILabel*          team2Score;
@property (strong, nonatomic) UILabel*          startTime;
@property (strong, nonatomic) UIImageView*      backgroundCellView;
@end
