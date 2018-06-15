# Cordova Guided Access Mode for iOS

## iOS Usage

To start Guided Access mode programmatically via this plugin, the device must be supervised using Mobile Device
Management (MDM), and the app itself must be enabled for this mode by MDM.

## Javascript Usage

```
cordova.plugins.WPGuidedAccess.start();
cordova.plugins.WPGuidedAccess.end();
cordova.plugins.WPGuidedAccess.isStarted();
```

## Research & Findings

### iOS

1. https://developer.apple.com/documentation/uikit/1615186-uiaccessibilityrequestguidedacce?language=objc