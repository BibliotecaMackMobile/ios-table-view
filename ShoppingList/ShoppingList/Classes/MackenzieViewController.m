//
//  MackenzieViewController.m
//  ShoppingList
//
//  Created by Vinicius Miana on 2/12/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "MackenzieViewController.h"
#import "MackenzieTableViewController.h"

@interface MackenzieViewController()

@end

@implementation MackenzieViewController

#pragma mark - Default constructor

-(id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if(self)
    {
        
    }
    return self;
}

#pragma mark - UIView

-(void)viewDidLoad
{
    [super viewDidLoad];
}

-(void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - IBActions

-(IBAction)editItem:(id)sender
{
    MackenzieTableViewController * tableView = (MackenzieTableViewController *)self.childViewControllers.lastObject;
    if(![tableView isEditing])
        [tableView setEditing:YES animated:YES];
    else
        [tableView setEditing:NO animated:YES];
}

@end