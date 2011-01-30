//
//  MainScreenViewController.m
//  SkiResort
//
//  Created by Billy Connolly on 1/29/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MainScreenViewController.h"
#import "OptionsViewController.h"

@implementation MainScreenViewController
@synthesize htv;
@synthesize hmv;
@synthesize hbv;
@synthesize pmv;
@synthesize mv;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
		[self.view setBackgroundColor: [UIColor blackColor]];
        htv = [[HUDTopView alloc] initWithFrame: CGRectMake(0.0f, 0.0f, 320.0f, 40.0f)];
		hmv = [[HUDMiddleView alloc] initWithFrame: CGRectMake(0.0f, 40.0f, 320.0f, 360.0f)];
		hbv = [[HUDBottomView alloc] initWithFrame: CGRectMake(0.0f, 400.0f, 320.0f, 60.0f)];
		[self.view addSubview: htv];
		[self.view addSubview: hmv];
		[self.view addSubview: hbv];
		[htv setParent: self];
		[hmv setParent: self];
		[hbv setParent: self];
		
		pmv = [[PauseMenuView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 320.0f, 460.0f) delegate: self];
		[self.view addSubview: pmv];
		
		mv = [[MapView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 320.0f, 460.0f) delegate:self];
		[self.view addSubview: mv];
	}
    return self;
}

- (void)showOptions{
	OptionsViewController *ovc = [[OptionsViewController alloc] initWithNibName:@"OptionsViewController" bundle: nil];
	[self presentModalViewController: ovc animated: YES];
}

- (void)showMap{
	[mv show];
	[htv pushOut];
	[hmv pushOut];
	[hbv pushOut];
}

- (void)hideMap{
	[mv hide];
	[htv pullIn];
	[hmv pullIn];
	[hbv pullIn];
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
