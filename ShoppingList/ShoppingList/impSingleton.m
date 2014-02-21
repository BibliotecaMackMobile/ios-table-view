//
//  impSingleton.m
//  ShoppingList
//
//  Created by Gregory on 18/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "impSingleton.h"

@interface impSingleton ()

@end

@implementation impSingleton
@synthesize dados;

+(impSingleton *)getInstancia
{
    static impSingleton *instancia = nil;
    if (!instancia) {
        instancia = [[super allocWithZone:nil]init];
    }
    return instancia;
}

+(id)allocWithZone:(NSZone*)zone
{
    return [self getInstancia];
}
-(id)init{
    self = [super init];
    if (self) {
        dados = [[NSMutableArray alloc]init];
    }
    return self;
}

@end
