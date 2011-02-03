//
//  StoreDetailedViewController.h
//  SkiResort
//
//  Created by Billy Connolly on 2/2/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StoreDataDelegate.h"

@interface StoreDetailedViewController : UIViewController {
	UITableView *table;
	UITextView *description;
	StoreDataDelegate *stdd;
}

@property (nonatomic, retain) IBOutlet UITableView *table;
@property (nonatomic, retain) IBOutlet UITextView *description;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil category:(int)category;

- (IBAction)back;
- (IBAction)purchase;

- (void)selectedNewObject:(NSString *)desc;

@end