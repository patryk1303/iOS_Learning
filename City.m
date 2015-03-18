//
//  City.m
//  Starter Project
//
//  Created by Mac05 on 04.03.2015.
//  Copyright (c) 2015 Patryk Wychowaniec. All rights reserved.
//

#import "City.h"

@implementation City

- (void) showYourCity
{
    NSLog(@"Witaj mieszkańcu z miasta %@. Wiem, że razem w tobą mieszka %@ ludziów!",self.name,@([self.citizensCount intValue] - 1));
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

+ (City *)cityWithName:(NSString *)name andCitizensCount:(NSNumber *)citizensCount
{
    return [[City alloc] initWithName:name andCitizensCount:citizensCount];
}

@end
