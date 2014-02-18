//
//  MackenzieTableViewController.m
//  ShoppingList
//
//  Created by Vinicius Miana on 2/12/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "MackenzieTableViewController.h"

@implementation MackenzieTableViewController{
    int n;
    NSMutableArray *itens;
    MackenzieItensSingleton *lista;
}

-(id)initWithCoder:(NSCoder *)aDecoder {
    lista = [MackenzieItensSingleton sharedItens];
    itens = lista.itens;
    n = itens.count;
    return [self init];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" ] ;
    if(!cell) {
        cell = [[UITableViewCell alloc] initWithStyle: UITableViewCellStyleDefault reuseIdentifier: @"Cell"];
    }

    // Get the data from the database and fill the cell
    //NSString *row = [NSString stringWithFormat:@"%d",[indexPath row]];
    NSString *row = [itens objectAtIndex:[indexPath row]]; // colocar os itens do NSMutableArray
    [[cell textLabel] setText:row];
    [[cell detailTextLabel] setText:@"Detail"];
    return cell;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return n;
}

-(void) tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"Editing %d",n);
    if(editingStyle == UITableViewCellEditingStyleDelete)
    {
        // codigo de remocao do item que esta na posicao [indexPath row] no backend
        // e remocao no front-end
        [lista removeObjeto:[indexPath row]];
        n = n -1;
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
        
    }
}






@end
