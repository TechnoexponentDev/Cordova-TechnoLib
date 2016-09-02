#import <Cordova/CDVPlugin.h>

@interface TechnoLib : CDVPlugin {
	NSString* callbackId;
}

@property (nonatomic, copy) NSString* callbackId;

- (void) technoAlert:(CDVInvokedUrlCommand*)command;

- (void) getUDID:(CDVInvokedUrlCommand*)command; 
@end
