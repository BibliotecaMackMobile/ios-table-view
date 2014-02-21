//
//  Singleton.h
//  ShoppingList
//
//  Created by Gustavo Luís Soré on 18/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Singleton : NSObject

@property (strong,nonatomic) NSMutableArray *produtos;

+(Singleton *)getInstancia;

@end
