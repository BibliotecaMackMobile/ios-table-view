//
//  ListaProdutos.h
//  ShoppingList
//
//  Created by Renan Cargnin on 2/18/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ListaProdutos : NSObject
{
    NSMutableArray *produtos;
}

@property NSMutableArray *produtos;

+ (ListaProdutos *)sharedInstance;
- (void)adicionaProduto:(NSString *)nome;
- (int)qtd;

@end
