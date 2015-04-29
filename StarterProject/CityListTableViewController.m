//
//  CityListTableViewController.m
//  StarterProject
//
//  Created by Marcin Nowacki on 15.04.2015.
//  Copyright (c) 2015 Marcin Nowacki. All rights reserved.
//

#import "CityListTableViewController.h"
#import "CityCatalog.h"
#import "DetailViewController.h"


@interface CityListTableViewController ()
@property (strong, nonatomic) CityCatalog *cityCatalog;

- (IBAction)addButtonTapped:(id)sender;

@end

@implementation CityListTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    
    self.cityCatalog = [CityCatalog instance];
    
    self.navigationItem.leftBarButtonItem = self.editButtonItem;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [self.tableView reloadData];
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
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CityCell"
                                                            forIndexPath:indexPath];

    City *city = self.cityCatalog.cityArray[indexPath.row];
    
    cell.textLabel.text = city.name;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"Liczba ludności: %@", city.citizensCount];
    
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        
        [self.cityCatalog.cityArray removeObjectAtIndex:indexPath.row];
        [self.tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

#pragma mark - Table view delegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self performSegueWithIdentifier:@"detailsSegue" sender:self];
}


#pragma mark - Navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"detailsSegue"]) {
        DetailViewController *destinationVC = segue.destinationViewController;
        
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
