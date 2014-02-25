//
//  MackenzieTableViewController.h
//  ShoppingList
//
//  Created by Vinicius Miana on 2/12/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ListaProdutos.h"

@interface MackenzieTableViewController : UITableViewController
{
    ListaProdutos * lista;
    int n;
}
@end
