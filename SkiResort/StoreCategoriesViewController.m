//
//  StoreCategoriesViewController.m
//  SkiResort
//
//  Created by Billy Connolly on 1/30/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "StoreCategoriesViewController.h"
#import "StoreDetailedViewController.h"
#import "SkiResortAppDelegate.h"

@implementation StoreCategoriesViewController

/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
    }
    return self;
}
*/


- (IBAction)openCategory:(id)sender{
	int category = ((UIButton *)sender).tag;
	StoreDetailedViewController *sdvc = [[StoreDetailedViewController alloc] initWithNibName:@"StoreDetailedViewController" bundle: nil category:category];
	SkiResortAppDelegate *del = [[UIApplication sharedApplication] delegate];
	[del.navController pushViewController: sdvc animated: YES];
	[sdvc release];
}


- (IBAction)back{
	SkiResortAppDelegate *del = [[UIApplication sharedApplication] delegate];
	[del.navController popViewControllerAnimated: YES];
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
