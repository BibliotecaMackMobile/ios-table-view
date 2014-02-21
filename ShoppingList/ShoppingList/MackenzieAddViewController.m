//
//  MackenzieAddViewController.m
//  ShoppingList
//
//  Created by Eduardo Lombardi on 18/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "MackenzieAddViewController.h"
#import "MackenzieLista.h"
#import "MackenzieTableViewController.h"
@interface MackenzieAddViewController ()

@end

@implementation MackenzieAddViewController

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


- (IBAction)enviardados:(id)sender {
    MackenzieLista * l = [MackenzieLista getInstance];
    [l addElemento: [_texto text]];
    NSLog(@"ENVIAR %@",[l elemento:0]);
     [self dismissViewControllerAnimated:YES completion:nil ];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
