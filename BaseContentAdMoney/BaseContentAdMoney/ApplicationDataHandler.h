//
//  ApplicationDataHandler.h
//  BaseContentAdMoney
//
//  Created by Lucas Luu on 12/20/17.
//  Copyright © 2017 Lucas Luu. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ApplicationDataHandlerDelegate <NSObject>
@required
-(void)LVLDataRequestComplete:(id) responseValue;

@optional
-(void)LVLProgressUpdate:(NSProgress*) progress;
@end

@interface ApplicationDataHandler : NSObject

-(void)requestAPIFromSender:(NSObject<ApplicationDataHandlerDelegate>*)sender;

+(ApplicationDataHandler*)shareInstance;

+(NSArray*)listTeams;
+(NSArray*)groups;

-(void)addFavoriteGroup:(NSString*)favoriteTeam;
-(void)removeFavoriteGroup:(NSString*)favoriteTeam;
-(NSArray*)listFavoriteTeam;

-(NSString*)nextDateBattleOfCountry:(NSString*)country;

@end
