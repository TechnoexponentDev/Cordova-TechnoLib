#import "TechnoLib.h"
#import <Cordova/CDV.h>

@implementation TechnoLib
@synthesize callbackId;

- (void)technoAlert:(CDVInvokedUrlCommand*)command {

    CDVPluginResult* pluginResult = nil;
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"OK"];
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
    
   pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:[[[UIDevice currentDevice] identifierForVendor] UUIDString]];

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}




@end
