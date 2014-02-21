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
    return [self init];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    
    // Get the data from the database and fill the cell
    NSString *produto = [[[MackenzieSingletonItem sharadeManager] itensListaDeCompras] objectAtIndex:[indexPath row]];
    [[cell textLabel] setText:produto];
    [[cell detailTextLabel] setText:@"Detail"];
    return cell;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[[MackenzieSingletonItem sharadeManager] itensListaDeCompras] count];
}

-(void) tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"Editing %d",[[[MackenzieSingletonItem sharadeManager] itensListaDeCompras] count]);
    if(editingStyle == UITableViewCellEditingStyleDelete)
    {
        // codigo de remocao do item que esta na posicao [indexPath row] no backend
        // e remocao no front-end
        
        // Deleta o item da listaDeCompras
        NSString *removerItem = [[[MackenzieSingletonItem sharadeManager] itensListaDeCompras] objectAtIndex:[indexPath row]];
        [[MackenzieSingletonItem sharadeManager] removerItemNaListaDeCompras:removerItem];
        
        // Deve deletar e depois criar o realese
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        
    }
}



@end
