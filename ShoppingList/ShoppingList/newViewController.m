//
//  newViewController.m
//  ShoppingList
//
//  Created by Vinicius Soares Lima on 18/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "newViewController.h"
#import "MackenzieViewController.h"

@interface newViewController ()

@end

@implementation newViewController

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
- (IBAction)additem:(id)sender {
    MackenzieViewController *controller = [self.storyboard instantiateViewControllerWithIdentifier:@"MackenzieViewController"];
   // NSLog(self.fieldItem.text);
   // NSLog(@"1");
    [controller addlist:_fieldItem.text withQtd:_fieldQtd.text];
    [self presentViewController:controller animated:YES completion:nil];
}

@end
