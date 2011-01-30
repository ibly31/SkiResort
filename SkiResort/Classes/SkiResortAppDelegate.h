//
//  SkiResortAppDelegate.h
//  SkiResort
//
//  Created by Billy Connolly on 1/28/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GameDataModel.h"

@interface SkiResortAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	UINavigationController *navController;
	GameDataModel *gdm;
}

- (void)startNewGame:(NSString *)franchise money:(int)money population:(int)population;
- (void)saveGame;
- (void)loadGame;

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navController;
@property (nonatomic, retain) IBOutlet GameDataModel *gdm;

@end

