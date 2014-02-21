//
//  MackenzieViewController.m
//  ShoppingList
//
//  Created by Vinicius Miana on 2/12/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "MackenzieViewController.h"
#import "MackenzieTableViewController.h"
#import "ItemStore.h"

@interface MackenzieViewController () {
    MackenzieTableViewController * childViewController;
}
@property (weak, nonatomic) IBOutlet UIView *tvc;
@end

@implementation MackenzieViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSMutableArray *itensadd = [[ItemStore sharedInstance]itens];
    [itensadd addObject:@"teste1"];
    [itensadd addObject:@"teste2"];
    [itensadd addObject:@"teste3"];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)edit:(id)sender {
    childViewController = (MackenzieTableViewController *) self.childViewControllers.lastObject;
    [childViewController setEditing:YES animated:YES];
}

- (IBAction)ver:(id)sender {
    childViewController = (MackenzieTableViewController *) self.childViewControllers.lastObject;
     [childViewController setEditing:NO animated:YES];
}


- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    NSLog(@"Entered: %@",[[alertView textFieldAtIndex:0] text]);
    
    //add to nsarray
       NSMutableArray *itensadd = [[ItemStore sharedInstance]itens];
        UITextField * alertTextField = [alertView textFieldAtIndex:0];
       [itensadd addObject:alertTextField.text];
    
    //reload table...
    UITableView *t  = (UITableView*)((MackenzieTableViewController *) self.childViewControllers.lastObject).view;
    [t reloadData];
    
   
}

- (IBAction)Novo:(id)sender {

    
    UIAlertView * alert = [[UIAlertView alloc] initWithTitle:@"Novo" message:@"Insira um item:" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    alert.alertViewStyle = UIAlertViewStylePlainTextInput;

    [alert show];
        
  

}
@end
