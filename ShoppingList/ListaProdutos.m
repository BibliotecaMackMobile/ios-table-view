//
//  ListaProdutos.m
//  ShoppingList
//
//  Created by Renan Santos Soares on 2/21/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "ListaProdutos.h"

@implementation ListaProdutos
@synthesize produtos;

+(ListaProdutos *)sharedInstance {
    static ListaProdutos * instance = nil;
    
    if (!instance) {
        
        instance = [[super allocWithZone:nil]init];
    }
    return instance;
    
}

-(ListaProdutos *) init {
    
    self = [super init];
    
    if (self) {
        
        produtos = [[NSMutableArray alloc]init];
        //alocando espaco na memoria e fazendo a referencia da variavel contatos para o nsmutableArray
        NSString *x = @"banana";
        NSString *y = @"pao";
        NSString *z = @"pastel";
        
        [produtos addObject:x];
        [produtos addObject:y];
        [produtos addObject:z];
        
        
        
        
        
    }
    
    return self;

    
    
}


-(void)adicionaProduto:(NSString*)prod {
    
    [produtos addObject:prod];
    
    
}
@end
