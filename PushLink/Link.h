//
//  Link.h
//  PushLink
//
//  Created by David Stalnaker on 11/18/11.
//  Copyright (c) 2011 Rochester Institute of Technology. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Link : NSManagedObject

@property (nonatomic, retain) NSString * url;
@property (nonatomic, retain) NSDate * timestamp;

@end
