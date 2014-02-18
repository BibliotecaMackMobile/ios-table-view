//
//  MackenzieViewController.m
//  ShoppingList
//
//  Created by Vinicius Miana on 2/12/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "MackenzieViewController.h"
#import "MackenzieTableViewController.h"
#import "newViewController.h"

@interface MackenzieViewController () {
    
}


@property (weak, nonatomic) IBOutlet UIView *tvc;
@end

@implementation MackenzieViewController

- (IBAction)edit:(id)sender {
    //childViewController = (MackenzieTableViewController *) self.childViewControllers.lastObject;
    [_conteiner reloadInputViews];
    MackenzieTableViewController *childViewController = [[MackenzieTableViewController alloc] init];
    [childViewController setEditing:YES animated:YES];
}

- (IBAction)ver:(id)sender {
   // childViewController = (MackenzieTableViewController *) self.childViewControllers.lastObject;
    MackenzieTableViewController *childViewController = [[MackenzieTableViewController alloc] init];
    [childViewController setEditing:NO animated:YES];
}

- (IBAction)novo:(id)sender {
    newViewController *controller = [self.storyboard instantiateViewControllerWithIdentifier:@"novoItem"];
    [self presentViewController:controller animated:YES completion:nil];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
   // childViewController = (MackenzieTableViewController *) self.childViewControllers.objectEnumerator;
    MackenzieTableViewController *childViewController = [[MackenzieTableViewController alloc] init];
   //  childViewController = [MackenzieTableViewController alloc];
}

-(void)addlist: (NSString*)lista withQtd:(NSString*)qtd{
    
    MackenzieTableViewController *childViewController = [[MackenzieTableViewController alloc] init];
    childViewController = [MackenzieTableViewController alloc];
    [childViewController addNewItem:lista withQtd:qtd];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}





@end
