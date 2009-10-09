//
//  ItemsViewController.m
//  iUploader
//
//  Created by Sam Coles on 10/6/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "AddItemViewController.h"
#import "Item.h"
#import "NSData+MBase64.h"


@implementation AddItemViewController
@synthesize items, imageView, choosePhotoBtn, takePhotoBtn, uploadPhotoBtn;


-(IBAction) uploadPhoto:(id) sender {
	NSData *imageData = UIImageJPEGRepresentation(imageView.image, 0.8);
	
	// Create a new item
	Item *item = [Item alloc];
	[item setName:@"New Photo"];
	[item setRawData:[imageData base64Encoding]];
	[item saveRemote];
	imageView.image = nil;
	uploadPhotoBtn.enabled = FALSE;
}

-(IBAction) getPhoto:(id) sender {
	UIImagePickerController * picker = [[UIImagePickerController alloc] init];
	picker.delegate = self;
	
	if((UIButton *) sender == choosePhotoBtn) {
		picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
	} else {
		picker.sourceType = UIImagePickerControllerSourceTypeCamera;
	}
	
	[self presentModalViewController:picker animated:YES];
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
	[picker dismissModalViewControllerAnimated:YES];
	imageView.image = [info objectForKey:@"UIImagePickerControllerOriginalImage"];
	uploadPhotoBtn.enabled = TRUE;
}

- (void)dealloc {
	[items dealloc];
    [super dealloc];
}

@end
