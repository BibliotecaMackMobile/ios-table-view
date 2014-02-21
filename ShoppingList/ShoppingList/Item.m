//
//  Item.m
//  ShoppingList
//
//  Created by Lucas Salton Cardinali on 2/18/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "Item.h"

@implementation Item


- (id)initWithProductName:(NSString*)name andDescription:(NSString*)description
{
    self = [super init];
    if(self) {
    _Product = name;
    _Descritpion = description;
    }
    return self;
}





@end
