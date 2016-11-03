//
//  Weather.m
//  GolfScorecardd
//
//  Created by Komari Herring on 11/3/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

#import "Weather.h"

@implementation Weather

+ (Weather *)weatherWithDictionary:(NSDictionary *)weatherDict
{
    Weather *aWeather = nil;
    if (weatherDict)
    {
        aWeather = [[Weather alloc] init];
        
        NSDictionary *currentlyDict = weatherDict[@"currently"];
        
        aWeather.summary = currentlyDict[@"summary"];
        aWeather.icon = currentlyDict[@"icon"];
        aWeather.precipProbability = currentlyDict[@"precipProbability"];
        aWeather.temperature = currentlyDict[@"temperature"];
        aWeather.apparentTemperature = currentlyDict[@"apparentTemperature"];
        aWeather.humidity = currentlyDict[@"humidity"];
        aWeather.windSpeed = currentlyDict[@"windSpeed"];
    }
    
    return aWeather;
    
}
