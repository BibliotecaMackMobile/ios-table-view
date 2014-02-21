//
//  ListaProdutos.h
//  ShoppingList
//
//  Created by Renan Santos Soares on 2/21/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ListaProdutos : NSObject
{
    
}
@property NSMutableArray *produtos;
+(ListaProdutos *)sharedInstance;
@end
