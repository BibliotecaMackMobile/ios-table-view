//
//  ItemStore.m
//  ShoppingList
//
//  Created by Marcelo Mendonça Miranda on 18/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "ItemStore.h"

@implementation ItemStore

@synthesize itens;

-(id)init {
    self = [super init];
    if (self) {
        itens = [[NSMutableArray alloc] initWithCapacity:30];
    }
    return self;
}


+(ItemStore *)sharedInstance {
    static ItemStore *instancia = nil;
    if(!instancia){
        instancia = [[super alloc] init];
    }
    return instancia;
}


+ (ItemStore *)defaultStore
{
    static ItemStore *defaultStore = nil;
    if(!defaultStore)
        defaultStore = [[super allocWithZone:nil] init];
    
    return defaultStore;
}

+ (id)allocWithZone:(NSZone *)zone
{
    return [self defaultStore];
}


- (void)removeItem:(ItemStore *)p
{
    
    //a merda estava aqui
    [itens removeObjectIdenticalTo:p];
}



@end
