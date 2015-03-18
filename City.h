//
//  City.h
//  Starter Project
//
//  Created by Mac05 on 04.03.2015.
//  Copyright (c) 2015 Patryk Wychowaniec. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface City : NSObject

@property NSString *name;
@property NSNumber *citizensCount;

- (instancetype) initWithName:(NSString*)name andCitizensCount:(NSNumber*)citizensCount;
+ (City*) cityWithName:(NSString*)name andCitizensCount:(NSNumber*)citizensCount;
- (void) showYourCity;

@end
