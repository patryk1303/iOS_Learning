//
//  CityCatalog.m
//  StarterProject
//
//  Created by Marcin Nowacki on 29.04.2015.
//  Copyright (c) 2015 Marcin Nowacki. All rights reserved.
//

#import "CityCatalog.h"

@implementation CityCatalog

+ (CityCatalog *)instance
{
    static CityCatalog *cityCatalog;
    if (!cityCatalog) {
        cityCatalog = [[CityCatalog alloc] init];
    }
    
    return cityCatalog;
}

- (id)init
{
    self = [super init];
    if (self) {
        self.cityArray = [[NSMutableArray alloc] init];
    }
    
    return self;
}

@end
