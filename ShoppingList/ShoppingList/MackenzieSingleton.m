//
//  MackenzieSingleton.m
//  ShoppingList
//
//  Created by Lucas Salton Cardinali on 2/21/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "MackenzieSingleton.h"
#import "Item.h"
@implementation MackenzieSingleton

+ (id)sharedInstance
{
    static dispatch_once_t pred = 0;
    __strong static id _sharedObject = nil;
    dispatch_once(&pred, ^{
        _sharedObject = [[self alloc] init]; // or some other init method
    });
    return _sharedObject;
}

-(id)init {
    self = [super init];
    if(self) {
        _objectList = [[NSMutableArray alloc]init];
    }
    return self;
}


-(void)add:(Item*)item {
 [_objectList addObject:item];
}

-(NSArray*)getall
{
  
    
     return [NSArray arrayWithArray:_objectList];
}


@end
