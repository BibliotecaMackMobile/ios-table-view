//
//  CadastrarTableViewController.h
//  ShoppingList
//
//  Created by Lucas da Silva Pereira on 18/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CadastrarTableViewController : UITableViewController <UITextFieldDelegate>
- (IBAction)mudaQtd:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *qtdLabel;
@property (weak, nonatomic) IBOutlet UITextField *txtDetalhe;
@property (weak, nonatomic) IBOutlet UITextField *txtNome;

@end
