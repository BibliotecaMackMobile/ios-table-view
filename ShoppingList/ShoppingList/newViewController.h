//
//  newViewController.h
//  ShoppingList
//
//  Created by Vinicius Soares Lima on 18/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface newViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *fieldItem;
@property (weak, nonatomic) IBOutlet UITextField *fieldQtd;
@property (weak, nonatomic) IBOutlet UIButton *butonadd;

@end
