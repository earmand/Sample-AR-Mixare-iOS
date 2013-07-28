//
//  AppDelegate.h
//  Demo AR
//
//  Created by Javier González Pérez on 15/07/13.
//  Copyright (c) 2013 SolidGear. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CoreLocation/CoreLocation.h"

@class AugmentedGeoViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) AugmentedGeoViewController *augViewController;
@property (strong, nonatomic) CLLocationManager *locationManager;

@end
