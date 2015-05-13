//
//  ViewController.m
//  StarterProject
//
//  Created by Marcin Nowacki on 04.03.2015.
//  Copyright (c) 2015 Marcin Nowacki. All rights reserved.
//

#import "NewCityViewController.h"
#import "CityCatalog.h"

@interface NewCityViewController ()
@property (weak, nonatomic) IBOutlet UITextField *cityNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *citizensCountTextField;

- (IBAction)saveButtonTapped:(id)sender;
- (IBAction)cancelButtonTapped:(id)sender;

@end

@implementation NewCityViewController

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

- (IBAction)saveButtonTapped:(id)sender
{
    NSNumber *count = @(self.citizensCountTextField.text.integerValue);
    
    City *newCity = [City cityWithName:self.cityNameTextField.text
                      andCitizensCount:count];
    
    [[CityCatalog instance].cityArray addObject:newCity];
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)cancelButtonTapped:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
