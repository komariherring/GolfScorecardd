//
//  ViewController.h
//  MyGolfScorecard
//
//  Created by Komari Herring on 10/4/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ScorecardViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *holeNumberLabel;
@property (weak, nonatomic) IBOutlet UILabel *strokeLabel;
@property (weak, nonatomic) IBOutlet UIStepper *strokeStepper;
@property (weak, nonatomic) IBOutlet UISegmentedControl *parSegmenetedControl;
@property (weak, nonatomic) IBOutlet UIButton *doneGolfingButton;

- (IBAction)nextHoleButtonClick:(UIButton *)sender;
- (IBAction)strokeValueChanged:(UIStepper *)sender;


@end

