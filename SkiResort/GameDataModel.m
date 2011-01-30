//
//  GameDataModel.m
//  SkiResort
//
//  Created by Billy Connolly on 1/28/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "GameDataModel.h"


@implementation GameDataModel
@synthesize resortNames;
@synthesize franchiseName;


- (id)initWithCoder:(NSCoder *)decoder{
	self = [super init];
	if(self){
		money = [decoder decodeIntForKey: @"Money"];
		population = [decoder decodeIntForKey: @"Population"];
		self.resortNames = [decoder decodeObjectForKey: @"ResortNames"];
		self.franchiseName = [decoder decodeObjectForKey: @"FranchiseName"];
	}
	return self;
}

- (id)initForFirstTime:(NSString *)franchise money:(int)mon population:(int)pop{
	self = [super init];
	if(self){
		money = mon;
		population = pop;
		self.resortNames = [[NSArray alloc] init];
		self.franchiseName = [[NSString alloc] initWithString: franchise];
	}
	return self;
}

- (void)encodeWithCoder:(NSCoder *)encoder{
	[encoder encodeInt: money forKey: @"Money"];
	[encoder encodeInt: population forKey: @"Population"];
	[encoder encodeObject: resortNames forKey: @"ResortNames"];
	[encoder encodeObject: franchiseName forKey: @"FranchiseName"];
}

- (int)money{
	return money;
}

- (int)population{
	return population;
}

@end
