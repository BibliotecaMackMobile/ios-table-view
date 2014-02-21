//
//  MackenzieSingletonItem.m
//  ShoppingList
//
//  Created by Luiz on 18/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "MackenzieSingletonItem.h"

@implementation MackenzieSingletonItem

@synthesize itensListaDeCompras;

-(id)init {
    if (self = [super init]) {
        itensListaDeCompras = [[NSMutableArray alloc] initWithObjects:@"Agua", @"Frutas", @"Verdura", nil];
    }
    return self;
}

+(id)allocWithZone:(struct _NSZone *)zone {
    return [self sharadeManager];
}

+(MackenzieSingletonItem *)sharadeManager {
    static MackenzieSingletonItem *containerItens = nil;
    if (!containerItens) {
        containerItens = [[super allocWithZone:nil] init];
    }
    return containerItens;
}

-(void)adicionarItemNaListaDeCompras:(NSString *)itemAdicionado {
    [itensListaDeCompras addObject:itemAdicionado];
}

-(void)removerItemNaListaDeCompras:(NSString *)itemRemovido {
    [itensListaDeCompras removeObjectIdenticalTo:itemRemovido];
}

@end
