//
//  DetailViewController.m
//  StarterProject
//
//  Created by Marcin Nowacki on 01.04.2015.
//  Copyright (c) 2015 Marcin Nowacki. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *detailLabel;

@end

@implementation DetailViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.detailLabel.text = self.text;
}

@end
