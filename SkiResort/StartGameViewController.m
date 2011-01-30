//
//  StartGameViewController.m
//  SkiResort
//
//  Created by Billy Connolly on 1/28/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "StartGameViewController.h"
#import "SkiResortAppDelegate.h"
#import "MainScreenViewController.h"

@implementation StartGameViewController
@synthesize fraName;
@synthesize monSlide;
@synthesize popSlide;
@synthesize hide;

- (void)viewWillAppear:(BOOL)animated{
	if([[NSUserDefaults standardUserDefaults] boolForKey: @"GameInProgress"]){
		UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Game In Progress" message:@"You currently have a game in progress. Starting a new game will erase all data involved with the current game." delegate:nil cancelButtonTitle:@"Okay" otherButtonTitles:nil];
		[alert show];
		[alert release];
	}
}

- (IBAction)startGame{
	SkiResortAppDelegate *del = [[UIApplication sharedApplication] delegate];
	[del startNewGame: fraName.text money: (int)monSlide.value population: (int)popSlide.value];
	MainScreenViewController *msvc = [[MainScreenViewController alloc] initWithNibName:@"MainScreenViewController" bundle:nil];
	[del.navController pushViewController:msvc animated: YES];
	[msvc release];
	[self dismissModalViewControllerAnimated: YES];
}

- (IBAction)startEditing{
	[hide setEnabled: YES];
}

- (IBAction)back{
	[self dismissModalViewControllerAnimated: YES];
}

- (IBAction)stopEditing{
	[hide setEnabled: NO];
	[fraName resignFirstResponder];
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
