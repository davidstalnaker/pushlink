//
//  SettingsViewController.h
//  PushLink
//
//  Created by David Stalnaker on 11/5/11.
//  Copyright (c) 2011 Rochester Institute of Technology. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PushlinkServerConnection.h"

@interface SettingsViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *passcodeLabel;
@property (strong, nonatomic) PushlinkServerConnection *server;
- (IBAction)regeneratePasscode:(id)sender;

@end
