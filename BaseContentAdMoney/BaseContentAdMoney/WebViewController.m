//
//  WebViewController.m
//  BaseContentAdMoney
//
//  Created by Lucas Luu on 12/21/17.
//  Copyright © 2017 Lucas Luu. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()

@property (strong, nonatomic) UIWebView* webView;

@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    _webView = [[UIWebView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:_webView];
    NSURL* url = [NSURL URLWithString:_urlString];
    NSURLRequest* request = [NSURLRequest requestWithURL:url];
    [_webView loadRequest:request];
}

-(void)setUrlString:(NSString *)urlString
{
    _urlString = urlString;
    NSURL* url = [NSURL URLWithString:urlString];
    NSURLRequest* request = [NSURLRequest requestWithURL:url];
    [_webView loadRequest:request];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
