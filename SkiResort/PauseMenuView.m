//
//  PauseMenuView.m
//  SkiResort
//
//  Created by Billy Connolly on 1/29/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "PauseMenuView.h"
#import "MainScreenViewController.h"


@implementation PauseMenuView
@synthesize backgroundImg;
@synthesize delegate;


- (id)initWithFrame:(CGRect)frame delegate:(MainScreenViewController *)del{
    
    self = [super initWithFrame:frame];
    if (self) {
		NSString *path = [[NSBundle mainBundle] pathForResource:@"PauseMenu" ofType:@"png"];
		NSData *texData = [[NSData alloc] initWithContentsOfFile:path];
        self.backgroundImg = [[UIImage alloc] initWithData: texData];
		self.delegate = del;
		[self setBackgroundColor: [UIColor clearColor]];
		[self setAlpha: 0.0f];
		[self setUserInteractionEnabled: YES];
    }
    return self;
}

- (void)show{
	[self setFrame: CGRectMake(320.0f, 40.0f, 0.0f, 0.0f)];
	[UIView beginAnimations:@"ShowPause" context:nil];
	[UIView setAnimationDuration: 0.3f];
	[UIView setAnimationCurve: UIViewAnimationCurveEaseInOut];
	[self setFrame: CGRectMake(0.0f, 0.0f, 320.0f, 460.0f)];
	[self setAlpha: 1.0f];
	[self setUserInteractionEnabled: YES];
	[UIView commitAnimations];
}

- (void)hide{
	[UIView beginAnimations:@"HidePause" context:nil];
	[UIView setAnimationDuration: 0.3f];
	[UIView setAnimationCurve: UIViewAnimationCurveEaseInOut];
	[self setFrame: CGRectMake(320.0f, 40.0f, 0.0f, 0.0f)];
	[self setAlpha: 0.0f];
	[self setUserInteractionEnabled: NO];
	[UIView commitAnimations];
}

- (void)drawRect:(CGRect)rect {
    [self.backgroundImg drawAtPoint: CGPointMake(40.0f, 95.0f)];
}

- (void)touchesBegan: (NSSet *)touches withEvent: (UIEvent *)event{
	UITouch *touch = [touches anyObject];
	CGPoint loc = [touch locationInView: self];
	NSLog(@"Touch in pause at %i,%i", (int)loc.x, (int)loc.y);
	if(CGRectContainsPoint(CGRectMake(80.0f, 172.0f, 160.0f, 40.0f), loc)){
		[self hide];
	}else if(CGRectContainsPoint(CGRectMake(80.0f, 218.0f, 160.0f, 40.0f), loc)){
		[delegate showOptions];
	}else if(CGRectContainsPoint(CGRectMake(80.0f, 263.0f, 160.0f, 40.0f), loc)){
		NSLog(@"Exit");
	}
	
}


- (void)dealloc {
    [super dealloc];
}


@end
