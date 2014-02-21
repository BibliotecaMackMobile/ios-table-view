//
//  MackenzieTableViewController.m
//  ShoppingList
//
//  Created by Vinicius Miana on 2/12/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "MackenzieTableViewController.h"
#import "Item.h"
#import "MackenzieSingleton.h"

@implementation MackenzieTableViewController{
    int n;
}

-(id)initWithCoder:(NSCoder *)aDecoder {
    n = 10;
    return [self init];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MackenzieSingleton *single = [MackenzieSingleton sharedInstance];

    
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"Cell"];
    // Get the data from the database and fill the cell
    Item *currentItem = [[single getall] objectAtIndex:indexPath.row];
    NSLog(@"%@", currentItem.Product);
    NSString *row = [NSString stringWithFormat:@"%d",[indexPath row]];
    cell.textLabel.text = currentItem.Product;
    cell.detailTextLabel.text = currentItem.Descritpion;

    return cell;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    MackenzieSingleton *single = [MackenzieSingleton sharedInstance];
   return [[single getall] count];
}

-(void) tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"Editing %d",n);
    if(editingStyle == UITableViewCellEditingStyleDelete)
    {
        // codigo de remocao do item que esta na posicao [indexPath row] no backend
        // e remocao no front-end
        n = n -1;
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
        
    }
}

-(void)refreshTable {
    [self.tableView reloadData];
}





@end
