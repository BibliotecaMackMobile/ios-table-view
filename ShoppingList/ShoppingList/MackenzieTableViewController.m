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
    }
static MackenzieTableViewController *instancia =nil;
static NSMutableArray *lista;
static NSMutableArray *quantidade;

+(id)allocWithZone:(struct _NSZone *)zone{
    return [self getinstancia];
    
}


+(MackenzieTableViewController*)getinstancia
{
        if (!instancia) {
        instancia = [[super allocWithZone:nil] init];
    }
    

    return instancia;
}

-(id)initWithCoder:(NSCoder *)aDecoder {
    n = (int)lista.count;
    

    return [self init];
}
-(NSString*)getinfoLista :(int)ident
{
    return [lista objectAtIndex:ident];
}
-(NSString*)getinfoQtd :(int)ident
{
    return [quantidade objectAtIndex:ident];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
   // UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    UITableViewCell *cell = [tableView
                             dequeueReusableCellWithIdentifier :@" Cell " ] ;
    if(!cell) {
        cell = [[UITableViewCell alloc] initWithStyle: UITableViewCellStyleValue1 reuseIdentifier:
                @"Cell"];
    }
    // Get the data from the database and fill the cell
   // NSString *row = [NSString stringWithFormat:@"%ld",(long)[indexPath row]];
//    
    [[cell textLabel] setText:[self getinfoLista:(int)[indexPath row]]];
    [[cell detailTextLabel] setText:[self getinfoQtd:(int)[indexPath row]]];
    
    return cell;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return (int)lista.count;
}

-(void) tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
   // NSLog(@"Editing %d",n);
    if(editingStyle == UITableViewCellEditingStyleDelete)
    {
        [lista removeObjectAtIndex:[indexPath row]];
        [quantidade removeObjectAtIndex:[indexPath row]];
//        [quantidade delete:[quantidade objectAtIndex:(int)[indexPath row]]];
        
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
        
                            }
}

-(void)addNewItem:(NSString*) item withQtd:(NSString*)qtd
{
    if(lista == nil){
        lista = [[NSMutableArray alloc] init];
        quantidade = [[NSMutableArray alloc]init];
    }
   // NSLog(item);
    [lista addObject:[NSString stringWithFormat:item]];
    NSLog(qtd);
    [quantidade addObject:[NSString stringWithFormat:qtd]];
    NSLog(@"%i",(int)[lista count]);
    [self loadView];
    }




@end
