//
//  MackenzieViewController.m
//  ShoppingList
//
//  Created by Vinicius Miana on 2/12/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "MackenzieViewController.h"
#import "MackenzieTableViewController.h"
#import "MackenzieAdicionarViewController.h"


@interface MackenzieViewController () {
    MackenzieTableViewController * childViewController;
}
@property (weak, nonatomic) IBOutlet UIView *tvc;
@end

@implementation MackenzieViewController

- (IBAction)edit:(id)sender
{
    childViewController = (MackenzieTableViewController *) self.childViewControllers.lastObject;
    [childViewController setEditing:YES animated:YES];
}

- (IBAction)ver:(id)sender
{
    childViewController = (MackenzieTableViewController *) self.childViewControllers.lastObject;
    [childViewController setEditing:NO animated:YES];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)adicionaFinalizado:(UIStoryboardSegue *)segue
{
    childViewController = (MackenzieTableViewController *) self.childViewControllers.lastObject;
    MackenzieLista *lista = [MackenzieLista getInstance];
    
    NSArray *paths = [NSArray arrayWithObject:[NSIndexPath indexPathForRow:[lista.itemList count] - 1 inSection:0]];
    
    [childViewController.tableView insertRowsAtIndexPaths:paths withRowAnimation:YES];
}

@end
