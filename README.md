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

