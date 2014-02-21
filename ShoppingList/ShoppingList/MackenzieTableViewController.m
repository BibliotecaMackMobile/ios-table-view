//
//  MackenzieTableViewController.m
//  ShoppingList
//
//  Created by Vinicius Miana on 2/12/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "MackenzieTableViewController.h"
#import "MackenzieSingleton.h"
#import "SimpleTableCell.h"

@implementation MackenzieTableViewController{
    int n;
    MackenzieSingleton *var;
}

-(id)initWithCoder:(NSCoder *)aDecoder {
    n = 16;
    var = [MackenzieSingleton getInstancia];
    return [self init];
}

-(void)viewDidLoad
{
    [super viewDidLoad];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
}

#pragma mark - UITableView Data Source

// METODO QUE CRIA CADA CELULA EM DETERMINADA SECAO
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *simpleTableIdentifier = @"SimpleTableCell";
    
    SimpleTableCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if(!cell){
        cell = [[SimpleTableCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }// Get the data from the database and fill the cell
    
    [[cell textLabel] setText:[var.itens objectAtIndex:indexPath.row]];
    //cell.thumbnailImageView.image = [UIImage imageNamed:[thumbnails objectAtIndex:indexPath.row]];
    cell.imageView.image = [UIImage imageNamed:[var.thumbnails objectAtIndex:indexPath.row]];
    cell.quantLabel.text = [var.quantidade objectAtIndex:indexPath.row];

    [[cell detailTextLabel] setText:@"Detail"];
    
    return cell;
}

// METODO QUE DEFINE A QUANTIDADE DE CELULAS PARA CADA SECAO
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //return var.itens.count;
    return n;
}

// METODO QUE DEFINE A QUANTIDADE DE SECOES DA UITABLEVIEW
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

#pragma mark - UITableView Delegate

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // METODO DISPARADO QUANDO O USUARIO TOCA EM UMA CELULA LOCALIZADA NO INDEXPATH (ROW)
}

-(void) tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"Editing %d",n);
    if(editingStyle == UITableViewCellEditingStyleDelete)
    {
        // codigo de remocao do item que esta na posicao [indexPath row] no backend
        // e remocao no front-end
        n = n - 1;
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
        [var.itens removeObjectAtIndex:(indexPath.row)];
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 78;
}


@end
