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
@property (weak, nonatomic) IBOutlet UILabel *textLabel;
@property (assign, nonatomic) NSInteger counter;

- (IBAction)increaseButtonTapped:(id)sender;
- (IBAction)decreaseButtonTapped:(id)sender;


@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.counter = 0;
    [self updateTextLabel];
}

- (IBAction)increaseButtonTapped:(id)sender
{
    self.counter += 1;
    [self updateTextLabel];
}

- (IBAction)decreaseButtonTapped:(id)sender
{
    self.counter -= 1;
    [self updateTextLabel];
}

- (void)updateTextLabel
{
    self.textLabel.text = [NSString stringWithFormat:@"%@", @(self.counter)];
}

@end
