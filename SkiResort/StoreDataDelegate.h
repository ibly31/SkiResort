//
//  StoreDataDelegate.h
//  SkiResort
//
//  Created by Billy Connolly on 1/30/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class StoreDetailedViewController;

@interface StoreDataDelegate : NSObject <UITableViewDelegate, UITableViewDataSource>{
	UITableView *tv;
	StoreDetailedViewController *store;
	NSArray *storeObjects;
}

@property (nonatomic, retain) UITableView *tv;
@property (nonatomic, retain) StoreDetailedViewController *store;
@property (nonatomic, retain) NSArray *storeObjects;

- (id)initWithCategory:(int)cat;


@end
