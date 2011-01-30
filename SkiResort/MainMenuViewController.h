//
//  MainMenuViewController.h
//  SkiResort
//
//  Created by Billy Connolly on 1/28/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface MainMenuViewController : UIViewController {
	UIButton *loadGame;
}

@property (nonatomic, retain) IBOutlet UIButton *loadGame;

- (IBAction)startGame;
- (IBAction)continueGame;
- (IBAction)options;
- (IBAction)help;

@end
