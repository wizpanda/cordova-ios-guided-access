#import <Cordova/CDV.h>
#import "WPGuidedAccess.h"

@implementation WPGuidedAccessMode

- (void)start:(CDVInvokedUrlCommand*)command {
    BOOL enable = true;

    UIAccessibilityRequestGuidedAccessSession(enable, ^(BOOL didSucceed) {
        NSLog(@"Guided Access Started");
        NSLog(didSucceed ? @"Yes" : @"No");
    });
}

- (void)end:(CDVInvokedUrlCommand*)command {
    BOOL enable = false;

    UIAccessibilityRequestGuidedAccessSession(enable, ^(BOOL didSucceed) {
        NSLog(@"Guided Access Stopped");
        NSLog(didSucceed ? @"Yes" : @"No");
    });
}

- (void)isEnabled:(CDVInvokedUrlCommand*)command {
    BOOL guidedAccessEnabled = UIAccessibilityIsGuidedAccessEnabled();
    
    CDVPluginResult* result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:guidedAccessEnabled];
    
    [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}

@end
