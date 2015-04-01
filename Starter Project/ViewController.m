//
//  ViewController.m
//  Starter Project
//
//  Created by Mac05 on 04.03.2015.
//  Copyright (c) 2015 Patryk Wychowaniec. All rights reserved.
//

#import "ViewController.h"
#import "City.h"
#import "DataViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
- (IBAction)showDeatilButtonTapped:(id)sender;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UITapGestureRecognizer *tapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(viewTapped)];
    
    [self.view addGestureRecognizer:tapRecognizer];
}

- (void)viewTapped {
    [self.view endEditing:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)showDeatilButtonTapped:(id)sender {
    [self performSegueWithIdentifier:@"showDataSegue" sender:self]
    ;
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([segue.identifier isEqualToString:@"showDataSegue"]) {
        DataViewController *destinationVC = segue.destinationViewController;
        City *city = [City cityWithName:self.textField.text andCitizensCount:@(108057)];
//        destinationVC.text = self.textField.text;
        destinationVC.text = city.createDescription;
    }
}
@end
