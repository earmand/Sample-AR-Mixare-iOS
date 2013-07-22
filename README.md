Sample-AR-Mixare-iOS
====================

This is a sample about how to use Mixare on your own project.

*You can download [Mixare for iOS here](https://github.com/mixare/mixare-iphone). It is necessary in order to import the classes and see the methods that we need to develop our own Mixare project*

This sample was created by [Javier González Pérez](http://www.linkedin.com/pub/javier-gonzalez-perez/46/78/385) inside the company [SolidGear SL](http://www.solidgear.es/).


Steps to reproduce the sample in your own project
====================

1.	Create a new project on Xcode Single View Application. I recommend without Storyboards and with ARC.
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
3.	Open the Mixare project on Xcode. We copy the method "initControls" from MixareAppDelegate to our AppDelegate
