//
//  Armazem.m
//  ShoppingList
//
//  Created by Gustavo Luís Soré on 21/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "Armazem.h"

@implementation Armazem

@synthesize conteudo,estado,q;

+(Armazem *)getInstancia{
    static Armazem *instancia = nil;
    if(!instancia){
        instancia = [[super allocWithZone:nil]init];
    }
    return instancia;
}

+(id)allocWithZone:(struct _NSZone *)zone{
    return [self getInstancia];
}

-(id)init {
    if (self = [super init]) {
        conteudo = [[NSMutableArray alloc] init];
        q = 0;
    }
    return self;
}

@end
