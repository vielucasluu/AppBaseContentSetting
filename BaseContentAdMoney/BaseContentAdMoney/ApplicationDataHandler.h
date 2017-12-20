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

+(NSArray*)listTeams;
+(NSArray*)groups;

@end
