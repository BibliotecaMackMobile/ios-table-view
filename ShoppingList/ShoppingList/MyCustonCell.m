//
//  MyCustonCell.m
//  ShoppingList
//
//  Created by Gustavo Luís Soré on 21/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "MyCustonCell.h"

@implementation MyCustonCell

@synthesize labelNomeProduto,labelQuantidadeProduto;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        labelNomeProduto = [[UILabel alloc] initWithFrame:CGRectMake(45, 10, 200, 30)];
        labelQuantidadeProduto = [[UILabel alloc] initWithFrame:CGRectMake(200, 10, 100, 30)];
        labelNomeProduto.font = [UIFont fontWithName:@"Arial" size:16.0f];
        labelQuantidadeProduto.font = [UIFont fontWithName:@"Arial" size:16.0f];
        
        [self addSubview:labelNomeProduto];
        [self addSubview:labelQuantidadeProduto];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

