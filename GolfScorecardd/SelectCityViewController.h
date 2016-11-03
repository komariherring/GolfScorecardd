//
//  SelectCityViewController.h
//  GolfScorecardd
//
//  Created by Komari Herring on 11/3/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ForecastTableViewController.h"
#import <MapKit/MapKit.h>
#import "City.h"
#import "Weather.h"
#import <QuartzCore/QuartzCore.h>


@import CoreLocation;

@interface SelectCityViewController : UIViewController

@property (strong, nonatomic) City *gpsCity;
@property (strong, nonatomic) Weather *gpsWeather;
//
@property (strong, nonatomic) NSMutableArray *annotations;
@property(strong, nonatomic) CLLocationManager *locationManager;
@property (weak, nonatomic) IBOutlet UIButton *pickACityButton;
@property (weak, nonatomic) IBOutlet UIButton *useGPSButton;

@property (nonatomic) id<SearchTextFieldDelegate> delegate;

@end
