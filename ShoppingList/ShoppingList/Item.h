//
//  Item.h
//  ShoppingList
//
//  Created by Lucas Salton Cardinali on 2/18/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Item : NSObject <NSCoding>

@property(nonatomic,strong) NSString* Product;
@property(nonatomic,strong) NSString* Descritpion;

- (id)initWithProductName:(NSString*)name andDescription:(NSString*)description;

@end
