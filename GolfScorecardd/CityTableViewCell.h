//
//  CityTableViewCell.h
//  GolfScorecardd
//
//  Created by Komari Herring on 11/3/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CityTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *temperatureLabel;
@property (weak, nonatomic) IBOutlet UILabel *cityNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *currentConditionsLabel;

@property (weak, nonatomic) IBOutlet UILabel *latTempLabel;
@property (weak, nonatomic) IBOutlet UILabel *longTempLabel;

@end
