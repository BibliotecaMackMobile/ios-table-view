//
//  MackenzieItensSingleton.m
//  ShoppingList
//
//  Created by Emannuel Fernandes de Oliveira Carvalho on 2/18/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "MackenzieItensSingleton.h"

@implementation MackenzieItensSingleton

@synthesize itens;

static MackenzieItensSingleton *instancia = nil;

+(id)sharedItens {
    if (!instancia) {
        instancia = [[super allocWithZone:nil] init];
    }
    return instancia;
}

-(void)adicionaObjeto:(NSObject *)objeto {
    if (!itens) {
        itens = [[NSMutableArray alloc] init];
    }
    [itens addObject:objeto];
}

- (void)removeObjeto:(NSUInteger)indice {
    [itens removeObjectAtIndex:indice];
}


@end
