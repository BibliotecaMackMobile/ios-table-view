//
//  EditionViewController.m
//  ShoppingList
//
//  Created by Renan Santos Soares on 2/21/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "EditionViewController.h"
#import "MackenzieTableViewController.h"

@interface EditionViewController ()

@end

@implementation EditionViewController

@synthesize textField;
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
    self.navigationItem.hidesBackButton = YES;
    self.textField.delegate = self;
    lista2 = [ListaProdutos sharedInstance];
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)save:(id)sender {
    [lista2.produtos addObject:textField.text];
    
}
@end
