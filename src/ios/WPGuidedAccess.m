#import <Cordova/CDV.h>
#import "WPGuidedAccess.h"

@implementation WPGuidedAccessMode

- (void)start:(CDVInvokedUrlCommand*)command {
    BOOL enableFoo = true;

    // https://developer.apple.com/documentation/uikit/1615186-uiaccessibilityrequestguidedacce?language=objc
    UIAccessibilityRequestGuidedAccessSession(enableFoo, ^(BOOL didSucceed) {
        NSLog(@"Animation over..");
        NSLog(didSucceed ? @"Yes" : @"No");
    });
}

@end
