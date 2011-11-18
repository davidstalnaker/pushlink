//
//  DSMasterViewController.h
//  PushLink
//
//  Created by David Stalnaker on 10/31/11.
//  Copyright (c) 2011 Rochester Institute of Technology. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "HistoryFetchedResultsController.h"

@interface HistoryViewController : UITableViewController

@property (strong, nonatomic) HistoryFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end
