# Smartling Context Capturing Library

Captures context from a native iOS application and uploads it to Smartling's translation management system.

## Translation Context for iOS

Smartling Context Kit provides the capability to capture native iOS application views for the purpose of providing context for your source content that will be shown in the Smartling Translation Interface.
Smartling analyzes uploaded views for context and matches strings in a Smartling project.  When Smartling
finds a match, the captured views become the visual context that users see in the Smartling Translation
Interface. Smartling will not create any new content from the views uploaded to the context matching service,
and every unique string in Smartling can have only one context.

## Getting Started

If you don't yet have a Smartling account, sign up at [Smartling.com](http://www.smartling.com).

### Add a Smartling Properties File to Your Project

Create file named Smartling.plist in your main project. The contents should be similar to this:

```
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>captureEnabled</key>
	<true/>
	<key>apiKey</key>
	<string>your-key-here</string>
	<key>projectId</key>
	<string>your-project-id-here</string>
</dict>
</plist>
```

_Note: You can find your Project Id and API Key under [Project Settings -> API][dashboard] in the Smartling Dashboard._

## Installation

### CocoaPods (Recommended)

[CocoaPods][cocoapods] is a dependency manager for Objective-C and Swift, which automates and simplifies the process of using 3rd-party libraries like SmartlingContextKit in your projects. See the CocoaPods ["Getting Started" guide][cocoapods-guide] for more information.

#### Podfile

```
pod 'SmartlingContextKit', :configurations => ['Debug']
```

### Download Framework

1. Download the [latest release][framework-release] of Smartling Context Kit.
2. Unzip the release and drag `SmartlingContextKit.framework` into your project's Framework's folder
3. Adding the "-ObjC" Linker Flag (see a [screenshot][objcflag])
4. Make sure to link against the following iOS Framworks:
   1. CFNetwork
   2. MobileCoreServices
   3. Security
   4. SystemConfiguration

If you require further assistance, please refer to Apple's [Guide to Configurating Your Application][apple-static-libs].

## Contextualizing strings in a Smartling project

**1)** Make sure your resource files are uploaded to your Smartling project. See our [help center](http://support.smartling.com/hc/en-us/articles/204270618) for more detail on managing your resource files in Smartling.

**2)** Ensure that your ProjectID and APIKey are correctly entered in the Smartling.plist file in your main project

**3)** Launch your app in a test environment. Click the ‘HI’ button on any screen to capture context for that screen.

![Image of Yaktocat]
(http://s3.postimg.org/t0euku2yb/Native_App_Context.png)

**4)** Smartling will search for matching strings in your Smartling project and use the snapshot you just took to show dynamic context for those strings.

### Automating Context Capture

If you're [Automating UI Testing][apple-automating-ui], you can capture context programatically from your UI testing script. Use the following code snippet to capture context for each view:

```
var appWindow = target.frontMostApp().mainWindow();
appWindow.buttons()["Smartling Capture Context"].tap();
```

Please keep in mind:

1. UIAlertViews and UIActionSheets are captured automatically. Do not call `.tap()` after showing one of these views.
2. Only `.tap()` the context capture button once per view. The button will be removed after being tapped.


## Feedback

iOS Context is currently in beta. That means we need your feedback. Please send any issues or suggestions to ioscontext@smartling.com. If context for a particular string is unsatisfactory, please send a screenshot or a dashboard link.

[apple-static-libs]: https://developer.apple.com/library/ios/technotes/iOSStaticLibraries/Articles/configuration.html
[apple-automating-ui]: https://developer.apple.com/library/ios/documentation/DeveloperTools/Conceptual/InstrumentsUserGuide/UsingtheAutomationInstrument/UsingtheAutomationInstrument.html
[cocoapods]: http://cocoapods.org
[cocoapods-guide]: http://guides.cocoapods.org/using/getting-started.html
[dashboard]: https://dashboard.smartling.com/settings/api.htm
[framework-release]: https://github.com/Smartling/ios-context-framework/releases/latest
[objcflag]: http://docs.millennialmedia.com/iOS-SDK/iOSAddingLinkerFlag.html
