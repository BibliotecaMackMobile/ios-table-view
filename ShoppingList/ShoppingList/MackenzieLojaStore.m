//
//  MackenzieLojaStore.m
//  ShoppingList
//
//  Created by Rogerio Bordignon on 2/21/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "MackenzieLojaStore.h"

@implementation MackenzieLojaStore

+ (MackenzieLojaStore *)defaultStore {
    static MackenzieLojaStore *defaultStore = nil;
    if(!defaultStore)
        defaultStore = [[super allocWithZone:nil] init];
    
    return defaultStore;
}

+ (id)allocWithZone:(NSZone *)zone {
    return [self defaultStore];
}


- (id)init{
    self = [super init];
    if(self) {
        productList = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSArray *)productList {
    return productList;
}

- (void)createList:(MackenzieLoja *)newContact {
    [productList addObject:newContact];
}

- (void)removeItem:(MackenzieLoja *)item {
    [productList removeObjectIdenticalTo:item];
}


@end
