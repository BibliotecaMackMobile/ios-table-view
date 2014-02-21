//
//  MackenzieTableViewController.m
//  ShoppingList
//
//  Created by Vinicius Miana on 2/12/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "MackenzieTableViewController.h"
#import "Produto.h"

@implementation MackenzieTableViewController{
    int n;
    int s;
}

@synthesize singleton;

-(id)initWithCoder:(NSCoder *)aDecoder {
    int num = 0;
    singleton = [Singleton getInstancia];
    return [self init];
}

-(void)insertCell:(Produto*)p{
    NSLog(@"Celula inserida.");
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    Produto *p = [singleton.produtos objectAtIndex:[indexPath row]];
    NSString *row = [NSString stringWithFormat:@"%d",[singleton.produtos count]];
    [[cell textLabel] setText:row];
    [[cell detailTextLabel] setText:@"Detail"];
    if([indexPath row]%2 == 0) cell.backgroundColor = [UIColor redColor];
    else cell.backgroundColor = [UIColor blueColor];
    return cell;
}

//-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
//    return s;
//}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [singleton.produtos count];
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
