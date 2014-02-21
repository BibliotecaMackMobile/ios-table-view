//
//  MackenzieSingletonItem.h
//  ShoppingList
//
//  Created by Luiz on 18/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MackenzieSingletonItem : NSObject

@property (nonatomic, strong) NSMutableArray *itensListaDeCompras;

+(MackenzieSingletonItem*)sharadeManager;

-(void)adicionarItemNaListaDeCompras:(NSString*)itemAdicionado;
-(void)removerItemNaListaDeCompras:(NSString*)itemRemovido;

@end
