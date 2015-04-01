//
//  City.h
//  StarterProject
//
//  Created by Marcin Nowacki on 04.03.2015.
//  Copyright (c) 2015 Marcin Nowacki. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface City : NSObject
@property NSString *name;
@property NSNumber *citizensCount;

- (NSString *)createDescription;
- (instancetype)initWithName:(NSString *)name andCitizensCount:(NSNumber *)citizensCount;
+ (City *)cityWithName:(NSString *)name andCitizensCount:(NSNumber *)citizensCount;

@end
