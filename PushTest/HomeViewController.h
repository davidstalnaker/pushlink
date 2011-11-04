//
//  HomeViewController.h
//  PushTest
//
//  Created by David Stalnaker on 11/3/11.
//  Copyright (c) 2011 Rochester Institute of Technology. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HistoryFetchedResultsController.h"

@interface HomeViewController : UIViewController

@property(strong, nonatomic) HistoryFetchedResultsController *fetchedResultsController;
@property(strong, nonatomic) IBOutlet UILabel *passcodeLabel;

@end
