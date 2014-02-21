//
//  CadastraCellViewController.h
//  ShoppingList
//
//  Created by Gustavo Luís Soré on 18/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Armazem.h"

@class Produto;

@interface CadastraCellViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *textoNome;
- (IBAction)stepperQuantidade:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *labelQuantidade;
@property (strong, nonatomic) Produto *novo;
@property (strong,nonatomic) Armazem *armazem;

- (IBAction)botaoAdicionar:(id)sender;

@end
