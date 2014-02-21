//
//  AddViewController.h
//  ShoppingList
//
//  Created by Lucas Salton Cardinali on 2/18/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ReloadItemsDelegate
- (void) refreshTable;
@end
@interface AddViewController : UIViewController
{
    id<ReloadItemsDelegate>delegate;
}
@property (nonatomic, assign) id <ReloadItemsDelegate> delegate;

@end
