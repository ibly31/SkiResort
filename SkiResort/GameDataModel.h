//
//  GameDataModel.h
//  SkiResort
//
//  Created by Billy Connolly on 1/28/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface GameDataModel : NSObject <NSCoding>{
	int money;
	int population;
	NSArray *resortNames;
	NSString *franchiseName;
}

- (int)money;
- (int)population;

@property (nonatomic, retain) NSArray *resortNames;
@property (nonatomic, retain) NSString *franchiseName;

- (id)initWithCoder:(NSCoder *)decoder;
- (id)initForFirstTime:(NSString *)franchise money:(int)mon population:(int)pop;
- (void)encodeWithCoder:(NSCoder *)encoder;

@end
