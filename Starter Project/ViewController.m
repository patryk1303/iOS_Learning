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
@property (weak, nonatomic) IBOutlet UILabel *textLabel;
@property (assign,nonatomic) NSInteger menuButtonTapCount;
- (IBAction)menuButtonDownTapped:(id)sender;
- (IBAction)menuButtonUpTapped:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.menuButtonTapCount = 0;
    
    City *city1 = [City cityWithName:@"Koszalin" andCitizensCount:@(109170)];
    City *city2 = [City cityWithName:@"Szczecin" andCitizensCount:@(410000)];
    City *city3 = [City cityWithName:@"Łódź" andCitizensCount:@(750000)];
    City *city4 = [City cityWithName:@"Warszawa" andCitizensCount:@(1800000)];
    NSArray *cityList = [[NSArray alloc] initWithObjects:city1,city2,city3,city4, nil];

    for (City *city in cityList) {
        [city showYourCity];
    }
    
    self.textLabel.text = @"Hell low, NOTHING!";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)menuButtonUpTapped:(id)sender {
    self.menuButtonTapCount++;
    [self updateLabelMenuButtonTappedCount];
}

- (void)updateLabelMenuButtonTappedCount {
    self.textLabel.text = [NSString stringWithFormat:@"Przycisk naciśnięty\n%@ razy", @(self.menuButtonTapCount)];
}
- (IBAction)menuButtonDownTapped:(id)sender {
    self.menuButtonTapCount--;
    [self updateLabelMenuButtonTappedCount];
}
@end
