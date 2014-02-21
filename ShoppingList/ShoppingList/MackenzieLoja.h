//
//  MackenzieLoja.h
//  ShoppingList
//
//  Created by Rogerio Bordignon on 2/18/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MackenzieLoja : NSObject
    
@property (nonatomic , strong) NSString * nomeProduto;
@property (nonatomic , strong) NSString * qtdProduto;


-(id)initWithNome:(NSString *)novoNome andQtd:(NSString *)novaQtd;




@end
