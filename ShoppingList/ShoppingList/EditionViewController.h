//
//  EditionViewController.h
//  ShoppingList
//
//  Created by Renan Santos Soares on 2/21/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ListaProdutos.h"

@interface EditionViewController : UIViewController <UITextFieldDelegate>
{
    ListaProdutos * lista2;
}
- (IBAction)save:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *textField;


@end
