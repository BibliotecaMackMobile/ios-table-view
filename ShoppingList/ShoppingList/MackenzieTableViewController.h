//
//  MackenzieTableViewController.h
//  ShoppingList
//
//  Created by Vinicius Miana on 2/12/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Armazem.h"
@class Produto;

@interface MackenzieTableViewController : UITableViewController<UITableViewDelegate,UITableViewDataSource>

@property(strong,nonatomic) Armazem *armazem;
@property(strong,nonatomic) Produto *produto;

@end
