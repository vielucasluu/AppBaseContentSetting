//
//  ApplicationDataHandler.m
//  BaseContentAdMoney
//
//  Created by Lucas Luu on 12/20/17.
//  Copyright © 2017 Lucas Luu. All rights reserved.
//

#import "ApplicationDataHandler.h"

@interface ApplicationDataHandler ()

{
    AFHTTPSessionManager*   _manager;
}

@end

@implementation ApplicationDataHandler

- (instancetype)init
{
    self = [super init];
    if (self) {
        _manager = [[AFHTTPSessionManager alloc] initWithBaseURL:[NSURL URLWithString:@"https://appid-ios.zz-app.com/frontApi/"]];
        _manager.responseSerializer = [AFJSONResponseSerializer serializer];
    }
    return self;
}

-(void)requestAPIFromSender:(NSObject<ApplicationDataHandlerDelegate>*)sender
{
    
}

+(NSArray*)listTeams
{
    return @[@"Russia",@"Saudi Arabia",@"Egypt",@"Uruguay",@"Portugal",@"Spain",@"Morocco",@"Iran",@"France",@"Australia",@"Peru",@"Denmark",@"Argentina",@"Iceland",@"Croatia",@"Nigeria",@"Brazil",@"Switzerland",@"Costa Rica",@"Serbia",@"Germany",@"Mexico",@"Sweden",@"South Korea",@"Belgium",@"Panama",@"Tunisia",@"England",@"Poland",@"Senegal",@"Colombia",@"Japan"];
}

+(NSArray*)groups
{
    return @[@[@"Russia",@"Saudi Arabia",@"Egypt",@"Uruguay"],
             @[@"Portugal",@"Spain",@"Morocco",@"Iran"],
             @[@"France",@"Australia",@"Peru",@"Denmark"],
             @[@"Argentina",@"Iceland",@"Croatia",@"Nigeria"],
             @[@"Brazil",@"Switzerland",@"Costa Rica",@"Serbia"],
             @[@"Germany",@"Mexico",@"Sweden",@"South Korea"],
             @[@"Belgium",@"Panama",@"Tunisia",@"England"],
             @[@"Poland",@"Senegal",@"Colombia",@"Japan"]];
}


@end
