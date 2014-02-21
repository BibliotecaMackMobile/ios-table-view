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
    
    [a setItens:[NSMutableArray arrayWithObjects:@"Ovos", @"Arroz", @"Queijo", @"Hamburger", @"Pão", @"Creme Brelee", @"Donuts", @"Café", @"Couve-flor", @"Macarrão", @"Carne moída", @"Picanha", @"Pão de alho", @"Bolo de chocolate", @"Carvão", @"Detergente", nil]];
    
    // Initialize thumbnails
    [a setThumbnails:[NSMutableArray arrayWithObjects:@"ovo.jpg", @"mushroom_risotto.jpg", @"full_breakfast.jpg", @"hamburger.jpg", @"ham_and_egg_sandwich.jpg", @"creme.jpg", @"white_chocolate_donut.jpg", @"starbucks_coffee.jpg", @"vegetable_curry.jpg", @"instant_noodle_with_egg.jpg", @"noodle_with_bbq_pork.jpg", @"japanese_noodle_with_pork.jpg", @"green_tea.jpg", @"thai_shrimp_cake.jpg", @"angry_birds_cake.jpg", @"ham_and_cheese_panini.jpg", nil]];
    
    [a setQuantidade:[NSMutableArray arrayWithObjects:@"1", @"2", @"2",@"2",@"2",@"2",@"2",@"2",@"2",@"2",@"2",nil]];
    
    
    
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)rmvBtnclicked:(id)sender {
    
    MackenzieSingleton *b = [MackenzieSingleton getInstancia];
    [b.itens addObject:textField1.text];

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





