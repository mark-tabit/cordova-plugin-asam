#import "ASAMHandler.h"
#import <UIKit/UIKit.h>

@implementation ASAMHandler

- (void)enableASAM:(CDVInvokedUrlCommand *)command {
    // You need to use the proper iOS APIs and ensure you have the correct entitlements to use ASAM
    // Example function call (this is just a placeholder as real ASAM API usage may vary)
    UIAccessibilityRequestGuidedAccessSession(YES, ^(BOOL didSucceed) {
        CDVPluginResult *result;
        if (didSucceed) {
            result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"ASAM enabled"];
        } else {
            result = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"Failed to enable ASAM"];
        }
        [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
    });
}

- (void)disableASAM:(CDVInvokedUrlCommand *)command {
    // Disabling ASAM
    UIAccessibilityRequestGuidedAccessSession(NO, ^(BOOL didSucceed) {
        CDVPluginResult *result;
        if (didSucceed) {
            result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"ASAM disabled"];
        } else {
            result = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"Failed to disable ASAM"];
        }
        [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
    });
}

- (void)checkASAM:(CDVInvokedUrlCommand *)command {
    // Checking ASAM status
    BOOL isASAMEnabled = UIAccessibilityIsGuidedAccessEnabled();
    CDVPluginResult *result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:isASAMEnabled];
    [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}

@end
