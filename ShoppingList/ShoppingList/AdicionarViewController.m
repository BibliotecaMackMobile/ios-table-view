//
//  AdicionarViewController.m
//  ShoppingList
//
//  Created by Gregory on 18/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "AdicionarViewController.h"
#import "MackenzieTableViewController.h"
#import "impSingleton.h"

@interface AdicionarViewController ()

@end

@implementation AdicionarViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)adicionar:(id)sender {
    impSingleton *it = [impSingleton getInstancia];
    [it.dados addObject:_produto.text];
}
@end
