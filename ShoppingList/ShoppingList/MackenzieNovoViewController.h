//
//  MackenzieNovoViewController.h
//  ShoppingList
//
//  Created by Emannuel Fernandes de Oliveira Carvalho on 2/18/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MackenzieItensSingleton.h"

@interface MackenzieNovoViewController : UIViewController <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *campoDeTexto;

@end
