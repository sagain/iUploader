//
//  ItemsViewController.h
//  iUploader
//
//  Created by Sam Coles on 10/6/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface AddItemViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate> {
	NSMutableArray *items;
	UIImageView *imageView;
	UIButton *choosePhotoBtn;
	UIButton *takePhotoBtn;
	UIButton *uploadPhotoBtn;
}

@property (nonatomic, retain) NSMutableArray *items;
@property (nonatomic, retain) IBOutlet UIImageView *imageView;
@property (nonatomic, retain) IBOutlet UIButton *choosePhotoBtn;
@property (nonatomic, retain) IBOutlet UIButton *takePhotoBtn;
@property (nonatomic, retain) IBOutlet UIButton *uploadPhotoBtn;

-(IBAction) getPhoto:(id) sender;
-(IBAction) uploadPhoto:(id) sender;

@end
