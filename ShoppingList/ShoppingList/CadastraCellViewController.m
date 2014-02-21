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
@synthesize textoNome,novo,labelQuantidade,armazem;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        armazem = [Armazem getInstancia];
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
    armazem = [Armazem getInstancia];
    novo = [[Produto alloc] init];
    novo.nome = [textoNome text];
    novo.quant = [labelQuantidade text];
    [armazem.conteudo insertObject:novo atIndex:armazem.q];
    [armazem setQ:armazem.q+1];
    NSLog(@"%d",armazem.conteudo.count);
}
- (IBAction)stepperQuantidade:(UIStepper*)sender {
    labelQuantidade.text = [NSString stringWithFormat:@"%.0f",sender.value];
}
@end
