//
//  MackenzieViewController.m
//  ShoppingList
//
//  Created by Vinicius Miana on 2/12/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "MackenzieViewController.h"
#import "MackenzieTableViewController.h"
#import "AddViewController.h"
@interface MackenzieViewController () {
    MackenzieTableViewController * childViewController;
}
@property (weak, nonatomic) IBOutlet UIView *tvc;
@end

@implementation MackenzieViewController

- (IBAction)edit:(id)sender {
    childViewController = (MackenzieTableViewController *) self.childViewControllers.lastObject;
    if(childViewController.isEditing)
    [childViewController setEditing:NO animated:YES];
       else
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
- (IBAction)add:(id)sender {
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"add"]) {
        
        AddViewController *controller = (AddViewController *)segue.destinationViewController;
        controller.delegate = (MackenzieTableViewController *) self.childViewControllers.lastObject;
    }
}


@end
