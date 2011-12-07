//
//  PushlinkServerConnection.m
//  PushLink
//
//  Created by David Stalnaker on 11/24/11.
//  Copyright (c) 2011 Rochester Institute of Technology. All rights reserved.
//

#import "PushlinkServerConnection.h"

@implementation PushlinkServerConnection

@synthesize passcode, deviceToken;

- (id)init {
    if (self = [super init]) {
        self.passcode = @"test";
    }
    return self;
}

+ (void)getUrlFromId:(NSString *)urlId withCallback:(void (^)(NSString *url))callback {
    NSString *urlString = [NSString stringWithFormat: @"http://pushlink.david-stalnaker.com/getUrl?url_id=%@", urlId];
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:urlString]];
    [NSURLConnection asyncRequest:request
                          success:^(NSData *data, NSURLResponse *response) {
                              NSError *error;
                              NSDictionary *jsonobj = [NSJSONSerialization JSONObjectWithData:data options:0 error:&error];
                              NSString *url = (NSString *)[jsonobj objectForKey:@"url"];
                              callback(url);
                          }
                          failure:^(NSData *data, NSError *error) {
                              NSLog(@"Error: %@", error);
                          }];
}


- (void)updatePasscode {
    NSString *myRequestString = [NSString stringWithFormat: @"token=%@", self.deviceToken];
    NSData *myRequestData = [NSData dataWithBytes: [myRequestString UTF8String] length: [myRequestString length]];
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL: [NSURL URLWithString: @"http://pushlink.david-stalnaker.com/register"]];
    [request setHTTPMethod: @"POST"];
    [request setHTTPBody: myRequestData];
    [NSURLConnection asyncRequest:request
                          success:^(NSData *data, NSURLResponse *response) {
                              NSError *error;
                              NSDictionary *jsonobj = [NSJSONSerialization JSONObjectWithData:data options:0 error:&error];
                              dispatch_async( dispatch_get_main_queue(), ^{
                                  self.passcode = (NSString *)[jsonobj objectForKey:@"passcode"];
                              });
                          }
                          failure:^(NSData *data, NSError *error) {
                              NSLog(@"Error: %@", error);
                          }];
}

- (void)regeneratePasscode {
    NSString *myRequestString = [NSString stringWithFormat: @"token=%@", self.deviceToken];
    NSData *myRequestData = [NSData dataWithBytes: [myRequestString UTF8String] length: [myRequestString length]];
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL: [NSURL URLWithString: @"http://pushlink.david-stalnaker.com/reregister"]];
    [request setHTTPMethod: @"POST"];
    [request setHTTPBody: myRequestData];
    [NSURLConnection asyncRequest:request
                          success:^(NSData *data, NSURLResponse *response) {
                              NSError *error;
                              NSDictionary *jsonobj = [NSJSONSerialization JSONObjectWithData:data options:0 error:&error];
                              dispatch_async( dispatch_get_main_queue(), ^{
                                  self.passcode = (NSString *)[jsonobj objectForKey:@"passcode"];
                              });
                          }
                          failure:^(NSData *data, NSError *error) {
                              NSLog(@"Error: %@", error);
                          }];
}

@end
