//
//  SkiResortAppDelegate.m
//  SkiResort
//
//  Created by Billy Connolly on 1/28/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "SkiResortAppDelegate.h"

@implementation SkiResortAppDelegate

@synthesize window;
@synthesize navController;
@synthesize gdm;

#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after application launch
	[navController setNavigationBarHidden: YES];
	[self.window addSubview: navController.view];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)startNewGame:(NSString *)franchise money:(int)money population:(int)population{
	self.gdm = [[GameDataModel alloc] initForFirstTime: franchise money:money population:population];
	[self saveGame];
	[[NSUserDefaults standardUserDefaults] setBool: YES forKey: @"GameInProgress"];
	[[NSUserDefaults standardUserDefaults] synchronize];
}

- (void)loadGame{
	NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
	NSString *documentsDirectory = [paths objectAtIndex: 0];
	NSString *saveGameFileName = [documentsDirectory stringByAppendingPathComponent: @"SaveGame.txt"];
	NSMutableData *saveGameData = [[NSMutableData alloc] initWithContentsOfFile: saveGameFileName];
	NSKeyedUnarchiver *unarchiver = [[NSKeyedUnarchiver alloc] initForReadingWithData: saveGameData];
	self.gdm = [unarchiver decodeObjectForKey:@"SaveGame"];
	[unarchiver finishDecoding];
	[saveGameData release];
}

- (void)saveGame{
	NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
	NSString *documentsDirectory = [paths objectAtIndex: 0];
	NSString *saveGameFileName = [documentsDirectory stringByAppendingPathComponent: @"SaveGame.txt"];
	NSMutableData *saveGameData = [[NSMutableData alloc] init];
	NSKeyedArchiver *archiver = [[NSKeyedArchiver alloc] initForWritingWithMutableData: saveGameData];
	[archiver encodeObject:gdm forKey: @"SaveGame"];
	[archiver finishEncoding];
	if(![saveGameData writeToFile: saveGameFileName atomically: YES]){
		NSLog(@"Could not save game data!");
	}
	[archiver release];
	[saveGameData release];
}

- (void)applicationWillResignActive:(UIApplication *)application {
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, called instead of applicationWillTerminate: when the user quits.
     */
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    /*
     Called as part of  transition from the background to the inactive state: here you can undo many of the changes made on entering the background.
     */
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}


- (void)applicationWillTerminate:(UIApplication *)application {
    /*
     Called when the application is about to terminate.
     See also applicationDidEnterBackground:.
     */
}


#pragma mark -
#pragma mark Memory management

- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application {
    /*
     Free up as much memory as possible by purging cached data objects that can be recreated (or reloaded from disk) later.
     */
}


- (void)dealloc {
    [window release];
    [super dealloc];
}


@end
