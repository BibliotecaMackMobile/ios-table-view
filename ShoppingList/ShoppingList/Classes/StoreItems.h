//
//  StoreItems.h
//  ShoppingList
//
//  Created by Kaê Coutinho - BEPiD on 2/18/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StoreItem.h"

@interface StoreItems : NSObject

@property (nonatomic, strong) NSMutableArray *items;

+(instancetype)sharedInstance;

@end