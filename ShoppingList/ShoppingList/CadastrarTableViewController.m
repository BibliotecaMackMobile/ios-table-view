//
//  CadastrarTableViewController.m
//  ShoppingList
//
//  Created by Lucas da Silva Pereira on 18/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "CadastrarTableViewController.h"
#import "ShoppingList.h"

@interface CadastrarTableViewController ()

@end

@implementation CadastrarTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    _txtNome.delegate = self;
    _txtDetalhe.delegate = self;
    
    UITapGestureRecognizer * tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap:)];
    [self.view addGestureRecognizer:tap];
}

-(void)handleTap:(UITapGestureRecognizer *)gesture
{
    [_txtDetalhe resignFirstResponder];
    [_txtNome resignFirstResponder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

- (IBAction)mudaQtd:(UIStepper*)sender {
    _qtdLabel.text = [NSString stringWithFormat:@"%.0f", sender.value];
}

-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    if (_txtNome.text.length == 0 || _txtDetalhe.text.length == 0) {
        UIAlertView *alerta = [[UIAlertView alloc] initWithTitle:@"Atenção" message:@"Preencha todos os campos" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        [alerta show];
        return NO;
    }
    return YES;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSLog(@"Preparando");
    ShoppingList *shoppingList = [ShoppingList getInstance];
    Product *p = [[Product alloc] initWithName:_txtNome.text detalhe:_txtDetalhe.text qtd:[_qtdLabel.text integerValue] image:nil];
    [shoppingList addProduct:p];
}
@end
