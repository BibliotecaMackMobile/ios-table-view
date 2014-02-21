//
//  MackenzieSingleton.h
//  ShoppingList
//
//  Created by Lucas Salton Cardinali on 2/21/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Item.h"
@interface MackenzieSingleton : NSObject
@property (strong,nonatomic) NSMutableArray* objectList;
+ (id)sharedInstance;

-(void)add:(Item*)item;
-(NSArray*)getall;



@end
