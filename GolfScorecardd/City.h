//
//  City.h
//  GolfScorecardd
//
//  Created by Komari Herring on 11/3/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Weather.h"

@interface City : NSObject <NSCoding>

@property (strong, nonatomic) Weather *currentWeather;

@property (nonatomic) NSString *name;
@property (nonatomic) NSString *cityLatString;
@property (nonatomic) NSString *cityLongString;
@property (nonatomic) NSString *stateShortName;
@property (nonatomic) NSNumber *cityLatDouble;
@property (nonatomic) NSNumber *cityLongDouble;
@property (nonatomic) NSString *zipCode;

- (instancetype)initWithName:(NSString *)cityName latitude:(NSNumber *)latitude longitude:(NSNumber *)longitude andZipCode:(NSString *)zipCode;

+ (City *)cityWithDictionary:(NSDictionary *)cityDict;


@end
