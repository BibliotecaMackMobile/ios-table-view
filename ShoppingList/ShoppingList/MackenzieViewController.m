//
//  MackenzieViewController.m
//  ShoppingList
//
//  Created by Vinicius Miana on 2/12/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "MackenzieViewController.h"
#import "MackenzieTableViewController.h"
#import "MackenzieSingleton.h"

@interface MackenzieViewController () {
    MackenzieTableViewController * childViewController;
    NSMutableArray *itensArray;
}

@end

@implementation MackenzieViewController
@synthesize textField1;

- (IBAction)edit:(id)sender {
    childViewController = (MackenzieTableViewController *) self.childViewControllers.lastObject;
    [childViewController setEditing:YES animated:YES];
}

- (IBAction)ver:(id)sender {
    childViewController = (MackenzieTableViewController *) self.childViewControllers.lastObject;
    [childViewController setEditing:NO animated:YES];
}

- (IBAction)novo:(id)sender {
    childViewController = (MackenzieTableViewController *) self.childViewControllers.lastObject;
    [childViewController setEditing:NO animated:YES];
    [self.table.tableView reloadData];
   // tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [textField1 setDelegate:self];
    
    MackenzieSingleton *a = [MackenzieSingleton getInstancia];
    
    [a setItens:[NSMutableArray arrayWithObjects:@"Ovos", @"Arroz", @"Queijo", @"Hamburger", nil]];
    
    // Initialize thumbnails
    [a setThumbnails:[NSMutableArray arrayWithObjects:@"ovo.jpg", @"mushroom_risotto.jpg", @"full_breakfast.jpg", @"hamburger.jpg", nil]];
    
    [a setQuantidade:[NSMutableArray arrayWithObjects:@"1", @"2", @"2",@"2",nil]];
    
    
    
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)rmvBtnclicked:(id)sender {
    
    MackenzieSingleton *b = [MackenzieSingleton getInstancia];
    [b.itens addObject:textField1.text];
    [b.quantidade addObject:@"1"];
    [b.thumbnails addObject:@"ovo.jpg"];

    unsigned long int lastRow =[b.itens count] - 1;
    NSIndexPath *posicao = [NSIndexPath indexPathForRow:lastRow inSection:0];

    MackenzieTableViewController *mtv = (MackenzieTableViewController*)self.childViewControllers.lastObject;
    [mtv.tableView insertRowsAtIndexPaths:[NSMutableArray arrayWithObject:posicao] withRowAnimation:UITableViewRowAnimationFade];
    
}


-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    if (textField == textField1) {
        [textField1 resignFirstResponder];
        return true;
    }
    return false;
}

@end





