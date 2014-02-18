//
//  MackenzieNovoViewController.m
//  ShoppingList
//
//  Created by Emannuel Fernandes de Oliveira Carvalho on 2/18/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "MackenzieNovoViewController.h"

@interface MackenzieNovoViewController ()

@end

@implementation MackenzieNovoViewController

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
    _campoDeTexto.delegate = self;
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addNovoItem:(id)sender {
    MackenzieItensSingleton *lista = [MackenzieItensSingleton sharedItens];
    [lista adicionaObjeto:[_campoDeTexto text]];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField setUserInteractionEnabled:YES];
    [textField resignFirstResponder];
    return YES;
}

@end
