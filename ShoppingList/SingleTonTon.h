//
//  SingleTonTon.h
//  ShoppingList
//
//  Created by Rodrigo Soldi Lopes on 18/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SingleTonTon : NSObject

@property NSMutableArray *itens;
@property NSMutableArray *quantidade;

+(id)sharedItens;
-(void)adicionaObjeto:(NSObject *)objeto withQuantidade: (NSObject *)qtd;
-(void)deletaObjeto:(NSUInteger)indice;
@end
