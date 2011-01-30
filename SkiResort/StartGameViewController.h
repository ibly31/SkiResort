//
//  StartGameViewController.h
//  SkiResort
//
//  Created by Billy Connolly on 1/28/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface StartGameViewController : UIViewController{
	UITextField *fraName;
	UISlider *monSlide;
	UISlider *popSlide;
	UIBarButtonItem *hide;
}

@property (nonatomic, retain) IBOutlet UITextField *fraName;
@property (nonatomic, retain) IBOutlet UISlider *monSlide;
@property (nonatomic, retain) IBOutlet UISlider *popSlide;
@property (nonatomic, retain) IBOutlet UIBarButtonItem *hide;

- (IBAction)startGame;
- (IBAction)back;
- (IBAction)startEditing;
- (IBAction)stopEditing;

@end