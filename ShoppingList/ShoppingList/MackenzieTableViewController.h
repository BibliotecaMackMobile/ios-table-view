//
//  MackenzieTableViewController.h
//  ShoppingList
//
//  Created by Vinicius Miana on 2/12/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Singleton.h"
@class Produto;

@interface MackenzieTableViewController : UITableViewController<UITableViewDelegate,UITableViewDataSource>

@property Singleton *singleton;

-(void)insertCell:(Produto*)p;

@end
