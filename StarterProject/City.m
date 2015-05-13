//
//  City.m
//  StarterProject
//
//  Created by Marcin Nowacki on 04.03.2015.
//  Copyright (c) 2015 Marcin Nowacki. All rights reserved.
//

#import "City.h"

@implementation City

+ (City *)cityWithName:(NSString *)name andCitizensCount:(NSNumber *)citizensCount
{
    return [[City alloc] initWithName:name andCitizensCount:citizensCount];
}

- (instancetype)initWithName:(NSString *)name andCitizensCount:(NSNumber *)citizensCount
{
    self = [super init];
    if (self) {
        self.name = name;
        self.citizensCount = citizensCount;
    }
    
    return self;
}

- (NSString *)createDescription
{
    return [NSString stringWithFormat:@"Nazwa miasta to %@, a liczba ludności to %@", self.name, self.citizensCount];
}

@end
