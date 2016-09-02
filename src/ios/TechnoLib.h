#import <Cordova/CDVPlugin.h>

@interface TechnoLib : CDVPlugin {
	NSString* callbackId;
}

@property (nonatomic, copy) NSString* callbackId;

- (void)technoAlert:(CDVInvokedUrlCommand*)command;
- (NSString*)getUDID:(CDVInvokedUrlCommand*)command; 
@end
