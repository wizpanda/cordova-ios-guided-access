/********* cordova-ios-guided-access.m Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>

@interface WPGuidedAccessMode : CDVPlugin {
  // Member variables go here.
}

- (void)start:(CDVInvokedUrlCommand*)command;
@end

@implementation WPGuidedAccessMode

- (void)start:(CDVInvokedUrlCommand*)command {
    BOOL enableFoo = true;

    UIAccessibilityRequestGuidedAccessSession(enableFoo completion:^(BOOL didSucceed) {
        NSLog(@"Animation over..");
        NSLog(didSucceed ? @"Yes" : @"No");
    });
}

@end
