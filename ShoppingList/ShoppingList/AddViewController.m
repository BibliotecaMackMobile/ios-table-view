//
//  AddViewController.m
//  ShoppingList
//
//  Created by Lucas Salton Cardinali on 2/18/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "AddViewController.h"
#import "Item.h"
#import "MackenzieSingleton.h"
@interface AddViewController ()
@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *tapGestureController;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UITextField *productName;
@property (weak, nonatomic) IBOutlet UITextField *productDescription;
@property (weak, nonatomic) IBOutlet UITextField *qntyForm;
@property (weak, nonatomic) IBOutlet UIStepper *stepper;

@end

@implementation AddViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    _stepper.maximumValue = 99.0;
    _stepper.minimumValue = 1.0;
    
    [_imageView addGestureRecognizer:_tapGestureController];
    [_qntyForm setText:[NSString stringWithFormat:@"%i", (int)[_stepper value]]];
    
    _imageView.userInteractionEnabled = YES;
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)goback:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)add:(id)sender {
    MackenzieSingleton *single = [MackenzieSingleton sharedInstance];
    
    Item *newItem = [[Item alloc] initWithProductName:_productName.text andDescription:_productDescription.text];
    [single add:newItem];
    [self.delegate refreshTable];
    [self dismissViewControllerAnimated:YES completion:nil];
}

//- (IBAction)handleTap:(id)sender {
//    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
//    picker.delegate = self;
//    picker.allowsEditing = YES;
//    picker.sourceType = UIImagePickerControllerSourceTypeCamera;
//    [self presentViewController:picker animated:YES completion:NULL];
//}




- (IBAction)Stepper:(id)sender {
    [_qntyForm setText:[NSString stringWithFormat:@"%i", (int)[_stepper value]]];
    
}
- (IBAction)finishProductName:(id)sender {
    [_productName resignFirstResponder];
}

@end
