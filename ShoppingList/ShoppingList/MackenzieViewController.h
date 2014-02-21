//
//  MackenzieViewController.h
//  ShoppingList
//
//  Created by Vinicius Miana on 2/12/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MackenzieViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIBarButtonItem *barUtilidades;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *barItemNovo;

- (IBAction)efeitoBarItemNovo:(id)sender;
@end
