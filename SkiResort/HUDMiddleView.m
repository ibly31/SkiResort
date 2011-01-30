//
//  HUDMiddleView.m
//  SkiResort
//
//  Created by Billy Connolly on 1/29/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "HUDMiddleView.h"
#import "MainScreenViewController.h"

@implementation HUDMiddleView
@synthesize parent;
@synthesize mapIcon;
@synthesize storeIcon;
@synthesize pauseIcon;

- (id)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
		[self setBackgroundColor: [UIColor scrollViewTexturedBackgroundColor]];
        NSString *path = [[NSBundle mainBundle] pathForResource:@"MapIcon" ofType:@"png"];
		NSData *texData = [[NSData alloc] initWithContentsOfFile:path];
        self.mapIcon = [[UIImage alloc] initWithData: texData];
		
		path = [[NSBundle mainBundle] pathForResource:@"Store" ofType:@"png"];
		texData = [[NSData alloc] initWithContentsOfFile:path];
		self.storeIcon = [[UIImage alloc] initWithData: texData];
		
		path = [[NSBundle mainBundle] pathForResource:@"Pause" ofType:@"png"];
		texData = [[NSData alloc] initWithContentsOfFile:path];
		self.pauseIcon = [[UIImage alloc] initWithData: texData];
    }
    return self;
}


- (void)drawRect:(CGRect)rect {
    [self.mapIcon drawAtPoint: CGPointMake(0.0f, 0.0f)];
	[self.storeIcon drawAtPoint: CGPointMake(136.0f, 0.0f)];
	[self.pauseIcon drawAtPoint: CGPointMake(296.0f, 0.0f)];
}

- (void)pushOut{
	[UIView beginAnimations:@"HMVOut" context:nil];
	[UIView setAnimationDuration: 0.3f];
	[UIView setAnimationCurve: UIViewAnimationCurveEaseInOut];
	[self setFrame: CGRectMake(320.0f, 40.0f, 320.0f, 360.0f)];
	[UIView commitAnimations];
}

- (void)pullIn{
	[UIView beginAnimations:@"HMVIn" context:nil];
	[UIView setAnimationDuration: 0.3f];
	[UIView setAnimationCurve: UIViewAnimationCurveEaseInOut];
	[self setFrame: CGRectMake(0.0f, 40.0f, 320.0f, 360.0f)];
	[UIView commitAnimations];
}

- (void)touchesBegan: (NSSet *)touches withEvent: (UIEvent *)event{
	UITouch *touch = [touches anyObject];
	CGPoint loc = [touch locationInView: self];
	NSLog(@"HMVTouch at %f, %f", loc.x, loc.y);
	if(CGRectContainsPoint(CGRectMake(288.0f, 0.0f, 32.0f, 32.0f), loc)){
		[[parent pmv] show];
	}else if(CGRectContainsPoint(CGRectMake(0.0f, 0.0f, 32.0f, 32.0f), loc)){
		[parent showMap];
	}else if(CGRectContainsPoint(CGRectMake(136.0f, 1.0f, 48.0f, 32.0f), loc)){
		//store
	}
}


- (void)dealloc {
    [super dealloc];
}


@end
