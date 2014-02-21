//
//  CadastraCellViewController.h
//  ShoppingList
//
//  Created by Gustavo Luís Soré on 18/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Singleton.h"

@class Produto;

@interface CadastraCellViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *textoNome;
@property (weak, nonatomic) IBOutlet UITextField *textoQuantidade;
@property (strong,nonatomic) Singleton *singeton;
@property (strong, nonatomic) Produto *novo;

- (IBAction)botaoAdicionar:(id)sender;

@end
