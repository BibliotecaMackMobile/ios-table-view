//
//  AdicionarViewController.h
//  ShoppingList
//
//  Created by Gregory on 18/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AdicionarViewController : UIViewController
- (IBAction)adicionar:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *produto;

@end
