//
//  MackenzieTableViewController.h
//  ShoppingList
//
//  Created by Vinicius Miana on 2/12/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MackenzieTableViewController : UITableViewController
{
    
}
+(MackenzieTableViewController*)getinstancia;
-(void)addNewItem:(NSString*) item withQtd:(NSString*)qtd;

@end
