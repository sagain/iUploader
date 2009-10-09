//
//  Item.m
//  iUploader
//
//  Created by Sam Coles on 10/6/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "Item.h"
#import "ObjectiveResource.h"

@implementation Item
@synthesize itemId, name, description, rawData, createdAt, updatedAt;

+ (NSString *)getRemoteCollectionName {
	return @"items";
}

@end
