//
//  ContinueGameViewController.h
//  SkiResort
//
//  Created by Billy Connolly on 1/28/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ContinueGameViewController : UIViewController {
	UITextView *tv;
	UILabel *topLabel;
}

@property (nonatomic, retain) IBOutlet UITextView *tv;
@property (nonatomic, retain) IBOutlet UILabel *topLabel;

- (IBAction)back;
- (IBAction)loadGame;

@end