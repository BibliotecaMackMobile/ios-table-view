//
//  MackenzieTableViewController.m
//  ShoppingList
//
//  Created by Vinicius Miana on 2/12/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "MackenzieTableViewController.h"
#import "ListaProdutos.h"

@implementation MackenzieTableViewController{
    ListaProdutos *lista;
    int n;
}

-(id)initWithCoder:(NSCoder *)aDecoder {
    lista = [ListaProdutos sharedInstance];
    n = [lista qtd];
    return [self init];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    // Get the data from the database and fill the cell
    NSLog(@"%d", [indexPath row]);
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" ] ;
    if (! cell ) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell" ] ;
    }
    NSString *row = [NSString stringWithFormat:@"%d",[indexPath row]];
    [[cell textLabel] setText:[[lista produtos] objectAtIndex:[indexPath row]]];
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
        n = n -1;
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    }
}






@end
