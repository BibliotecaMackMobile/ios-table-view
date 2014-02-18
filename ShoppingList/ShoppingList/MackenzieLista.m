//
//  MackenzieLista.m
//  ShoppingList
//
//  Created by Lucas Domene Firmo on 2/18/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "MackenzieLista.h"

@implementation MackenzieLista

+ (MackenzieLista *)getInstance
{
    static MackenzieLista *instance = nil;
    if (!instance) {
        instance = [[super alloc] init];
    }
    return instance;
}

- (NSMutableArray *)itemList
{
    if (!_itemList) {
        _itemList = [[NSMutableArray alloc] init];
    }
    return _itemList;
}

@end
