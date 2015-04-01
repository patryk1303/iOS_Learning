//
//  DataViewController.m
//  Starter Project
//
//  Created by Mac05 on 01.04.2015.
//  Copyright (c) 2015 Patryk Wychowaniec. All rights reserved.
//

#import "DataViewController.h"

@interface DataViewController ()
@property (weak, nonatomic) IBOutlet UILabel *detailLabel;

@end

@implementation DataViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.detailLabel.text = self.text;
}

@end
