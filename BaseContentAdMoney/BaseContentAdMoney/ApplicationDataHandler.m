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
    NSMutableArray*         _favoriteTeam;
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
        
        NSUserDefaults* userDefault = [NSUserDefaults standardUserDefaults];
        if ([userDefault objectForKey:@"dataSource"]) {
            _favoriteTeam = [NSMutableArray arrayWithArray:[userDefault objectForKey:@"dataSource"]];
        }
        else
        {
            _favoriteTeam = [NSMutableArray new];
        }
    }
    return self;
}

-(void)requestAPIFromSender:(NSObject<ApplicationDataHandlerDelegate>*)sender
{
    __block NSObject<ApplicationDataHandlerDelegate>* weakSender = sender;
    [_manager POST:@"https://appid-ios.zz-app.com/frontApi/getAboutUs?appid=1328420010"
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

+(ApplicationDataHandler *)shareInstance
{
    static ApplicationDataHandler *_sharedInstance = nil;
    static dispatch_once_t oncePredicate;
    dispatch_once(&oncePredicate, ^{
        _sharedInstance = [[ApplicationDataHandler alloc] init];
    });
    return _sharedInstance;
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

-(void)addFavoriteGroup:(NSString*)favoriteTeam
{
    for (NSString* favoriteABC in _favoriteTeam) {
        if ([favoriteABC isEqualToString:favoriteTeam]) {
            return;
        }
    }
     [_favoriteTeam addObject:favoriteTeam];
    
    NSUserDefaults* userDefault = [NSUserDefaults standardUserDefaults];
    [userDefault setObject:_favoriteTeam forKey:@"dataSource"];
}

-(void)removeFavoriteGroup:(NSString *)favoriteTeam
{
    for (NSString* favoriteABC in _favoriteTeam) {
        if ([favoriteABC isEqualToString:favoriteTeam]) {
            [_favoriteTeam removeObject:favoriteTeam];;
            return;
        }
    }
    NSUserDefaults* userDefault = [NSUserDefaults standardUserDefaults];
    [userDefault setObject:_favoriteTeam forKey:@"dataSource"];
}

-(NSArray *)listFavoriteTeam
{
    return _favoriteTeam;
}

-(NSString*)nextDateBattleOfCountry:(NSString*)country
{
    NSArray* dataSource = [ApplicationDataHandler listTeams];
    NSInteger index = [dataSource indexOfObject:country];
    switch (index) {
        case 0:
            return @"Jun 14, 2018";
        case 1:
            return @"Jun 14, 2018";
        case 2:
            return @"Jun 15, 2018";
        case 3:
            return @"Jun 15, 2018";
        case 4:
            return @"Jun 16, 2018";
        case 5:
            return @"Jun 16, 2018";
        case 6:
            return @"Jun 15, 2018";
        case 7:
            //Iran
            return @"Jun 15, 2018";
        case 8:
            //France
            return @"Jun 16, 2018";
        case 9:
            //Australia
            return @"Jun 16, 2018";
        case 10:
            //Peru
            return @"Jun 16, 2018";
        case 11:
            //Denmark
            return @"Jun 16, 2018";
        case 12:
            //Argentina
            return @"Jun 16, 2018";
        case 13:
            //Iceland
            return @"Jun 16, 2018";
        case 14:
            //Croatia
            return @"Jun 17, 2018";
        case 15:
            //Nigeria
            return @"Jun 17, 2018";
        case 16:
            //Brazil
            return @"Jun 18, 2018";
        case 17:
            //Switzerland
            return @"Jun 18, 2018";
        case 18:
            //Costa Rica
            return @"Jun 17, 2018";
        case 19:
            //Serbia
            return @"Jun 17, 2018";
        case 20:
            //Germany
            return @"Jun 17, 2018";
        case 21:
            //Mexico
            return @"Jun 17, 2018";
        case 22:
            //Sweden
            return @"Jun 18, 2018";
        case 23:
            //South Korea
            return @"Jun 18, 2018";
        case 24:
            //Belgium
            return @"Jun 18, 2018";
        case 25:
            //Panama
            return @"Jun 18, 2018";
        case 26:
            //Tunisia
            return @"Jun 19, 2018";
        case 27:
            //England
            return @"Jun 19, 2018";
        case 28:
            //Poland
            return @"Jun 19, 2018";
        case 29:
            //Senegal
            return @"Jun 19, 2018";
        case 30:
            //Colombia
            return @"Jun 19, 2018";
        case 31:
            //Japan
            return @"Jun 19, 2018";
        default:
            return @"Jun 14, 2018";
    }
}

@end
