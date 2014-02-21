//
//  MackenzieLista.h
//  ShoppingList
//
//  Created by Eduardo Lombardi on 18/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MackenzieLista : NSObject {
    NSMutableArray * lista;
}
@property (nonatomic,strong) NSMutableArray * lista;
+(MackenzieLista *) getInstance;
-(void)criarLista;
-(void)addElemento:(NSString *) valor;
-(id)elemento:(int ) i;
-(int)tamanho;
- (NSString *)description: (int) row;
@end
