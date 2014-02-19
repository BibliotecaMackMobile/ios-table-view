//
//  MackenzieAdicionarViewController.m
//  ShoppingList
//
//  Created by Lucas Domene Firmo on 2/18/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "MackenzieAdicionarViewController.h"
#import "MackenzieLista.h"

@interface MackenzieAdicionarViewController ()
{
    NSMutableDictionary *productDic;
}

@end

@implementation MackenzieAdicionarViewController

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
    [_itemTextField setDelegate:self];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Segues

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    MackenzieLista *lista = [MackenzieLista getInstance];
    productDic = [[NSMutableDictionary alloc] init];
    [productDic setObject:_itemTextField.text forKey:@"name"];
    [productDic setObject:_qtdTextField.text forKey:@"quantity"];
    [lista.itemList addObject:productDic];
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    if (_itemTextField.text.length > 0 && _qtdTextField.text.length > 0) {
        return YES;
    } else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Erro" message:@"Preencha os campos!" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        [alert show];
        return NO;
    }
}

#pragma mark - UITextField Delegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [_itemTextField resignFirstResponder];
    return YES;
}

@end
