//
//  impSingleton.h
//  ShoppingList
//
//  Created by Gregory on 18/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface impSingleton : NSObject

+(impSingleton *)getInstancia;
@property NSMutableArray *dados;

@end
