//
//  AppDelegate.m
//  Demo AR
//
//  Created by Javier González Pérez on 15/07/13.
//  Copyright (c) 2013 SolidGear. All rights reserved.
//

#import "AppDelegate.h"

#import "AugmentedGeoViewController.h"
#import "PoiItem.h"
#import "Position.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    _locationManager = [[CLLocationManager alloc] init];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    _augViewController = [[AugmentedGeoViewController alloc] initWithLocationManager:_locationManager];
    _augViewController.centerLocation = _locationManager.location;
    [self initControls];
    self.window.rootViewController = _augViewController;
    
    [self.window makeKeyAndVisible];
    
    [self addPoisToView];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

/***
 *
 *  Initialize UI controls
 *
 ***/
- (void)initControls {
    [_augViewController initInterface];
	[_augViewController startListening:_locationManager];
    [_augViewController.slider addTarget:self action:@selector(valueChanged) forControlEvents:UIControlEventValueChanged];
    [_augViewController.sliderButton addTarget:self action:@selector(radiusClicked:)forControlEvents:UIControlEventTouchUpInside];
    [_augViewController.menuButton addTarget:self action:@selector(menuClicked:)forControlEvents:UIControlEventTouchUpInside];
    [_augViewController.backToPlugin addTarget:self action:@selector(pluginButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    if ([[UIDevice currentDevice] orientation] == UIDeviceOrientationLandscapeLeft) {
        [_augViewController setViewToLandscape];
    }
}

- (void) addPoisToView {
    
    Position *positionPalencia = [[Position alloc] initWithTitle:@"Palencia" withSummary:@"" withUrl:nil withLatitude:0 withLongitude:0 withAltitude:0 withSource:nil];
    
    PoiItem *poiPalencia = [[PoiItem alloc] initWithLatitude:42.0088161 longitude:-4.5269538 altitude:700.0 position:positionPalencia];
    
    [_augViewController addCoordinate:poiPalencia];
}

@end
