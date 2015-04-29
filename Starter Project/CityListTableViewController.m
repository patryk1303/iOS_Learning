//
//  CityListTableViewController.m
//  Starter Project
//
//  Created by Mac05 on 15.04.2015.
//  Copyright (c) 2015 Patryk Wychowaniec. All rights reserved.
//

#import "CityListTableViewController.h"

#define dupa self

@interface CityListTableViewController ()
- (IBAction)addButtonTapped:(id)sender;
@property (strong,nonatomic) CityCatalog *cityCatalog;


@end

@implementation CityListTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    
    self.cityCatalog = [CityCatalog instance];
    
    self.navigationItem.leftBarButtonItem = self.editButtonItem;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.cityCatalog.cityArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"CityCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    City *city = self.cityCatalog.cityArray[indexPath.row];
    
    cell.textLabel.text = city.name;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"Liczba ludności: %@", city.citizensCount];
    
    return cell;
}

- (void) viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [self.cityCatalog.cityArray removeObjectAtIndex:indexPath.row];
        [self.tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationTop];
    }
}

#pragma mark - Table view delegate
- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self performSegueWithIdentifier:@"showDetailsSegue" sender:self];
}

#pragma mark - Navigation
- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"showDetailsSegue"]) {
        DataViewController *destinationVC = segue.destinationViewController;
        
        NSInteger index = self.tableView.indexPathForSelectedRow.row;
        City *selectedCity = self.cityCatalog.cityArray[index];
        
        destinationVC.text = [selectedCity createDescription];
    }
}

#pragma mark - Action
- (IBAction)addButtonTapped:(id)sender
{
    [self performSegueWithIdentifier:@"newCitySegue" sender:self];
}

@end
