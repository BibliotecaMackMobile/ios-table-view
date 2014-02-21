//
//  DigitarViewController.m
//  ShoppingList
//
//  Created by Lucas Augusto Cordeiro on 2/18/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "DigitarViewController.h"
#import "listaSingleton.h"

@interface DigitarViewController ()

@end

@implementation DigitarViewController

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
    _escrever.delegate = self;
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}
- (IBAction)add:(id)sender {
    listaSingleton *adicionar = [listaSingleton instanciar];
    [adicionar addObject:[_escrever text]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField setUserInteractionEnabled:YES];
    [textField resignFirstResponder];
    return YES;
}


@end
