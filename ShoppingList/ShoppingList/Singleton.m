//
//  Singleton.m
//  ShoppingList
//
//  Created by Gustavo Luís Soré on 18/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "Singleton.h"

@implementation Singleton

@synthesize produtos;

+(Singleton *)getInstancia
{
    static Singleton *instancia = nil;
    if(!instancia)
    {
        instancia = [[super allocWithZone:nil] init];
    }
    return instancia;
}

+(id)allocWithZone:(struct _NSZone *)zone
{
    return [self getInstancia];
}

@end
