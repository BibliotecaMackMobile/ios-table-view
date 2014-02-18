//
//  StoreItems.m
//  ShoppingList
//
//  Created by Kaê Coutinho - BEPiD on 2/18/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "StoreItems.h"

@implementation StoreItems

@synthesize items;

-(id)init
{
    self = [super init];
    if (self) {
        items = [[NSMutableArray alloc]init];
    }
    return self;
}

+(instancetype)sharedInstance
{
    static dispatch_once_t onceToken = NULL;
    static StoreItems * instance = nil;
    dispatch_once(&onceToken, ^
    {
        instance = [[StoreItems alloc] init];
    });
    return instance;
}

@end