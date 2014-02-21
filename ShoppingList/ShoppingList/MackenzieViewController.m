//
//  MackenzieViewController.m
//  ShoppingList
//
//  Created by Vinicius Miana on 2/12/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "MackenzieViewController.h"
#import "MackenzieTableViewController.h"
#import "MackenzieAddViewController.h"

@interface MackenzieViewController () {
    MackenzieTableViewController * childViewController;
}
@property (weak, nonatomic) IBOutlet UIView *tvc;
@end

@implementation MackenzieViewController

@synthesize barUtilidades, barItemNovo;

- (IBAction)efeitoBarItemNovo:(id)sender {
    MackenzieAddViewController *telaAdd = [[MackenzieAddViewController alloc] init];
    [self presentViewController:telaAdd animated:NO completion:nil];
}


- (IBAction)edit:(id)sender {
    childViewController = (MackenzieTableViewController *) self.childViewControllers.lastObject;
    [childViewController setEditing:YES animated:YES];
}

- (IBAction)ver:(id)sender {
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

@end
