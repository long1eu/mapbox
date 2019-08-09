#import "MapboxGlPlugin.h"
#import <flutter_mapbox_gl/flutter_mapbox_gl-Swift.h>

@implementation MapboxGlPlugin
+ (void)registerWithRegistrar:(NSObject <FlutterPluginRegistrar> *)registrar {
  [SwiftMapboxGlPlugin registerWithRegistrar:registrar];
}
@end
