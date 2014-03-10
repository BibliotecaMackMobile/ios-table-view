//
//  MackenzieTableViewController.m
//  ShoppingList
//
//  Created by Vinicius Miana on 2/12/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "MackenzieTableViewController.h"
#import "listaSingleton.h"

@implementation MackenzieTableViewController{
    int n;
    NSMutableArray *dataArray;
    listaSingleton *sing;
}

-(id)initWithCoder:(NSCoder *)aDecoder {
    n = 10;
    sing = [listaSingleton instanciar];
    dataArray = sing.array;
    return [self init];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier :@" Cell " ] ;
    if(!cell) {
        cell = [[UITableViewCell alloc] initWithStyle: UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    
    // Get the data from the database and fill the cell
    NSString *row = [dataArray objectAtIndex:[indexPath row]];
    [[cell textLabel] setText:row];
    [[cell detailTextLabel] setText:@"Detail"];
    return cell;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [dataArray count];
}

-(void) tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"Editing %d",n);
    if(editingStyle == UITableViewCellEditingStyleDelete)
    {
//        // codigo de remocao do item que esta na posicao [indexPath row] no backend
//        // e remocao no front-end
//        n = n -1;
//        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
        
            // If the table view is asking to commit a delete command...
            if (editingStyle == UITableViewCellEditingStyleDelete)
            {
                listaSingleton *ps = [listaSingleton instanciar];
                NSArray *items = [ps array];
                [[ps array]removeObjectAtIndex:[indexPath row]];
                
                // We also remove that row from the table view with an animation
                [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath]
                                 withRowAnimation:UITableViewRowAnimationFade];
            }

        
    }
}

- (NSString *)tableView:(UITableView *)tableView titleForDeleteConfirmationButtonForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return @"Remove";
}







@end
