//
//  DetailWeatherViewController.m
//  GolfScorecardd
//
//  Created by Komari Herring on 11/3/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

#import "DetailWeatherViewController.h"
#import "ForecastTableViewController.h"

@interface DetailWeatherViewController () <CLLocationManagerDelegate>

@end

@implementation DetailWeatherViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.annotations = [[NSMutableArray alloc] init];
    //     [self configureLocationManager];
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Managing the detail view

- (void)setCity:(City *)newCity andSetWeather:(Weather *)newWeather
{
    if (_detailCity != newCity && _detailWeather != newWeather)
    {
        _detailCity = newCity;
        _detailWeather = newWeather;
        
        // Update the view.
        [self configureView];
    }
}


#pragma mark - Configure the view

- (void)configureView
{
    
    if (self.detailCity)
    {
        
        self.title = [NSString stringWithFormat: @"%@", self.detailCity.name];
        
        self.temperatureLabel.text = [NSString stringWithFormat:@"%d°F", [self.detailWeather.temperature intValue]];
        self.conditionsImageView.image = [UIImage imageNamed:self.detailWeather.icon];
        self.conditionsLabel.text = self.detailWeather.summary;
        self.humidityLabel.text = [NSString stringWithFormat:@"%g",([self.detailWeather.humidity doubleValue]*100)];
        self.rainLabel.text = [NSString stringWithFormat:@"%g",([self.detailWeather.precipProbability doubleValue]*100)];
        self.feelsLikeLabel.text = [NSString stringWithFormat:@"Feels Like: %d°F", [self.detailWeather.apparentTemperature intValue]];
        self.windLabel.text = [NSString stringWithFormat:@"%dMPH", [self.detailWeather.windSpeed intValue]];
        
        [self configureAnnotations];
        
    }
}

-(void)configureAnnotations
{
    
    
    CLLocationDegrees cityPickedLat = [self.detailCity.cityLatDouble doubleValue];
    CLLocationDegrees cityPickedLtg = [self.detailCity.cityLongDouble doubleValue];
    CLLocationCoordinate2D cityPicked = CLLocationCoordinate2DMake(cityPickedLat, cityPickedLtg);

    MKPointAnnotation *cityPickedAnnotation = [[MKPointAnnotation alloc] init];
    cityPickedAnnotation.coordinate = cityPicked;
    cityPickedAnnotation.title = self.detailCity.name;
    [self.annotations addObject:cityPickedAnnotation];
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(cityPicked, 100000, 100000);
    [self.cityMapView setRegion:viewRegion animated:YES];
    
    
    [self.cityMapView addAnnotations:self.annotations];
    
}


@end
