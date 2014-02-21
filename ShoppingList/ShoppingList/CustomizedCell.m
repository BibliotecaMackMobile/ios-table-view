//
//  CustomizedCell.m
//  ShoppingList
//
//  Created by Lucas da Silva Pereira on 18/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "CustomizedCell.h"

@implementation CustomizedCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
    }
    self.backgroundColor = [UIColor clearColor];
    
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)layoutSubviews
{
    [super layoutSubviews];
    self.imageView.frame = CGRectMake(0, 0, 70, 80);
    self.textLabel.frame = CGRectMake(80, 0, 160, 20);
    self.detailTextLabel.frame = CGRectMake(80, 30, 160, 60);
}

@end
