//
//  ItemStore.h
//  ShoppingList
//
//  Created by Marcelo Mendonça Miranda on 18/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ItemStore : NSObject

@property (nonatomic, readonly) NSMutableArray *itens;

+(ItemStore *)sharedInstance;
+ (ItemStore *)defaultStore;
- (void)removeItem:(ItemStore *)p;
@end
