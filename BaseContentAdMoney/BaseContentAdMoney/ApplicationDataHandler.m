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
        _manager = [[AFHTTPSessionManager alloc] init];
        [_manager.requestSerializer setValue:@"application/x-www-form-urlencoded; charset=UTF-8" forHTTPHeaderField:@"Content-Type"];
        _manager.responseSerializer = [AFJSONResponseSerializer serializer];
        [_manager.responseSerializer setAcceptableContentTypes:[NSSet setWithObject:@"text/html"]];
    }
    return self;
}

-(void)requestAPIFromSender:(NSObject<ApplicationDataHandlerDelegate>*)sender
{
    __block NSObject<ApplicationDataHandlerDelegate>* weakSender = sender;
    [_manager POST:@"https://appid-ios.zz-app.com/frontApi/getAboutUs?appid=2562017"
       parameters:nil
         progress:^(NSProgress * _Nonnull downloadProgress) {
             //
         }
          success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
              if ([weakSender respondsToSelector:@selector(LVLDataRequestComplete:)]) {
                  [weakSender LVLDataRequestComplete:responseObject];
              }
          }
          failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
              if ([weakSender respondsToSelector:@selector(LVLDataRequestComplete:)]) {
                  [weakSender LVLDataRequestComplete:nil];
              }
          }];
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
