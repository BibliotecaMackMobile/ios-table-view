//
//  MackenzieViewController.h
//  ShoppingList
//
//  Created by Vinicius Miana on 2/12/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MackenzieTableViewController.h"

@interface MackenzieViewController : UIViewController<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UIButton *removBtn;
- (IBAction)rmvBtnclicked:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *textField1;
@property (strong, nonatomic)MackenzieTableViewController * table;



@property (weak, nonatomic) IBOutlet UIView *containerTable;

@end
