//
//  Produto.m
//  ShoppingList
//
//  Created by Gustavo Luís Soré on 18/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "Produto.h"

@implementation Produto

@synthesize nome,quant;

-(NSString*)toString
{
    NSString *retorno;
    retorno = [NSString stringWithFormat:@"%@         %@",nome,quant];
    return retorno;
}

@end
