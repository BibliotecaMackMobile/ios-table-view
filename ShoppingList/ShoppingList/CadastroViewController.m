//
//  CadastroViewController.m
//  ShoppingList
//
//  Created by Renan Cargnin on 2/18/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "CadastroViewController.h"
#import "ListaProdutos.h"

@interface CadastroViewController ()

@end

@implementation CadastroViewController

@synthesize txtNome;

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
	// Do any additional setup after loading the view.
    
    [txtNome setDelegate:self];
    [txtNome becomeFirstResponder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)done:(id)sender {
    ListaProdutos *lista = [ListaProdutos sharedInstance];
    [lista adicionaProduto:[txtNome text]];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

@end
