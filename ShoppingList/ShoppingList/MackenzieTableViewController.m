//
//  MackenzieTableViewController.m
//  ShoppingList
//
//  Created by Vinicius Miana on 2/12/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "MackenzieTableViewController.h"
#import "MackenzieLista.h"

@implementation MackenzieTableViewController

-(id)initWithCoder:(NSCoder *)aDecoder
{
    return [self init];
}

#pragma mark - TableViewController Data Source

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //dequeue reusable cell
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    //create new cell if its nil
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"Cell"];
    }
    
    NSDictionary *itemDic = [[NSDictionary alloc] initWithDictionary:[[MackenzieLista getInstance].itemList objectAtIndex:indexPath.row]];
    cell.textLabel.text = [itemDic objectForKey:@"name"];
    
    NSString *detailedText = nil;
    if ([[itemDic objectForKey:@"quantity"] isEqualToString:@"1"]) {
        detailedText = [NSString stringWithFormat:@"%@ item", [itemDic objectForKey:@"quantity"]];
    } else {
        detailedText = [NSString stringWithFormat:@"%@ items", [itemDic objectForKey:@"quantity"]];
    }
    cell.detailTextLabel.text = detailedText;
    
    return cell;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[MackenzieLista getInstance].itemList count];
}

-(void) tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(editingStyle == UITableViewCellEditingStyleDelete)
    {
        // codigo de remocao do item que esta na posicao [indexPath row] no backend
        // e remocao no front-end
        [[MackenzieLista getInstance].itemList removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
        
    }
}

@end
