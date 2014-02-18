//
//  StoreItem.h
//  ShoppingList
//
//  Created by Kaê Coutinho - BEPiD on 2/18/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StoreItem : NSObject
{
    NSString * itemName;
    NSString * itemDescription;
    UIImage * itemImage;
}

@property (nonatomic,strong) NSString * itemName;
@property (nonatomic,strong) NSString * itemDescription;
@property (nonatomic,strong) UIImage * itemImage;

-(id)init;
-(id)initWithName:(NSString *)newName description:(NSString *)newDescription andImage:(UIImage *)newImage;

@end