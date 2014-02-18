//
//  AddItemViewController.h
//  ShoppingList
//
//  Created by Kaê Coutinho - BEPiD on 2/18/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StoreItems.h"
#import "MackenzieTableViewController.h"

@interface AddItemViewController : UIViewController <UITextFieldDelegate,UIImagePickerControllerDelegate>
{
    StoreItems * storeItems;
    UIImagePickerController * imagePicker;
}

@property (nonatomic,weak) IBOutlet UIImageView * itemImageView;
@property (nonatomic,weak) IBOutlet UITextField * itemNameTextField;
@property (nonatomic,weak) IBOutlet UITextField * itemDescriptionTextField;

-(IBAction)done:(id)sender;

@end