//
//  MackenzieLista.h
//  ShoppingList
//
//  Created by Lucas Domene Firmo on 2/18/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MackenzieLista : NSObject
+ (MackenzieLista *)getInstance;

@property (strong, nonatomic) NSMutableArray *itemList;
@end
