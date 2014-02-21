//
//  MackenzieSingleton.h
//  ShoppingList
//
//  Created by Diego Jurfest Ceccon on 18/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MackenzieSingleton : NSObject

+(MackenzieSingleton *)getInstancia;

@property(nonatomic, strong) NSMutableArray *itens;
@property(nonatomic, strong) NSMutableArray *thumbnails;
@property(nonatomic, strong) NSMutableArray *quantidade;

@end
