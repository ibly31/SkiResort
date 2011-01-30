//
//  MapView.m
//  SkiResort
//
//  Created by Billy Connolly on 1/29/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MapView.h"
#import "MainScreenViewController.h"

@implementation MapView
@synthesize delegate;
@synthesize backgroundImg;

- (id)initWithFrame:(CGRect)frame delegate:(MainScreenViewController *)del{
    self = [super initWithFrame:frame];
    if (self) {
		NSString *path = [[NSBundle mainBundle] pathForResource:@"Map" ofType:@"png"];
		NSData *texData = [[NSData alloc] initWithContentsOfFile:path];
        self.backgroundImg = [[UIImage alloc] initWithData: texData];
		self.delegate = del;
		[self setBackgroundColor: [UIColor clearColor]];
		[self setAlpha: 0.0f];
		[self setUserInteractionEnabled: YES];
		[self setBackgroundColor: [UIColor groupTableViewBackgroundColor]];
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    [backgroundImg drawAtPoint: CGPointMake(40.0f, 40.0f)];
}

- (void)show{
	[self setFrame: CGRectMake(-320.0f, 0.0f, 320.0f, 460.0f)];
	[UIView beginAnimations:@"ShowMap" context:nil];
	[UIView setAnimationDuration: 0.3f];
	[UIView setAnimationCurve: UIViewAnimationCurveEaseInOut];
	[self setFrame: CGRectMake(0.0f, 0.0f, 320.0f, 460.0f)];
	[self setAlpha: 1.0f];
	[self setUserInteractionEnabled: YES];
	[UIView commitAnimations];
}

- (void)hide{
	[UIView beginAnimations:@"HideMap" context:nil];
	[UIView setAnimationDuration: 0.3f];
	[UIView setAnimationCurve: UIViewAnimationCurveEaseInOut];
	[self setFrame: CGRectMake(-320.0f, 0.0f, 320.0f, 460.0f)];
	[self setAlpha: 0.0f];
	[self setUserInteractionEnabled: NO];
	[UIView commitAnimations];
}
		
- (void)touchesBegan: (NSSet *)touches withEvent: (UIEvent *)event{
	[delegate hideMap];
}

- (void)dealloc {
    [super dealloc];
}


@end
