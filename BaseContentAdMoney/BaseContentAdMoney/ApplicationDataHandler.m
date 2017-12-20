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

@end
