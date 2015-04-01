//
//  ViewController.m
//  StarterProject
//
//  Created by Marcin Nowacki on 04.03.2015.
//  Copyright (c) 2015 Marcin Nowacki. All rights reserved.
//

#import "ViewController.h"
#import "City.h"
#import "DetailViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;

- (IBAction)showDetailButtonTapped:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UITapGestureRecognizer *tapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(viewTapped)];
    
    [self.view addGestureRecognizer:tapRecognizer];
    
}

- (void)viewTapped
{
    [self.view endEditing:YES];
}

- (IBAction)showDetailButtonTapped:(id)sender
{
    [self performSegueWithIdentifier:@"showDetailSegue" sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"showDetailSegue"]) {
        DetailViewController *destinationVC = segue.destinationViewController;
        destinationVC.text = self.textField.text;
    }
}

@end
