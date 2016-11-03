//
//  ViewController.h
//  GolfScorecardd
//
//  Created by Komari Herring on 11/3/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

#import <UIKit/UIKit.h>

//#define kNameKey @"kCitiesKey";

@protocol SearchTextFieldDelegate

-(void)searchWasTyped:(NSString *)zipcodeToLookUp;

@end


@protocol APIControllerProtocol

-(void)didReceiveAPIResults:(NSDictionary *)googleResponse;
-(void)didReceiveAPIResults2:(NSDictionary *)darkSkyResponse;

@end

@interface ForecastTableViewController : UITableViewController

- (void)saveCityData;

@end
