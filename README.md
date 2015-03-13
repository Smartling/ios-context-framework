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

_TODO: Need to document how to install into project and which frameworks must be linked._


### Contextualizing strings in a Smartling project

**1)** Make sure your resource files are uploaded to your Smartling project. See our [help center](http://support.smartling.com/hc/en-us/articles/204270618) for more detail on managing your resource files in Smartling.

**2)** Ensure that your ProjectID and APIKey are correctly entered in the Smartling.plist file in your main project

**3)** Launch your app in a test environment. Click the ‘HI’ button on any screen to capture context for that screen.

![Image of Yaktocat]
(http://s3.postimg.org/t0euku2yb/Native_App_Context.png)

**4)** Smartling will search for matching strings in your Smartling project and use the snapshot you just took to show dynamic context for those strings.


[cocoapods]: http://cocoapods.org
[cocoapods-guide]: http://guides.cocoapods.org/using/getting-started.html
[dashboard]: https://dashboard.smartling.com/settings/api.htm
