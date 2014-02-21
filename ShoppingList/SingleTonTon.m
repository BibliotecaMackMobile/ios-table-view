//
//  SingleTonTon.m
//  ShoppingList
//
//  Created by Rodrigo Soldi Lopes on 18/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "SingleTonTon.h"

@implementation SingleTonTon

@synthesize itens;
@synthesize quantidade;

static SingleTonTon *instancia = nil;

+(id)sharedItens {
    if (!instancia) {
        instancia = [[super allocWithZone:nil] init];
        }
    return instancia;
}

-(void)adicionaObjeto:(NSObject *)objeto withQuantidade: (NSObject *)qtd{
    if (!itens) {
        itens = [[NSMutableArray alloc] init];
        }
    if (!quantidade) {
        quantidade = [[NSMutableArray alloc] init];
    }
    [itens addObject:objeto];
    [quantidade addObject:qtd];
}

-(void)deletaObjeto:(NSUInteger)indice{
    [itens removeObjectAtIndex:indice];
    [quantidade removeObjectAtIndex:indice];
}
@end
