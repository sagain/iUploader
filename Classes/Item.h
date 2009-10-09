//
//  Item.h
//  iUploader
//
//  Created by Sam Coles on 10/6/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "ObjectiveResource.h"

@interface Item : NSObject {
	NSNumber *itemId;
	NSString *name;
	NSString *description;
	NSString *rawData;
	NSDate *createdAt;
	NSDate *updatedAt;
}

@property (nonatomic, retain) NSNumber *itemId;
@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *description;
@property (nonatomic, retain) NSString *rawData;
@property (nonatomic, retain) NSDate *createdAt;
@property (nonatomic, retain) NSDate *updatedAt;

@end
