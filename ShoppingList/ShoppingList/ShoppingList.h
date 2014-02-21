//
//  ShoppingList.h
//  ShoppingList
//
//  Created by Lucas da Silva Pereira on 21/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Product.h"

@interface ShoppingList : NSObject
{
    NSMutableArray *allItems;
}

+(ShoppingList*)getInstance;
-(void)addProduct:(Product*)p;
-(void)removeProductAtIndex:(NSInteger*)index;
-(NSArray*)allProducts;
@end
