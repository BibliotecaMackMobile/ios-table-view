//
//  MackenzieTableViewController.m
//  ShoppingList
//
//  Created by Vinicius Miana on 2/12/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "MackenzieTableViewController.h"

@interface MackenzieTableViewController()

-(void)refreshTable:(NSNotification *)sender;

@end

@implementation MackenzieTableViewController

#pragma mark - Default constructor

-(id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if(self)
        storeItems = [StoreItems sharedInstance];
    return self;
}

#pragma mark - UIView

-(void)viewDidLoad
{
    [super viewDidLoad];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(refreshTable:) name:@"reloadTableNotificarion" object:nil];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
}

#pragma mark - UITableView Data Source

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[storeItems items] count];
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return @"SHOPPING LIST";
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100.0;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * cellIdentifier = @"mackenzieCell";
    MackenzieCell * cell = (MackenzieCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if(cell == nil)
        cell = [[[NSBundle mainBundle] loadNibNamed:cellIdentifier owner:self options:nil] objectAtIndex:0];
    cell.itemNameLabel.text = [[[storeItems items] objectAtIndex:indexPath.row] itemName];
    cell.itemDescriptionLabel.text = [[[storeItems items] objectAtIndex:indexPath.row] itemDescription];
    cell.itemImageView.image = [[[storeItems items] objectAtIndex:indexPath.row] itemImage];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

#pragma mark - UITableView Delegate

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //
}

-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(editingStyle == UITableViewCellEditingStyleDelete)
    {
        [[storeItems items] removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    }
}

#pragma mark - NSNotificationCenter

-(void)refreshTable:(NSNotification *)sender
{
    [self.tableView reloadData];
}

@end