//
//  HUDMiddleView.h
//  SkiResort
//
//  Created by Billy Connolly on 1/29/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MainScreenViewController;

@interface HUDMiddleView : UIView {
	MainScreenViewController *parent;
	UIImage *mapIcon;
	UIImage *storeIcon;
	UIImage *pauseIcon;
}

@property (nonatomic, retain) MainScreenViewController *parent;
@property (nonatomic, retain) UIImage *mapIcon;
@property (nonatomic, retain) UIImage *storeIcon;
@property (nonatomic, retain) UIImage *pauseIcon;

- (void)pushOut;
- (void)pullIn;

@end
