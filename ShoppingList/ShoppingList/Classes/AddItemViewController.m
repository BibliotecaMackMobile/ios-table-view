//
//  AddItemViewController.m
//  ShoppingList
//
//  Created by Kaê Coutinho - BEPiD on 2/18/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "AddItemViewController.h"

@interface AddItemViewController ()

-(void)initTapGesture;
-(void)tapGestureHandler:(UITapGestureRecognizer *)sender;

@end

@implementation AddItemViewController

@synthesize itemImageView;
@synthesize itemNameTextField;
@synthesize itemDescriptionTextField;

#pragma mark - Default constructor

-(id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if(self)
    {
        storeItems = [StoreItems sharedInstance];
        imagePicker = [[UIImagePickerController alloc] init];
    }
    return self;
}

#pragma mark - UIView

-(void)viewDidLoad
{
    [super viewDidLoad];
    [self initTapGesture];
    itemNameTextField.clearsOnBeginEditing = YES;
    itemNameTextField.delegate = self;
    itemDescriptionTextField.clearsOnBeginEditing = YES;
    itemDescriptionTextField.delegate = self;
}

-(void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

-(BOOL)canBecomeFirstResponder
{
    return YES;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self becomeFirstResponder];
}

#pragma mark - IBActions

-(IBAction)done:(id)sender
{
    if(itemNameTextField.text.length > 0 && itemDescriptionTextField.text.length > 0)
    {
        StoreItem * item = [[StoreItem alloc] initWithName:itemNameTextField.text description:itemDescriptionTextField.text andImage:itemImageView.image];
        [[storeItems items] addObject:item];
        [[NSNotificationCenter defaultCenter] postNotificationName:@"reloadTableNotificarion" object:nil];
        [self dismissViewControllerAnimated:YES completion:nil];
    }
    else
    {
        UIAlertView * alert = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Fill all the textfields" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        [alert show];
    }
}

#pragma mark - UITextField Delegate

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

#pragma mark - UIGestureRecognizer

-(void)initTapGesture
{
    UITapGestureRecognizer * tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapGestureHandler:)];
    tapGesture.numberOfTapsRequired = 1;
    itemImageView.userInteractionEnabled = YES;
    [itemImageView addGestureRecognizer:tapGesture];
}

-(void)tapGestureHandler:(UITapGestureRecognizer *)sender
{
    imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    [self presentViewController:imagePicker animated:YES completion:nil];
}

#pragma mark - UIImagePickerController

-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    itemImageView.image = [info objectForKey:UIImagePickerControllerOriginalImage];
    [picker dismissViewControllerAnimated:YES completion:nil];
}

@end