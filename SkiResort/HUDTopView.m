//
//  HUDTopView.m
//  SkiResort
//
//  Created by Billy Connolly on 1/29/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "HUDTopView.h"


@implementation HUDTopView
@synthesize parent;
@synthesize backgroundImg;

- (id)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
		NSString *path = [[NSBundle mainBundle] pathForResource:@"HUDTopBackground" ofType:@"png"];
		NSData *texData = [[NSData alloc] initWithContentsOfFile:path];
        self.backgroundImg = [[UIImage alloc] initWithData: texData];
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    [self.backgroundImg drawAtPoint: CGPointMake(0.0f, 0.0f)];
}

- (void)pushOut{
	[UIView beginAnimations:@"HTVOut" context:nil];
	[UIView setAnimationDuration: 0.3f];
	[UIView setAnimationCurve: UIViewAnimationCurveEaseInOut];
	[self setFrame: CGRectMake(320.0f, 0.0f, 320.0f, 40.0f)];
	[UIView commitAnimations];
}

- (void)pullIn{
	[UIView beginAnimations:@"HTVIn" context:nil];
	[UIView setAnimationDuration: 0.3f];
	[UIView setAnimationCurve: UIViewAnimationCurveEaseInOut];
	[self setFrame: CGRectMake(0.0f, 0.0f, 320.0f, 40.0f)];
	[UIView commitAnimations];
}

- (void)dealloc {
    [super dealloc];
}


@end
