//
//  MackenzieSingleton.m
//  ShoppingList
//
//  Created by Diego Jurfest Ceccon on 18/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "MackenzieSingleton.h"

@implementation MackenzieSingleton
@synthesize itens;
@synthesize thumbnails;

-(id)init
{
    self = [super init];
    if (self) {
        itens = [[NSMutableArray alloc]init];
    
    }
    return self;
}

+(id)allocWithZone:(NSZone *)zone
{
    return [self getInstancia];
}

+(MackenzieSingleton *)getInstancia
{
    static MackenzieSingleton *instancia = nil;
    if(instancia==nil)
    {
           instancia = [[super allocWithZone:nil]init];
    }
       return instancia;
}



//MackenzieSingleton *is = [[MackenzieSingleton alloc] init];
//MackenzieSingleton *is = [MackenzieSingleton getInstancia];


@end
