//
//  ViewController.m
//  Starter Project
//
//  Created by Mac05 on 04.03.2015.
//  Copyright (c) 2015 Patryk Wychowaniec. All rights reserved.
//

#import "ViewController.h"
#import "City.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    int number1 = 6;
    int number2 = 19;
    
    NSNumber *number = [[NSNumber alloc]initWithFloat:12.5f];
    NSString *str = [NSString stringWithFormat:@"Wartość *number to %@",number.stringValue];
    NSString *str2 = @"String 123";
    
//    NSLog(@"Hell low, world!\n%d - %d = %d",number1,number2,number1-number2);
//    NSLog(@"%@",str);
    
//    City *city1 = [[City alloc] initWithName:@"Koszalin" andCitizensCount:@(109170)];
    City *city1 = [City cityWithName:@"Koszalin" andCitizensCount:@(109170)];
    [city1 showYourCity];
    
//    NSLog(@"Wartość *number to %@",number.stringValue);
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
