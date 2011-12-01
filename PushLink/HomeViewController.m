//
//  HomeViewController.m
//  PushLink
//
//  Created by David Stalnaker on 11/3/11.
//  Copyright (c) 2011 Rochester Institute of Technology. All rights reserved.
//

#import "HomeViewController.h"
#import "HistoryViewController.h"

@implementation HomeViewController

@synthesize fetchedResultsController, passcodeLabel, server;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void) viewWillAppear:(BOOL)animated {
    [self.navigationController setNavigationBarHidden:YES animated:YES];
    
    [self.server addObserver:self forKeyPath:@"passcode" options:0 context:NULL];
    self.passcodeLabel.text = self.server.passcode;
    [super viewWillAppear:animated];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"viewHistory"]) {
        ((HistoryViewController*)[segue destinationViewController]).fetchedResultsController = self.fetchedResultsController;
    }
    else if ([[segue identifier] isEqualToString:@"viewSettings"]) {
        ((SettingsViewController*)[segue destinationViewController]).server = self.server;
    }
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)observeValueForKeyPath:(NSString *)keyPath
                      ofObject:(id)object
                        change:(NSDictionary *)change
                       context:(void *)context
{
    if (object == self.server && [keyPath isEqual:@"passcode"]) {
        self.passcodeLabel.text = self.server.passcode;
    }
}

@end
