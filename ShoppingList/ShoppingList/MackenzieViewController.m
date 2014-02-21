//
//  MackenzieViewController.m
//  ShoppingList
//
//  Created by Vinicius Miana on 2/12/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "MackenzieViewController.h"
#import "MackenzieTableViewController.h"
#import "ShoppingList.h"

@interface MackenzieViewController () {
    MackenzieTableViewController * childViewController;
    ShoppingList *shoppingList;
    
}
@property (weak, nonatomic) IBOutlet UIView *tvc;
@end

@implementation MackenzieViewController

- (IBAction)edit:(id)sender {
    [childViewController setEditing:YES animated:YES];
}

- (IBAction)ver:(id)sender {
    [childViewController setEditing:NO animated:YES];
}

- (IBAction)unwindToListaDeCompras:(UIStoryboardSegue *)segue
{
    int lastRow = (int)shoppingList.allProducts.count-1;
    
    // Cria um IndexPath que aponta para a posicao a qual o item foi adicionado, levando em conta que exista somente uma secao
    [childViewController.tableView insertSections:[NSIndexSet indexSetWithIndex:lastRow] withRowAnimation:UITableViewRowAnimationTop];
    NSIndexPath *ip = [NSIndexPath indexPathForRow:0 inSection:lastRow];
    
    // Cria uma nova linha da tabela, ela ira chamar o dataSource para
    // obter a UITabelViewCell da nova linha. A UITableView nao sera
    // totalmente recarregada
    //[[childViewController tableView] insertRowsAtIndexPaths:[NSArray arrayWithObject:ip]
      //                      withRowAnimation:UITableViewRowAnimationTop];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithTitle:@"Cancelar"
                                                                 style:UIBarButtonItemStyleBordered
                                                                target:nil
                                                                action:nil];
    
    [self.navigationItem setBackBarButtonItem:backItem];
    childViewController = (MackenzieTableViewController *) self.childViewControllers.lastObject;
    shoppingList = [ShoppingList getInstance];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}





@end
