//
//  Alert.m
//  iUploader
//
//  Created by Sam Coles on 10/6/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "Alert.h"
#import "ObjectiveResource.h"

@implementation Alert
@synthesize alertId, title, content, status, deadline, createdAt, updatedAt;

+ (NSString *)getRemoteCollectionName {
	return @"alerts";
}


@end
