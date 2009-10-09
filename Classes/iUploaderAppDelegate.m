//
//  iUploaderAppDelegate.m
//  iUploader
//
//  Created by Sam Coles on 10/6/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "iUploaderAppDelegate.h"
#import "ObjectiveResource.h"

@implementation iUploaderAppDelegate

@synthesize window;
@synthesize tabBarController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {
    
	// Initialize ObjectiveResource settings
	[ObjectiveResourceConfig setSite:@"http://localhost:3000/"];
	[ObjectiveResourceConfig setResponseType:XmlResponse];
	
    // Add the tab bar controller's current view as a subview of the window
    [window addSubview:tabBarController.view];
}


/*
// Optional UITabBarControllerDelegate method
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController {
}
*/

/*
// Optional UITabBarControllerDelegate method
- (void)tabBarController:(UITabBarController *)tabBarController didEndCustomizingViewControllers:(NSArray *)viewControllers changed:(BOOL)changed {
}
*/


- (void)dealloc {
    [tabBarController release];
    [window release];
    [super dealloc];
}

@end

