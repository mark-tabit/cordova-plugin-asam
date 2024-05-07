#import <Cordova/CDV.h>

@interface ASAMHandler : CDVPlugin

- (void)enableASAM:(CDVInvokedUrlCommand *)command;
- (void)disableASAM:(CDVInvokedUrlCommand *)command;
- (void)checkASAM:(CDVInvokedUrlCommand *)command;

@end
