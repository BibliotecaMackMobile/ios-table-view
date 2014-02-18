//
//  MackenzieItensSingleton.h
//  ShoppingList
//
//  Created by Emannuel Fernandes de Oliveira Carvalho on 2/18/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MackenzieItensSingleton : NSObject {
    NSMutableArray *itens;
}

@property NSMutableArray *itens;

+(id)sharedItens;
-(void)adicionaObjeto:(NSObject *)objeto;
-(void)removeObjeto:(NSUInteger)indice;

@end
