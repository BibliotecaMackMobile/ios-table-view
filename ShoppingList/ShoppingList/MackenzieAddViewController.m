//
//  MackenzieAddViewController.m
//  ShoppingList
//
//  Created by Rogerio Bordignon on 2/18/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "MackenzieAddViewController.h"


@interface MackenzieAddViewController ()

@end

@implementation MackenzieAddViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    [_qtdProduto setUserInteractionEnabled: NO];
    [_nomeProduto setDelegate: self];
    
    
    [_stepper setMaximumValue:20];
    [_stepper setMinimumValue:0];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeQtdProdutos:(id)sender {

        [_qtdProduto setText:[NSString stringWithFormat:@"%i",(int)[_stepper value]]];
  
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    //hide the keyboard
    [textField resignFirstResponder];
    
    
    //return NO or YES, it doesn't matter
    return YES;
}

- (IBAction)addProdutos:(id)sender {
    
    MackenzieLojaStore *list = [[MackenzieLojaStore alloc] init];
    
    
    MackenzieLoja * item;
    item = [[MackenzieLoja alloc] initWithNome:[_nomeProduto text] andQtd:[_qtdProduto text]];
    [list createList:item];
    
    
    MackenzieTableViewController *mtv = (MackenzieTableViewController *)self.presentingViewController.childViewControllers.lastObject;
    [(UITableView*)mtv.view reloadData];
    [self dismissViewControllerAnimated:YES completion:nil];
     
}
    

@end
