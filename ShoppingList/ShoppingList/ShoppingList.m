//
//  ShoppingList.m
//  ShoppingList
//
//  Created by Lucas da Silva Pereira on 21/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "ShoppingList.h"

@implementation ShoppingList
+(ShoppingList*)getInstance
{
    static ShoppingList *shoppingList = nil;
    if (!shoppingList) {
        shoppingList = [[super allocWithZone:nil] init];
    }
    return shoppingList;
}

+(id)allocWithZone:(struct _NSZone *)zone
{
    return [self getInstance];
}

-(id)init
{
    self = [super init];
    if(self) {
        if (!allItems) {
            allItems = [[NSMutableArray alloc] init];
        }
    }
    return self;
}

-(void)addProduct:(Product *)p
{
    if (p) {
        [allItems addObject:p];
    }
}

-(void)removeProductAtIndex:(NSInteger*)index
{
    [allItems removeObjectAtIndex:(NSUInteger)index];
}

-(NSArray*)allProducts
{
    return allItems;
}
@end
