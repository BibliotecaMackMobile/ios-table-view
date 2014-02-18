//
//  MackenzieTableViewController.h
//  ShoppingList
//
//  Created by Vinicius Miana on 2/12/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MackenzieCell.h"
#import "StoreItems.h"

@interface MackenzieTableViewController : UITableViewController <UITableViewDataSource,UITableViewDelegate>
{
    StoreItems * storeItems;
}

@end