//
//  AlertsViewController.m
//  iUploader
//
//  Created by Sam Coles on 10/6/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "AlertsViewController.h"
#import "Alert.h"

@interface AlertsViewController (Private)

- (void) loadAlerts;

@end


@implementation AlertsViewController
@synthesize alerts, tableView;

- (void) viewWillAppear:(BOOL)animated {
	[self loadAlerts];
}

- (void) loadAlerts {
	self.alerts = [Alert findAllRemote];
	[tableView reloadData];
}


/* TableViewDelegate Implementation */

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [alerts count];
}

- (UITableViewCell *)tableView:(UITableView *)aTableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [aTableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithFrame:CGRectZero reuseIdentifier:CellIdentifier] autorelease];
    }
    cell.textLabel.text = ((Alert *)[alerts objectAtIndex:indexPath.row]).title;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	//ViewPersonController *aController = [[[ViewPersonController alloc] initWithStyle:UITableViewStyleGrouped] autorelease];
	//aController.person = (Person *)[people objectAtIndex:indexPath.row];
	//[self.navigationController pushViewController:aController animated:YES];
}

- (void)tableView:(UITableView *)aTableView  commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath { 
	[aTableView beginUpdates]; 
	if (editingStyle == UITableViewCellEditingStyleDelete) { 
		[aTableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:YES]; 
		// Deletes the object on the resource
		[(Alert *)[alerts objectAtIndex:indexPath.row] destroyRemote];
		[alerts removeObjectAtIndex:indexPath.row];
	} 
	[aTableView endUpdates];   
}



/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[alerts dealloc];
	[tableView dealloc];
    [super dealloc];
}

@end
