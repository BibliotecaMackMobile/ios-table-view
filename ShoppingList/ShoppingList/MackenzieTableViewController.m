//
//  MackenzieTableViewController.m
//  ShoppingList
//
//  Created by Vinicius Miana on 2/12/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "MackenzieTableViewController.h"

@implementation MackenzieTableViewController

-(id)initWithCoder:(NSCoder *)aDecoder {
    list = [[MackenzieLojaStore alloc] init];
    return [self init];
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
                             if(!cell) {
                                 cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"Cell"];
                             }
    // Get the data from the database and fill the cell
    MackenzieLoja *product = (MackenzieLoja *)[[list productList] objectAtIndex: [indexPath row]];
    
 
    [[cell textLabel] setText:[product nomeProduto]];
    [[cell detailTextLabel] setText:[product qtdProduto]];
    return cell;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [list productList].count;
}

-(void) tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(editingStyle == UITableViewCellEditingStyleDelete)
    {
        // codigo de remocao do item que esta na posicao [indexPath row] no backend
        // e remocao no front-end
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
        
    }
}






@end
