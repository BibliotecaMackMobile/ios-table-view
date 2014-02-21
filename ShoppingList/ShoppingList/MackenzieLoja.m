//
//  MackenzieLoja.m
//  ShoppingList
//
//  Created by Rogerio Bordignon on 2/18/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "MackenzieLoja.h"

@implementation MackenzieLoja
@synthesize nomeProduto, qtdProduto;

-(id)initWithNome:(NSString *)novoNome andQtd:(NSString *)novaQtd {
    self = [super init];
    if(self) {
    nomeProduto = novoNome;
    qtdProduto = novaQtd;
    }
    return self;
}


@end
