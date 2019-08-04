#import "MapboxGlPlugin.h"
#import <mapbox_gl/mapbox_gl-Swift.h>

@implementation MapboxGlPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftMapboxGlPlugin registerWithRegistrar:registrar];
}
@end
