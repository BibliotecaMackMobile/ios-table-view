//
//  SimpleTableCell.h
//  ShoppingList
//
//  Created by Diego Jurfest Ceccon on 21/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SimpleTableCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UILabel *nameLabel;
@property (nonatomic, weak) IBOutlet UILabel *quantLabel;
@property (nonatomic, weak) IBOutlet UIImageView *thumbnailImageView;

@end
