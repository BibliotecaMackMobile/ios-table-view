//
//  AddItemViewController.m
//  ShoppingList
//
//  Created by Kaê Coutinho - BEPiD on 2/18/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "AddItemViewController.h"

@interface AddItemViewController ()

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
        storeItems = [StoreItems sharedInstance];
    return self;
}

#pragma mark - UIView

-(void)viewDidLoad
{
    [super viewDidLoad];
}

-(void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - IBActions

-(IBAction)done:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end