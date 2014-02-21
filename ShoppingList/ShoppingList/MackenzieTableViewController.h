//
//  MackenzieTableViewController.h
//  ShoppingList
//
//  Created by Vinicius Miana on 2/12/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddViewController.h"

@interface MackenzieTableViewController : UITableViewController  <ReloadItemsDelegate>
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end
