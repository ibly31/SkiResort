//
//  ContinueGameViewController.m
//  SkiResort
//
//  Created by Billy Connolly on 1/28/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ContinueGameViewController.h"
#import "SkiResortAppDelegate.h"
#import "GameDataModel.h"
#import "MainScreenViewController.h"

@implementation ContinueGameViewController
@synthesize tv;
@synthesize topLabel;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
	self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
	if(self){
		if([[NSUserDefaults standardUserDefaults] boolForKey: @"GameInProgress"]){
			SkiResortAppDelegate *del = [[UIApplication sharedApplication] delegate];
			[del loadGame];
		}
	}
	return self;
}

- (IBAction)loadGame{
	SkiResortAppDelegate *del = [[UIApplication sharedApplication] delegate];
	MainScreenViewController *msvc = [[MainScreenViewController alloc] initWithNibName:@"MainScreenViewController" bundle:nil];
	[del.navController pushViewController: msvc animated: YES];
	[msvc release];
	[self dismissModalViewControllerAnimated: YES];
}

- (void)viewWillAppear:(BOOL)animated{
	if([[NSUserDefaults standardUserDefaults] boolForKey: @"GameInProgress"]){
		SkiResortAppDelegate *del = [[UIApplication sharedApplication] delegate];
		topLabel.text = [[del gdm] franchiseName];
	}
}

- (IBAction)back{
	[self dismissModalViewControllerAnimated: YES];
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
