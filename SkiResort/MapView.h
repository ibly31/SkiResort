//
//  MapView.h
//  SkiResort
//
//  Created by Billy Connolly on 1/29/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MainScreenViewController;

@interface MapView : UIView {
	UIImage *backgroundImg;
	MainScreenViewController *delegate;
}

@property (nonatomic, retain) MainScreenViewController *delegate;
@property (nonatomic, retain) UIImage *backgroundImg;

- (id)initWithFrame:(CGRect)frame delegate:(MainScreenViewController *)del;
- (void)show;
- (void)hide;


@end
