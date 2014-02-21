//
//  SimpleTableCell.m
//  ShoppingList
//
//  Created by Diego Jurfest Ceccon on 21/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "SimpleTableCell.h"

@implementation SimpleTableCell

@synthesize nameLabel = _nameLabel;
@synthesize quantLabel = _prepTimeLabel;
@synthesize thumbnailImageView = _thumbnailImageView;

-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
//        _nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(<#CGFloat x#>, <#CGFloat y#>, <#CGFloat width#>, <#CGFloat height#>)];
    }
    
    return self;
}

@end
