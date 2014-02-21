//
//  MackenzieLista.m
//  ShoppingList
//
//  Created by Eduardo Lombardi on 18/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "MackenzieLista.h"

@implementation MackenzieLista
@synthesize lista;

+(MackenzieLista *)getInstance {

    static MackenzieLista * nova = nil;
    if(!nova) {
        
        nova = [[super allocWithZone:nil] init];
    }
    return nova;
}

-(void)criarLista
{
  lista = [[NSMutableArray alloc]init];
    //NSLog(@"%@",valor);
    
}
-(void)addElemento: (NSString *) valor
{
    [lista addObject:valor];
    NSLog(@"%d",[lista count]);
}
-(id)elemento:(int) i
{
    NSLog(@" ELEMENTO: %@",[lista objectAtIndex:i]);
    return [lista objectAtIndex:i];
}
-(int) tamanho {
    return [lista count];
}
- (NSString *)description: (int) row
{
    NSString *descriptionString =
    [[NSString alloc] initWithFormat:@"%@",
     [lista objectAtIndex:row]];
    return descriptionString;
}



@end


