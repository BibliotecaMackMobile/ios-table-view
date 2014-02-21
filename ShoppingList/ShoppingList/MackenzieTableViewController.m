//
//  MackenzieTableViewController.m
//  ShoppingList
//
//  Created by Vinicius Miana on 2/12/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "MackenzieTableViewController.h"
#import "Produto.h"
#import "MyCustonCell.h"
#import "Armazem.h"

@implementation MackenzieTableViewController{
    int n;
    int s;
}

@synthesize armazem,produto;

-(id)initWithCoder:(NSCoder *)aDecoder {
    armazem = [Armazem getInstancia];
    return [self init];
}

-(void)insertCell:(Produto*)p{
    NSLog(@"Celula inserida.");
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MyCustonCell *cell = [[MyCustonCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    produto = [armazem.conteudo objectAtIndex:indexPath.row];
    cell.labelNomeProduto.text = produto.nome;
    cell.labelQuantidadeProduto.text = produto.quant;
    return cell;
}

//-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
//    return s;
//}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return armazem.conteudo.count;
}

-(void) tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"Editing %d",n);
    if(editingStyle == UITableViewCellEditingStyleDelete)
    {
        // codigo de remocao do item que esta na posicao [indexPath row] no backend
        // e remocao no front-end
        armazem = [Armazem getInstancia];
        [armazem.conteudo removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
        
    }
}






@end
