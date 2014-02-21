//
//  listaSingleton.m
//  ShoppingList
//
//  Created by Lucas Augusto Cordeiro on 2/18/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "listaSingleton.h"

@implementation listaSingleton

@synthesize array;

static listaSingleton *instancia = nil;

+(id)instanciar{
    
    if (!instancia) {
        instancia = [[super allocWithZone:nil]init];
    }
    return instancia;
}

-(void)addObject:(NSObject *)object{
    if (!array) {
        array = [[NSMutableArray alloc]init];
    }
    [array addObject:object];
}

-(void)removeObject:(NSObject *)object atIndex:(int)index{
    
}


@end
