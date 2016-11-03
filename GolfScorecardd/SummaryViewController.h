//
//  SummaryViewController.h
//  MyGolfScorecard
//
//  Created by Komari Herring on 10/4/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SummaryViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *courseParLabel;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;

@property (nonatomic) NSMutableArray *parValues;
@property (nonatomic) NSMutableArray *strokeValues;

@end
