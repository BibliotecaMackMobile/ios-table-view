//
//  Armazem.h
//  ShoppingList
//
//  Created by Gustavo Luís Soré on 21/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Armazem : NSObject

@property (strong, nonatomic) NSMutableArray *conteudo;
@property BOOL estado;
@property int q;

+(Armazem *)getInstancia;

@end
