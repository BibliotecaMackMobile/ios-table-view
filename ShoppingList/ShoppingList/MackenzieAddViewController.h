//
//  MackenzieAddViewController.h
//  ShoppingList
//
//  Created by Rogerio Bordignon on 2/18/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MackenzieViewController.h"
#import "MackenzieTableViewController.h"
#import "MackenzieLojaStore.h"

@interface MackenzieAddViewController : UIViewController <UITextViewDelegate>

@property (weak, nonatomic) IBOutlet UITextField *nomeProduto;
@property (weak, nonatomic) IBOutlet UITextField *qtdProduto;
- (IBAction)changeQtdProdutos:(id)sender;
@property (weak, nonatomic) IBOutlet UIStepper *stepper;

@end
