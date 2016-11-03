//
//  APIController.h
//  GolfScorecardd
//
//  Created by Komari Herring on 11/3/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ForecastTableViewController.h"

@interface APIController : NSObject

@property (strong, nonatomic) id<APIControllerProtocol> delegate;

-(void)searchGoogleFor:(NSString *)searchTerm;

-(void)searchDarkSkyForLat:(NSString *)latitude andLong:(NSString *)longitude;
@end
