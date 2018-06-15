#import <Cordova/CDV.h>

@interface WPGuidedAccessMode : CDVPlugin

- (void)start:(CDVInvokedUrlCommand*)command;
- (void)end:(CDVInvokedUrlCommand*)command;
- (void)isEnabled:(CDVInvokedUrlCommand*)command;

@end
