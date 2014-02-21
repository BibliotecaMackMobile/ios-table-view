//
//  InsereViewController.h
//  ShoppingList
//
//  Created by Rodrigo Soldi Lopes on 18/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SingleTonTon.h"

@interface InsereViewController : UIViewController<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *textoDigitado;
@property (weak, nonatomic) IBOutlet UITextField *quantidadeItem;

@end
