//
//  StoreItem.m
//  ShoppingList
//
//  Created by Kaê Coutinho - BEPiD on 2/18/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "StoreItem.h"

@interface StoreItem()

@end

@implementation StoreItem

@synthesize itemName;
@synthesize itemDescription;
@synthesize itemImage;

-(id)init
{
    self = [super init];
    if(self)
    {
        itemName = nil;
        itemDescription = nil;
        itemImage = nil;
    }
    return self;
}

-(id)initWithName:(NSString *)newName description:(NSString *)newDescription andImage:(UIImage *)newImage
{
    self = [super init];
    if(self)
    {
        itemName = newName;
        itemDescription = newDescription;
        itemImage = newImage;
    }
    return self;
}

@end