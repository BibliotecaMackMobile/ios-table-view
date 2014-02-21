//
//  MackenzieAddViewController.m
//  ShoppingList
//
//  Created by Luiz on 21/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "MackenzieAddViewController.h"
#import "MackenzieSingletonItem.h"
#import "MackenzieViewController.h"
#import "MackenzieTableViewController.h"

@interface MackenzieAddViewController ()

@end

@implementation MackenzieAddViewController



-(IBAction)efeitoBtnAdd:(id)sender {
   // [[tela view] setBackgroundColor:[UIColor whiteColor]];
    [[[MackenzieSingletonItem sharadeManager] itensListaDeCompras] addObject:[[self txtElemento] text]];
    int i = [[[MackenzieSingletonItem sharadeManager] itensListaDeCompras] indexOfObject:[[self txtElemento] text]];
    NSIndexPath *index = [NSIndexPath indexPathForRow:i inSection:0];
    MackenzieTableViewController *tela = (MackenzieTableViewController *)self.presentingViewController.childViewControllers.lastObject;
    [(UITableView*)tela.view
     insertRowsAtIndexPaths:[NSArray arrayWithObject:index] withRowAnimation:UITableViewRowAnimationTop];
    [self dismissViewControllerAnimated:YES completion:nil];
    //[self presentViewController:tela animated:YES completion:nil];
    //[tela viewDidLoad];
}

-(CGRect)makeRectWithX:(CGFloat)x andY:(CGFloat)y andLargura:(CGFloat)largura andAltura:(CGFloat)altura {
    CGFloat larguraView = [[self view] bounds].size.width;
    CGFloat alturaView = [[self view] bounds].size.height;
    
    CGFloat valorX = x * larguraView / 100;
    CGFloat valorY = 20 + (y * alturaView / 100);
    CGFloat valorLargura = largura * larguraView / 100;
    CGFloat valorAltura = altura * alturaView / 100;
    
    
    return CGRectMake(valorX, valorY, valorLargura, valorAltura);
}

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
    CGRect area;
    UITextField *txtAux;
    UILabel *lblAux;
    UIButton *btnAux;
    [super viewDidLoad];
    
    // TextField
    area = [self makeRectWithX:10 andY:20 andLargura:80 andAltura:8];
    txtAux = [[UITextField alloc] initWithFrame:area];
    [self setTxtElemento:txtAux];
    [[self txtElemento] setDelegate:self];
    [[self txtElemento] setBorderStyle:UITextBorderStyleRoundedRect];
    
    // Label
    area = [self makeRectWithX:10 andY:10 andLargura:40 andAltura:10];
    lblAux = [[UILabel alloc] initWithFrame:area];
    [self setLblElemento:lblAux];
    [[self lblElemento] setText:@"Elemento"];
    
    // Button
    area = [self makeRectWithX:70 andY:10 andLargura:20 andAltura:10];
    btnAux = [[UIButton alloc] initWithFrame:area];
    [self setBtnAdd:btnAux];
    [[self btnAdd] addTarget:self action:@selector(efeitoBtnAdd:) forControlEvents:UIControlEventTouchUpInside];
    [[self btnAdd] setTitle:@"Add" forState:UIControlStateNormal];
    [[self btnAdd] setBackgroundColor:[UIColor grayColor]];
    
    // Adiciona no canvas
    [[self view] setBackgroundColor:[UIColor whiteColor]];
    [[self view] addSubview:[self lblElemento]];
    [[self view] addSubview:[self txtElemento]];
    [[self view] addSubview:[self btnAdd]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    if (textField == [self txtElemento]) {
        [[self txtElemento] resignFirstResponder];
        return true;
    }
    return false;
}

@end
