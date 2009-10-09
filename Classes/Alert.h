//
//  Alert.h
//  iUploader
//
//  Created by Sam Coles on 10/6/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "ObjectiveResource.h"

@interface Alert : NSObject {
	NSNumber *alertId;
	NSString *title;
	NSString *content;
	NSString *status;
	NSDate *deadline;
	NSDate *createdAt;
	NSDate *updatedAt;
}

@property (nonatomic, retain) NSNumber *alertId;
@property (nonatomic, retain) NSString *title;
@property (nonatomic, retain) NSString *content;
@property (nonatomic, retain) NSString *status;
@property (nonatomic, retain) NSDate *deadline;
@property (nonatomic, retain) NSDate *createdAt;
@property (nonatomic, retain) NSDate *updatedAt;

@end
