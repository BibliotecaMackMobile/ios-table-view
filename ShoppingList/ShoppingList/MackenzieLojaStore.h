//
//  MackenzieLojaStore.h
//  ShoppingList
//
//  Created by Rogerio Bordignon on 2/21/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MackenzieLoja.h"

@interface MackenzieLojaStore : NSObject {
    
        NSMutableArray * productList;
}
+ (MackenzieLojaStore *)defaultStore;
- (NSArray *)productList;
- (void)createList:(MackenzieLoja *)newItem;
- (void)removeItem:(MackenzieLoja *)item;
@end
