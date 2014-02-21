//
//  Product.h
//  ShoppingList
//
//  Created by Lucas da Silva Pereira on 21/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Product : NSObject

@property (strong, nonatomic) NSString* name;
@property (strong, nonatomic) NSString* detail;
@property (nonatomic) NSInteger qtd;
@property (strong, nonatomic) UIImage* image;

-(id)initWithName:(NSString*)nm detalhe:(NSString*)det qtd:(NSInteger)quant image:(UIImage*)img;
@end
