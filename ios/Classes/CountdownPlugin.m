#import "CountdownPlugin.h"
#if __has_include(<countdown/countdown-Swift.h>)
#import <countdown/countdown-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "countdown-Swift.h"
#endif

@implementation CountdownPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftCountdownPlugin registerWithRegistrar:registrar];
}
@end
