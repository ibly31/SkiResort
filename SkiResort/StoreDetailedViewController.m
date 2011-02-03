    //
//  StoreDetailedViewController.m
//  SkiResort
//
//  Created by Billy Connolly on 2/2/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "StoreDetailedViewController.h"
#import "SkiResortAppDelegate.h"


@implementation StoreDetailedViewController
@synthesize table;
@synthesize description;

// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil category:(int)category{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
		table = [[UITableView alloc] initWithFrame:	CGRectMake(0.0f, 44.0f, 320.0f, 180.0f)];
		[self.view addSubview: table];
		stdd = [[StoreDataDelegate alloc] initWithCategory:category];
		[table setDelegate: stdd];
		[table setDataSource: stdd];
		stdd.store = self;
    }
    return self;
}

- (void)selectedNewObject:(NSString *)desc{
	[description setText: desc];
}

- (IBAction)back{
	SkiResortAppDelegate *del = [[UIApplication sharedApplication] delegate];
	[[del navController] popViewControllerAnimated: YES];
}
- (IBAction)purchase{
	NSIndexPath *index = [table indexPathForSelectedRow];
	NSString *name = [[[stdd storeObjects] objectAtIndex: [index row]] objectForKey: @"Name"];
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
