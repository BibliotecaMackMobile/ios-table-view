//
//  MackenzieAddViewController.h
//  ShoppingList
//
//  Created by Luiz on 21/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MackenzieAddViewController : UIViewController <UITextFieldDelegate>

@property (nonatomic, strong) UITextField *txtElemento;

@property (nonatomic, strong) UILabel *lblElemento;

@property (nonatomic, strong) UIButton *btnAdd;

-(CGRect)makeRectWithX:(CGFloat)x andY:(CGFloat)y andLargura:(CGFloat)largura andAltura:(CGFloat)altura;

-(IBAction)efeitoBtnAdd:(id)sender;

@end
