//
//  MackenzieTableViewController.m
//  ShoppingList
//
//  Created by Vinicius Miana on 2/12/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "MackenzieTableViewController.h"
#import "MackenzieViewController.h"

@implementation MackenzieTableViewController
{
    SingleTonTon *single;
    //int n;
}
-(id)initWithCoder:(NSCoder *)aDecoder
{
    single = [SingleTonTon sharedItens];
    //n = [[single itens] count];
    
    return [self init];
}



//Esse metodo eh o que preenche as celulas da table view
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" ] ;
    if (!cell ) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"Cell" ] ;
        
        [cell setAccessoryType:UITableViewCellAccessoryDetailButton];
    }
   
    // Get the data from the database and fill the cell
    //NSString *row = [NSString stringWithFormat:@"%d",[indexPath row]];
    
    
    [[cell textLabel] setText:single.itens[indexPath.row]];
    [[cell detailTextLabel] setText:single.quantidade[indexPath.row]];
    
    NSLog(@"inserindo");
    
    return cell;
}


//retorna quantas linhas tera a tabela
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[single itens] count];
}



-(void) tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleInsert) {
        [tableView insertRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationTop];
    }

    if(editingStyle == UITableViewCellEditingStyleDelete)
    {
        // codigo de remocao do item que esta na posicao [indexPath row] no backend
        // e remocao no front-end
        [single deletaObjeto:[indexPath row]];
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
        
    }
}



@end
