//
//  listaSingleton.h
//  ShoppingList
//
//  Created by Lucas Augusto Cordeiro on 2/18/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface listaSingleton : NSObject{
    NSMutableArray *array;
}

@property NSMutableArray *array;

+(id)instanciar;
-(void)addObject:(NSObject *)object;
-(void)removeObject:(NSObject *)object atIndex:(int)index;


@end
