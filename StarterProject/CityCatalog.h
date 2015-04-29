//
//  CityCatalog.h
//  StarterProject
//
//  Created by Marcin Nowacki on 29.04.2015.
//  Copyright (c) 2015 Marcin Nowacki. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "City.h"

@interface CityCatalog : NSObject
@property (strong, nonatomic) NSMutableArray *cityArray;

+ (CityCatalog *)instance;

@end
