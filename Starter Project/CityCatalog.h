//
//  CityCatalog.h
//  Starter Project
//
//  Created by Mac05 on 29.04.2015.
//  Copyright (c) 2015 Patryk Wychowaniec. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "City.h"

@interface CityCatalog : NSObject
@property (strong,nonatomic) NSMutableArray *cityArray;
//singleton - np. referencja do bazy danych

+ (CityCatalog *)instance;

@end
