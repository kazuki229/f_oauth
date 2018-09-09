#import "FOauthPlugin.h"
#import <f_oauth/f_oauth-Swift.h>

@implementation FOauthPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFOauthPlugin registerWithRegistrar:registrar];
}
@end
