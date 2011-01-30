//
//  MainScreenViewController.h
//  SkiResort
//
//  Created by Billy Connolly on 1/29/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HUDTopView.h"
#import "HUDMiddleView.h"
#import "HUDBottomView.h"
#import "PauseMenuView.h"
#import "MapView.h"

@interface MainScreenViewController : UIViewController {
	HUDTopView *htv;
	HUDMiddleView *hmv;
	HUDBottomView *hbv;
	
	PauseMenuView *pmv;
	MapView *mv;
}

@property (nonatomic, retain) HUDTopView *htv;
@property (nonatomic, retain) HUDMiddleView *hmv;
@property (nonatomic, retain) HUDBottomView *hbv;
@property (nonatomic, retain) PauseMenuView *pmv;
@property (nonatomic, retain) MapView *mv;

- (void)showOptions;

- (void)showMap;
- (void)hideMap;

@end