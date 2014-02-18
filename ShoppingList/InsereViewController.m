//
//  InsereViewController.m
//  ShoppingList
//
//  Created by Rodrigo Soldi Lopes on 18/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "InsereViewController.h"

@interface InsereViewController ()

@end

@implementation InsereViewController

- (void)viewDidLoad
{
    [_textoDigitado setDelegate:self];
    [_quantidadeItem setDelegate:self];
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [_textoDigitado resignFirstResponder];
    [_quantidadeItem resignFirstResponder];
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField setUserInteractionEnabled:YES];
    [textField resignFirstResponder];
    return YES;
}
- (IBAction)save:(id)sender {
    if ((![[_textoDigitado text] isEqual: @""]) && (![[_quantidadeItem text] isEqual:@""])) {
        SingleTonTon *lista = [SingleTonTon sharedItens];
        [lista adicionaObjeto:[_textoDigitado text] withQuantidade:[_quantidadeItem text]];
    }
    else if ([[_textoDigitado text] isEqual:@""]){
        UIAlertView *msg = [[UIAlertView alloc]initWithTitle:@"Atenção" message:@"O campo item não foi preenchido." delegate:self cancelButtonTitle:@"Voltar" otherButtonTitles:Nil, nil];
        [msg show];
        [_textoDigitado becomeFirstResponder];
    }
    else{
        UIAlertView *msg = [[UIAlertView alloc]initWithTitle:@"Atenção" message:@"O campo quantidade não foi preenchido." delegate:self cancelButtonTitle:@"Voltar" otherButtonTitles:Nil, nil];
        [msg show];
        [_quantidadeItem becomeFirstResponder];
    }

}

@end
