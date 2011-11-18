//
//  SettingsViewController.h
//  PushLink
//
//  Created by David Stalnaker on 11/5/11.
//  Copyright (c) 2011 Rochester Institute of Technology. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SettingsViewController : UITableViewController

@property (weak, nonatomic) IBOutlet UITableViewCell *regeneratePasscodeLabel;
@property (weak, nonatomic) IBOutlet UITableViewCell *passcodeLabel;

@end
