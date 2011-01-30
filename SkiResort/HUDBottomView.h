//
//  HUDBottomView.h
//  SkiResort
//
//  Created by Billy Connolly on 1/29/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MainScreenViewController;

@interface HUDBottomView : UIView {
	MainScreenViewController *parent;
	UIImage *backgroundImg;
}

@property (nonatomic, retain) MainScreenViewController *parent;
@property (nonatomic, retain) UIImage *backgroundImg;

- (void)pushOut;
- (void)pullIn;

@end
