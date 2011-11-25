//
//  PushlinkServerConnection.h
//  PushLink
//
//  Created by David Stalnaker on 11/24/11.
//  Copyright (c) 2011 Rochester Institute of Technology. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSURLConnection+Blocks.h"

@interface PushlinkServerConnection : NSObject

@property (strong, nonatomic) NSString *deviceToken;
@property (strong, nonatomic) NSString *passcode;

- (void)updatePasscode;
- (void)regeneratePasscode;

@end
