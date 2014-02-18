//
//  MackenzieAdicionarViewController.h
//  ShoppingList
//
//  Created by Lucas Domene Firmo on 2/18/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MackenzieLista.h"

@interface MackenzieAdicionarViewController : UIViewController <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *itemTextField;
@property (weak, nonatomic) IBOutlet UITextField *qtdTextField;
@end
