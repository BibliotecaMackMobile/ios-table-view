//
//  ListaProdutos.m
//  ShoppingList
//
//  Created by Renan Cargnin on 2/18/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "ListaProdutos.h"

@implementation ListaProdutos

@synthesize produtos;

+ (ListaProdutos *)sharedInstance
{
    static ListaProdutos *instance = nil;
    if (!instance)
    {
        instance = [[super allocWithZone:nil] init];
    }
    return instance;
}

+ (id)allocWithZone:(struct _NSZone *)zone
{
    return [self sharedInstance];
}

- (ListaProdutos *)init
{
    self = [super init];
    if (self)
    {
        produtos = [[NSMutableArray alloc] init];
        [produtos addObject:@"batata"];
        [produtos addObject:@"ketchup"];
        [produtos addObject:@"coca cola"];
        [produtos addObject:@"salada"];
        [produtos addObject:@"file"];
        [produtos addObject:@"miojo"];
        [produtos addObject:@"colgate"];
        [produtos addObject:@"trakinas"];
        [produtos addObject:@"bono"];
        [produtos addObject:@"passatempo"];
    }
    return self;
}

- (void)adicionaProduto:(NSString *)nome
{
    [produtos addObject:nome];
}

- (int)qtd
{
    return [produtos count];
}

@end
