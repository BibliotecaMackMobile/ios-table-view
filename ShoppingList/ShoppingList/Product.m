//
//  Product.m
//  ShoppingList
//
//  Created by Lucas da Silva Pereira on 21/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "Product.h"

@implementation Product
@synthesize name;
@synthesize detail;
@synthesize qtd;
@synthesize image;

-(id)initWithName:(NSString*)nm detalhe:(NSString*)det qtd:(NSInteger)quant image:(UIImage*)img
{
    self = [self init];
    if (self) {
        name = nm;
        detail = det;
        qtd = quant;
        image = img;
    }
    return self;
}
@end
