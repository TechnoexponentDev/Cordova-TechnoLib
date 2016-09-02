#import "TechnoLib.h"
#import <Cordova/CDV.h>

@implementation TechnoLib
@synthesize callbackId;

- (void)technoAlert:(CDVInvokedUrlCommand*)command {
    [self.commandDelegate runInBackground:^{
        self.callbackId = command.callbackId;
        
        [[[UIDevice currentDevice] identifierForVendor] UUIDString];        

        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:[command.arguments objectAtIndex:0]
            message:[command.arguments objectAtIndex:1]
            delegate:nil
            cancelButtonTitle:@"OKKK"
            otherButtonTitles:nil];

        [alertView show];
        
        
        CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:[command.arguments objectAtIndex:0]];
        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    }];
}

-(NSString *)getUDID:(CDVInvokedUrlCommand*)command {
    [self.commandDelegate runInBackground:^{
        self.callbackId = command.callbackId;

        CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"UDID OK"];
        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];

        
    }];
    return [[[UIDevice currentDevice] identifierForVendor] UUIDString];
}




@end
