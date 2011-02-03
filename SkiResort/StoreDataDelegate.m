//
//  StoreDataDelegate.m
//  SkiResort
//
//  Created by Billy Connolly on 1/30/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "StoreDataDelegate.h"
#import "StoreDetailedViewController.h"
#import "StoreTableViewCell.h"

@implementation StoreDataDelegate
@synthesize store;
@synthesize tv;
@synthesize storeObjects;

- (id)initWithCategory:(int)cat{
	NSString *path = [[NSBundle mainBundle] bundlePath];
	NSString *finalPath = [path stringByAppendingPathComponent: @"Resort1StoreListings.plist"];
	NSArray *array;
	array = [[NSArray arrayWithContentsOfFile: finalPath] retain];
	self.storeObjects = [array objectAtIndex: cat];
	return self;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
	int row = [indexPath row];
	static NSString *storeTableIdentifier = @"StoreTableIdentifier";
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: storeTableIdentifier];
	if(cell == nil){
		NSString *imgName = [[storeObjects objectAtIndex: row] objectForKey: @"Image"];
		NSString *objName = [[storeObjects objectAtIndex: row] objectForKey: @"Name"];
		int objCost = [[[storeObjects objectAtIndex: row] objectForKey: @"Cost"] intValue];
		cell = [[StoreTableViewCell alloc] initWithData:imgName name:objName cost: objCost reuseIdentifier: storeTableIdentifier];
		//cell = [[UITableViewCell alloc] initWithFrame: CGRectZero reuseIdentifier: storeTableIdentifier];
	}
	return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
	int row = [indexPath row];
	NSString *objDesc = [[storeObjects objectAtIndex: row] objectForKey: @"Description"];
	[store selectedNewObject: objDesc];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
	return [storeObjects count];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
	return 1;
}

@end
