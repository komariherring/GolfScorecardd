//
//  ViewController.m
//  MyGolfScorecard
//
//  Created by Komari Herring on 10/4/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

#import "ScorecardViewController.h"
#import "SummaryViewController.h"

@interface ScorecardViewController ()

@property NSMutableArray *parValues;
@property NSMutableArray *strokeValues;

@end

@implementation ScorecardViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.parValues = [[NSMutableArray alloc] init];
    self.strokeValues = [[NSMutableArray alloc] init];
    self.doneGolfingButton.hidden = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)nextHoleButtonClick:(UIButton *)sender
{
    //NSInteger strokeValue = self.strokeStepper.value;
    
    // +1 to account for index starting at 0
    NSInteger par = (self.parSegmenetedControl.selectedSegmentIndex + 1);
    
    [self.parValues addObject:[NSNumber numberWithInteger:par]];
    [self.strokeValues addObject:[NSNumber numberWithInteger: self.strokeStepper.value]];
    
    
    // Reset for next hole
    int holeNumber = self.holeNumberLabel.text.intValue;
    holeNumber++;
    self.strokeStepper.value = 0;
    self.strokeLabel.text = @"0";
    self.holeNumberLabel.text = [NSString stringWithFormat:@"%i", holeNumber];
    
    if (holeNumber == 9 || holeNumber == 18)
    {
        self.doneGolfingButton.hidden = NO;
    }
    else
    {
        self.doneGolfingButton.hidden = YES;
    }
}

- (IBAction)strokeValueChanged:(UIStepper *)sender
{
    NSInteger strokeValue = sender.value;
    self.strokeLabel.text = [NSString stringWithFormat:@"%li", (long)strokeValue];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSInteger strokeValue = self.strokeStepper.value;
    
    // +1 to account for index starting at 0
    NSInteger par = (self.parSegmenetedControl.selectedSegmentIndex + 1);
    
    [self.parValues addObject:[NSNumber numberWithInteger:par]];
    [self.strokeValues addObject:[NSNumber numberWithInteger:strokeValue]];
    
    if([segue.identifier isEqualToString:@"showSummary"])
    {
        SummaryViewController *svc = (SummaryViewController *)segue.destinationViewController;
        svc.parValues = self.parValues;
        svc.strokeValues = self.strokeValues;
    }
}
@end
