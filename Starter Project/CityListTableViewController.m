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
@property (strong,nonatomic) NSMutableArray *cityList;


@end

@implementation CityListTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    
    [dupa prepareCityList];
}

- (void)prepareCityList
{
    dupa.cityList = [NSMutableArray array];
    for(int i=1;i<=10;i++)
    {
        NSString *name = [NSString stringWithFormat:@"Miasto %@", @(i)];
        [dupa.cityList addObject:[City cityWithName:name andCitizensCount:@(i*1000)]];
    }
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.cityList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"CityCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    City *city = dupa.cityList[indexPath.row];
    
    cell.textLabel.text = city.name;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"Liczba ludności: %@", city.citizensCount];
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

- (IBAction)addButtonTapped:(id)sender {
    [self.tableView beginUpdates];

    NSString *name = [NSString stringWithFormat:@"Miasto %@",@(self.cityList.count + 1)];
    [self.cityList insertObject:[City cityWithName:name andCitizensCount:@((self.cityList.count+1)*1000)] atIndex:0];
    
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:self.cityList.count-1 inSection:0];
    
    [self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    
    [self.tableView endUpdates];
}
@end
