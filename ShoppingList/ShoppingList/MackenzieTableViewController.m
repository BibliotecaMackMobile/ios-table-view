//
//  MackenzieTableViewController.m
//  ShoppingList
//
//  Created by Vinicius Miana on 2/12/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "MackenzieTableViewController.h"
#import "ItemStore.h"

@implementation MackenzieTableViewController

-(id)initWithCoder:(NSCoder *)aDecoder {
    return [self init];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    // Get the data from the database and fill the cell
    NSMutableArray *produtos = [[ItemStore sharedInstance] itens];
    NSString *row = [produtos objectAtIndex:[indexPath row]];
    NSLog(@"%@",row);
    [[cell textLabel] setText:row];
    [[cell detailTextLabel] setText:@"Detail"];
    return cell;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[[ItemStore sharedInstance] itens] count];
}


//-(void) tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    //NSLog(@"Editing %d",n);
//    if(editingStyle == UITableViewCellEditingStyleDelete)
//    {
//        // codigo de remocao do item que esta na posicao [indexPath row] no backend
//        // e remocao no front-end
//        //n = n -1;
//        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
//        
//        
//    }
//}

-(void)inserirlinhas{
    
    MackenzieTableViewController *childViewController = (MackenzieTableViewController *) self.childViewControllers.lastObject;
    
    [(UITableView *)childViewController reloadData];
    
}

- (NSString *)tableView:(UITableView *)tableView titleForDeleteConfirmationButtonForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return @"Remover";
}





- (void)tableView:(UITableView *)tableView
commitEditingStyle:(UITableViewCellEditingStyle)editingStyle
forRowAtIndexPath:(NSIndexPath *)indexPath
{
    // If the table view is asking to commit a delete command...
    if (editingStyle == UITableViewCellEditingStyleDelete)
    {
        ItemStore *ps = [ItemStore sharedInstance];
        NSArray *items = [ps itens];
        ItemStore *p = [items objectAtIndex:[indexPath row]];
        [ps removeItem:p];
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}


@end
