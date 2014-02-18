//
//  MackenzieCell.h
//  ShoppingList
//
//  Created by Kaê Coutinho - BEPiD on 2/18/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MackenzieCell : UITableViewCell

@property (nonatomic,weak) IBOutlet UIImageView * itemImageView;
@property (nonatomic,weak) IBOutlet UILabel * itemNameLabel;
@property (nonatomic,weak) IBOutlet UILabel * itemDescriptionLabel;

@end