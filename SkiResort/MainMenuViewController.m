//
//  MainMenuViewController.m
//  SkiResort
//
//  Created by Billy Connolly on 1/28/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MainMenuViewController.h"
#import "StartGameViewController.h"
#import "ContinueGameViewController.h"
#import "OptionsViewController.h"


@implementation MainMenuViewController
@synthesize loadGame;

- (void)viewWillAppear:(BOOL)animated{
	[loadGame setEnabled: [[NSUserDefaults standardUserDefaults] boolForKey:@"GameInProgress"]];;
}

- (IBAction)startGame{
	StartGameViewController *sgvc = [[StartGameViewController alloc] initWithNibName:@"StartGameViewController" bundle:nil];
	[self presentModalViewController:sgvc animated:YES];
	[sgvc release];
}

- (IBAction)continueGame{
	ContinueGameViewController *cgvc = [[ContinueGameViewController alloc] initWithNibName:@"ContinueGameViewController" bundle:nil];
	[self presentModalViewController:cgvc animated:YES];
	[cgvc release];
}

- (IBAction)options{
	OptionsViewController *ovc = [[OptionsViewController alloc] initWithNibName:@"OptionsViewController" bundle:nil];
	[self presentModalViewController:ovc animated:YES];
	[ovc release];
}

- (IBAction)help{
	NSLog(@"Main Menu - Help");
}

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
