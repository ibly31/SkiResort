//
//  PauseMenuView.h
//  SkiResort
//
//  Created by Billy Connolly on 1/29/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MainScreenViewController;

@interface PauseMenuView : UIView {
	UIImage *backgroundImg;
	MainScreenViewController *delegate;
}

- (id)initWithFrame:(CGRect)frame delegate:(MainScreenViewController *)del;

@property (nonatomic, retain) UIImage *backgroundImg;
@property (nonatomic, retain) MainScreenViewController *delegate;

- (void)show;
- (void)hide;

@end