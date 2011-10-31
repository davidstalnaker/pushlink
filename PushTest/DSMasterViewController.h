//
//  DSMasterViewController.h
//  PushTest
//
//  Created by David Stalnaker on 10/31/11.
//  Copyright (c) 2011 Rochester Institute of Technology. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <CoreData/CoreData.h>

@interface DSMasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end
