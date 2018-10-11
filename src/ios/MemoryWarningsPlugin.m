#import "MemoryWarningsPlugin.h"

@interface MemoryWarningsPlugin()

@end

@implementation MemoryWarningsPlugin

static NSString* callbackId;

- (void) initialize:(CDVInvokedUrlCommand *)command {
    callbackId = command.callbackId;
}

 - (void)onMemoryWarning
{
    NSLog(@"Got onMemoryWarning notification");
    [self.commandDelegate evalJs:@"if (window.MemoryWarningsPlugin && window.MemoryWarningsPlugin.onMemoryWarning && typeof(window.MemoryWarningsPlugin.onMemoryWarning)=='function') window.MemoryWarningsPlugin.onMemoryWarning();"];
}

@end