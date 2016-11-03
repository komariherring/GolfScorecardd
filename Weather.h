//
//  Weather.h
//  GolfScorecardd
//
//  Created by Komari Herring on 11/3/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Weather : NSObject

@property (nonatomic) NSString *summary;
@property (nonatomic) NSNumber *temperature;
@property (nonatomic) NSNumber *humidity;
@property (nonatomic) NSNumber *windSpeed;
@property (nonatomic) NSString *icon;
@property (nonatomic) NSNumber *precipProbability;
@property (nonatomic) NSNumber *apparentTemperature;

+ (Weather *)weatherWithDictionary:(NSDictionary *)weatherDict;

@end
