//
//  AlertsViewController.h
//  iUploader
//
//  Created by Sam Coles on 10/6/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface AlertsViewController : UITableViewController <UITableViewDelegate, UITableViewDataSource> {
	NSMutableArray *alerts;
	IBOutlet UITableView *tableView;
}

@property (nonatomic, retain) NSArray* alerts;
@property (nonatomic, retain) UITableView *tableView;

@end
