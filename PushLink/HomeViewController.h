//
//  HomeViewController.h
//  PushLink
//
//  Created by David Stalnaker on 11/3/11.
//  Copyright (c) 2011 Rochester Institute of Technology. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HistoryFetchedResultsController.h"
#import "PushlinkServerConnection.h"

@interface HomeViewController : UIViewController

@property(strong, nonatomic) HistoryFetchedResultsController *fetchedResultsController;
@property(strong, nonatomic) IBOutlet UILabel *passcodeLabel;
@property(strong, nonatomic) PushlinkServerConnection *server;

@end
