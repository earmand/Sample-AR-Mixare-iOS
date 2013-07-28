Sample-AR-Mixare-iOS
====================

This is a sample about how to use Mixare on your own project.

*You can download [Mixare for iOS here](https://github.com/mixare/mixare-iphone). It is necessary in order to import the classes and see the methods that we need to develop our own Mixare project*

This sample was created by [Javier González Pérez](http://www.linkedin.com/pub/javier-gonzalez-perez/46/78/385) inside the company [SolidGear SL](http://www.solidgear.es/).


Steps to reproduce the sample in your own project
====================

1.	Create a new project on Xcode Single View Application. I recommend without Storyboards and with ARC

2.	Import all the necessary classes and images from the Mixare project:

	-AugmentedGeoViewController (View)

	-AugmentedViewController (View)

	-CameraController (View)

	-MarketView (View)

	-Radar (radarView)

	-RadarViewPortView (radarView)

	-PopUpWebView (guiControllers)

	-PressHud (guiControllers)

	-PullRefreshTableViewController (guiControllers)

	-WebViewController (guiControllers)

	-MapViewAnnotation (reality)

	-PoiItem (reality)

	-DataSource (data)

	-Position (data)

	-Images

3.	Open the Mixare project on Xcode. We need copy the method "initControls" from MixareAppDelegate.m to our AppDelegate.m

4.	Search the method "openARView" on MixareAppDelegate.m and copy the content on our init method on our AppDelegate.m.

5.	Import on our AppDelegate

	-AugmentedGeoViewController.h
	
	-PoiItem.h

	-Position.h

6.	Remove from our AppDelegate the import of ViewController (we will not use that class)

7.	Add the frameworks:

	-AvFundation
	
	-MapKit

	-QuartzCore

	-CoreMotion

	-CoreMedia

	-CoreVideo

	-CoreLocation

8.	In our AppDelegate.h we change all about the class ViewController with AugmentedGeoViewControllers (the import and the object). We import "CoreLocation/CoreLocation.h" and create a new object:
@property (strong, nonatomic) CLLocationManager *locationManager;

9.	In our AppDelegate.m we remove the calls to the DataSource and we put the right names to the vars (for example _augViewController).

10.	Launch the App in the simulator or in a real device in order to search all the compilation problems:

	-Remove the imports of Resources.h
	
	-Change the call of Resources to Main bundle: [[Resources getInstance] bundle] to [NSBundle mainBundle]

	-Change the imports MixareAppDelegate.h to AppDelegate.h

11.	In our init method we have to init the locationManager: _locationManager = [[CLLocationManager alloc] init];

12.	We make public the method addCoordinate of the class AugmentedViewController adding them to the AugmentedViewController.h

13.	We create a new method addPoisToARView on the AppDelegate.m to add the lois to the view.

14.	We call the method addPoisToARView in the init of our app after instance _augViewController.

15.	In the method addPoisToARView we create the POIs to send them to the _augViewController using the method addCoordinate.