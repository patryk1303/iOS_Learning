//
//  ViewController.m
//  Starter Project
//
//  Created by Mac05 on 04.03.2015.
//  Copyright (c) 2015 Patryk Wychowaniec. All rights reserved.
//

#import "NewCityViewController.h"
#import "CityCatalog.h"

@interface NewCityViewController ()
@property (weak, nonatomic) IBOutlet UITextField *citizensCountTextField;
@property (weak, nonatomic) IBOutlet UITextField *cityNameTextField;
- (IBAction)cancelButtonTapped:(id)sender;
- (IBAction)saveButtonTapped:(id)sender;
@end

@implementation NewCityViewController

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

- (IBAction)cancelButtonTapped:(id)sender {
    [self dismissViewControllerAnimated:YES completion:NULL];
}

- (IBAction)saveButtonTapped:(id)sender {
    NSNumber *count = @(self.citizensCountTextField.text.integerValue);
    City *newCity = [City cityWithName:self.cityNameTextField.text
                      andCitizensCount:count];
    [[CityCatalog instance].cityArray addObject:newCity];
    
    [self dismissViewControllerAnimated:YES completion:NULL];
}
@end
