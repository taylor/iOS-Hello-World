//
//  taylor_hello_worldAppDelegate.m
//  taylor_hello_world
//
//  Created by Taylor Carpenter on 8/7/10.
//  Copyright (c) 2010 CodeCafe. All rights reserved.
//


#import "taylor_hello_worldAppDelegate.h"

@implementation taylor_hello_worldAppDelegate


@synthesize window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    // Override point for customization after application launch.
    UIActionSheet *actionSheet = [[UIActionSheet alloc] 
                                  initWithTitle:@"Hello World!"
                                  delegate:self
                                  cancelButtonTitle:@"Cancel"
                                  destructiveButtonTitle:@"Destruction and Death"
                                  otherButtonTitles:nil];
    [actionSheet showInView:window];
    [actionSheet release];
                                    
    [window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillTerminate:(UIApplication *)application {

    // Save data if appropriate.
}

- (void)dealloc {

    [window release];
    [super dealloc];
}

@end

