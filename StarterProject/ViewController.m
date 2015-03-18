//
//  ViewController.m
//  StarterProject
//
//  Created by Marcin Nowacki on 04.03.2015.
//  Copyright (c) 2015 Marcin Nowacki. All rights reserved.
//

#import "ViewController.h"
#import "City.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    City *city1 = [[City alloc] initWithName:@"Koszalin 1" andCitizensCount:@(100000)];
    
    City *city2 = [[City alloc] initWithName:@"Koszalin 2" andCitizensCount:@(100000)];
    
    City *city3 = [[City alloc] initWithName:@"Koszalin 3" andCitizensCount:@(100000)];
    
    City *city4 = [[City alloc] initWithName:@"Koszalin 4" andCitizensCount:@(100000)];
    
    NSArray *cityList = [[NSArray alloc] initWithObjects:city1, city2, city3, city4, nil];
    
    for (City *tempCity in cityList) {
        [tempCity showDescription];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
