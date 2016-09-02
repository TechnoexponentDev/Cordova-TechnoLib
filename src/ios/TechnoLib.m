#import "TechnoLib.h"
#import <Cordova/CDV.h>

@implementation TechnoLib
@synthesize callbackId;

- (void)technoAlert:(CDVInvokedUrlCommand*)command {

    CDVPluginResult* pluginResult = nil;
    NSString* echo = [command.arguments objectAtIndex:0];

    if (echo != nil && [echo length] > 0) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:echo];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }

    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:[command.arguments objectAtIndex:0]
        message:[command.arguments objectAtIndex:1]
        delegate:nil
        cancelButtonTitle:@"OKKK"
        otherButtonTitles:nil];

    [alertView show];

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];


}

-(void)getUDID:(CDVInvokedUrlCommand*)command { 

    CDVPluginResult* pluginResult = nil;
    
    if (echo != nil && [echo length] > 0) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:[[[UIDevice currentDevice] identifierForVendor] UUIDString]];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}




@end
