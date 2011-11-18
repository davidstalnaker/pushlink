//
//  HistoryFetchedResultsController.h
//  PushLink
//
//  Created by David Stalnaker on 11/3/11.
//  Copyright (c) 2011 Rochester Institute of Technology. All rights reserved.
//

#import <CoreData/CoreData.h>

@interface HistoryFetchedResultsController : NSObject <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) UITableView  *tableView;

- (id)initWithManagedObjectContext:(NSManagedObjectContext *)managedObjectContext;
- (void)configureCell:(UITableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath;
- (void)insertLink:(NSString *)url;
- (void)openLink:(NSString *)url;


@end
