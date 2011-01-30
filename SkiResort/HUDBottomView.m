//
//  HUDBottomView.m
//  SkiResort
//
//  Created by Billy Connolly on 1/29/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "HUDBottomView.h"


@implementation HUDBottomView
@synthesize parent;
@synthesize backgroundImg;

- (id)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
		NSString *path = [[NSBundle mainBundle] pathForResource:@"HUDBottomBackground" ofType:@"png"];
		NSData *texData = [[NSData alloc] initWithContentsOfFile:path];
        self.backgroundImg = [[UIImage alloc] initWithData: texData];
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    [self.backgroundImg drawAtPoint: CGPointMake(0.0f, 0.0f)];
}

- (void)pushOut{
	[UIView beginAnimations:@"HBVOut" context:nil];
	[UIView setAnimationDuration: 0.4f];
	[UIView setAnimationCurve: UIViewAnimationCurveEaseInOut];
	[self setFrame: CGRectMake(320.0f, 400.0f, 320.0f, 60.0f)];
	[UIView commitAnimations];
}

- (void)pullIn{
	[UIView beginAnimations:@"HBVIn" context:nil];
	[UIView setAnimationDuration: 0.3f];
	[UIView setAnimationCurve: UIViewAnimationCurveEaseInOut];
	[self setFrame: CGRectMake(0.0f, 400.0f, 320.0f, 60.0f)];
	[UIView commitAnimations];
}


- (void)dealloc {
    [super dealloc];
}


@end
