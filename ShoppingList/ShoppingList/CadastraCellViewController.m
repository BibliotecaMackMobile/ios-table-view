//
//  CadastraCellViewController.m
//  ShoppingList
//
//  Created by Gustavo Luís Soré on 18/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "CadastraCellViewController.h"
#import "Produto.h"
#import "MackenzieTableViewController.h"

@interface CadastraCellViewController ()

@end

@implementation CadastraCellViewController
@synthesize singeton,textoNome,textoQuantidade, novo;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    singeton = [Singleton getInstancia];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)botaoAdicionar:(id)sender {
    novo = [[Produto alloc] init];
    novo.nome = [textoNome text];
    novo.quant = [textoQuantidade text];
}
@end
