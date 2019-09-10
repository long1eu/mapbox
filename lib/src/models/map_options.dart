// File created by
// Lung Razvan <long1eu>
// on 2019-08-01

part of flutter_mapbox_gl;

abstract class MapOptions implements Built<MapOptions, MapOptionsBuilder> {
  factory MapOptions({
    CameraPosition cameraPosition,
    MapStyle styleFromMapbox = MapStyle.mapboxStreets,
    String styleFromUri,
    String styleFromJson,
    String styleFromAsset,
    String apiBaseUri,
    String localIdeographFontFamily,
    bool crossSourceCollisions = true,
    double maxZoom = 25.5,
    double minZoom = 0.0,
    bool zoomGestures = true,
    bool scrollGestures = true,
    bool rotateGestures = true,
    bool tiltGestures = true,
    bool doubleTapGestures = true,
    bool quickZoomGestures = true,
    bool compass = true,
    OrnamentPosition compassPosition = OrnamentPosition.topLeft,
    EdgeInsets compassMargin = const EdgeInsets.all(4.0),
    bool compassFadeFacingNorth = true,
    bool logo = true,
    OrnamentPosition logoPosition = OrnamentPosition.bottomRight,
    EdgeInsets logoMargin = const EdgeInsets.all(4.0),
    bool attribution = true,
    OrnamentPosition attributionPosition = OrnamentPosition.bottomRight,
    EdgeInsets attributionMargin =
        const EdgeInsets.only(left: 92, top: 4.0, right: 4.0, bottom: 4.0),
    Color attributionTintColor,
    bool renderTextureMode = false,
    bool renderTextureTranslucentSurface = false,
    bool enableTilePrefetch = false,
    bool enableZMediaOverlay = false,
    double pixelRatio = 0.0,
    Color foregroundLoadColor = const Color(0xFFF0E9E1),
  }) {
    assert(crossSourceCollisions != null);
    assert(maxZoom != null && maxZoom >= 0 && maxZoom <= 25.5);
    assert(minZoom != null && minZoom >= 0 && minZoom <= 25.5);
    assert(zoomGestures != null);
    assert(scrollGestures != null);
    assert(rotateGestures != null);
    assert(tiltGestures != null);
    assert(doubleTapGestures != null);
    assert(quickZoomGestures != null);
    assert(compass != null);
    assert(compassPosition != null);
    assert(compassMargin != null &&
        compassMargin.left != null &&
        compassMargin.top != null &&
        compassMargin.right != null &&
        compassMargin.bottom != null);
    assert(compassFadeFacingNorth != null);
    assert(logo != null);
    assert(logoPosition != null);
    assert(logoMargin != null &&
        logoMargin.left != null &&
        logoMargin.top != null &&
        logoMargin.right != null &&
        logoMargin.bottom != null);
    assert(attribution != null);
    assert(attributionPosition != null);
    assert(attributionMargin != null &&
        attributionMargin.left != null &&
        attributionMargin.top != null &&
        attributionMargin.right != null &&
        attributionMargin.bottom != null);
    assert(renderTextureMode != null);
    assert(renderTextureTranslucentSurface != null);
    assert(enableTilePrefetch != null);
    assert(enableZMediaOverlay != null);
    assert(pixelRatio != null);
    assert(foregroundLoadColor != null && foregroundLoadColor.opacity == 1.0);
    cameraPosition ??= CameraPosition();
    assert(
        <dynamic>[styleFromMapbox, styleFromUri, styleFromJson, styleFromAsset]
            .any((Object it) => it != null),
        'You need to set at leat one style source.');

    if (attributionTintColor != null) {
      assert(attributionTintColor.opacity == 1.0);
    }

    return _$MapOptions((MapOptionsBuilder b) {
      b
        ..apiBaseUri = apiBaseUri
        ..styleFromMapbox = styleFromMapbox
        ..styleFromUri = styleFromUri
        ..styleFromJson = styleFromJson
        ..styleFromAsset = styleFromAsset
        ..localIdeographFontFamily = localIdeographFontFamily
        ..crossSourceCollisions = crossSourceCollisions
        ..cameraPosition = cameraPosition.toBuilder()
        ..maxZoom = maxZoom
        ..minZoom = minZoom
        ..zoomGestures = zoomGestures
        ..scrollGestures = scrollGestures
        ..rotateGestures = rotateGestures
        ..tiltGestures = tiltGestures
        ..doubleTapGestures = doubleTapGestures
        ..quickZoomGestures = quickZoomGestures
        ..compass = compass
        ..compassPosition = compassPosition
        ..compassMargin = ListBuilder<int>(<int>[
          (compassMargin.left * window.devicePixelRatio).toInt(),
          (compassMargin.top * window.devicePixelRatio).toInt(),
          (compassMargin.right * window.devicePixelRatio).toInt(),
          (compassMargin.bottom * window.devicePixelRatio).toInt(),
        ])
        ..compassFadeFacingNorth = compassFadeFacingNorth
        ..logo = logo
        ..logoPosition = logoPosition
        ..logoMargin = ListBuilder<int>(<int>[
          (logoMargin.left * window.devicePixelRatio).toInt(),
          (logoMargin.top * window.devicePixelRatio).toInt(),
          (logoMargin.right * window.devicePixelRatio).toInt(),
          (logoMargin.bottom * window.devicePixelRatio).toInt(),
        ])
        ..attribution = attribution
        ..attributionPosition = attributionPosition
        ..attributionMargin = ListBuilder<int>(<int>[
          (attributionMargin.left * window.devicePixelRatio).toInt(),
          (attributionMargin.top * window.devicePixelRatio).toInt(),
          (attributionMargin.right * window.devicePixelRatio).toInt(),
          (attributionMargin.bottom * window.devicePixelRatio).toInt(),
        ])
        ..attributionTintColor = attributionTintColor?.value
        ..renderTextureMode = renderTextureMode
        ..renderTextureTranslucentSurface = renderTextureTranslucentSurface
        ..enableTilePrefetch = enableTilePrefetch
        ..enableZMediaOverlay = enableZMediaOverlay
        ..pixelRatio = pixelRatio
        ..foregroundLoadColor = foregroundLoadColor.value;
    });
  }

  MapOptions._();

  @nullable
  String get apiBaseUri;

  @nullable
  MapStyle get styleFromMapbox;

  @nullable
  String get styleFromUri;

  @nullable
  String get styleFromJson;

  @nullable
  String get styleFromAsset;

  @nullable
  String get localIdeographFontFamily;

  bool get crossSourceCollisions;

  CameraPosition get cameraPosition;

  double get maxZoom;

  double get minZoom;

  bool get zoomGestures;

  bool get scrollGestures;

  bool get rotateGestures;

  bool get tiltGestures;

  bool get doubleTapGestures;

  bool get quickZoomGestures;

  bool get compass;

  OrnamentPosition get compassPosition;

  BuiltList<int> get compassMargin;

  EdgeInsets get compassMarginValue {
    return EdgeInsets.only(
      left: compassMargin[0] / window.devicePixelRatio,
      top: compassMargin[1] / window.devicePixelRatio,
      right: compassMargin[2] / window.devicePixelRatio,
      bottom: compassMargin[3] / window.devicePixelRatio,
    );
  }

  bool get compassFadeFacingNorth;

  bool get logo;

  OrnamentPosition get logoPosition;

  BuiltList<int> get logoMargin;

  EdgeInsets get logoMarginValue {
    return EdgeInsets.only(
      left: logoMargin[0] / window.devicePixelRatio,
      top: logoMargin[1] / window.devicePixelRatio,
      right: logoMargin[2] / window.devicePixelRatio,
      bottom: logoMargin[3] / window.devicePixelRatio,
    );
  }

  bool get attribution;

  OrnamentPosition get attributionPosition;

  BuiltList<int> get attributionMargin;

  EdgeInsets get attributionMarginValue {
    return EdgeInsets.only(
      left: attributionMargin[0] / window.devicePixelRatio,
      top: attributionMargin[1] / window.devicePixelRatio,
      right: attributionMargin[2] / window.devicePixelRatio,
      bottom: attributionMargin[3] / window.devicePixelRatio,
    );
  }

  @nullable
  int get attributionTintColor;

  Color get attributionTintColorValue => Color(attributionTintColor);

  bool get renderTextureMode;

  bool get renderTextureTranslucentSurface;

  bool get enableTilePrefetch;

  bool get enableZMediaOverlay;

  double get pixelRatio;

  int get foregroundLoadColor;

  Color get foregroundLoadColorValue => Color(foregroundLoadColor);

  pb.Map__Options get proto {
    final pb.Map__Options message = pb.Map__Options.create()
      ..crossSourceCollisions = crossSourceCollisions
      ..cameraPosition = cameraPosition.proto
      ..maxZoom = maxZoom
      ..minZoom = minZoom
      ..zoomGestures = zoomGestures
      ..scrollGestures = scrollGestures
      ..rotateGestures = rotateGestures
      ..tiltGestures = tiltGestures
      ..doubleTapGestures = doubleTapGestures
      ..quickZoomGestures = quickZoomGestures
      ..compass = compass
      ..compassPosition = compassPosition.proto
      ..compassMargin.addAll(compassMargin)
      ..compassFadeFacingNorth = compassFadeFacingNorth
      ..logo = logo
      ..logoPosition = logoPosition.proto
      ..logoMargin.addAll(logoMargin)
      ..attribution = attribution
      ..attributionPosition = attributionPosition.proto
      ..attributionMargin.addAll(attributionMargin)
      ..renderTextureMode = renderTextureMode
      ..renderTextureTranslucentSurface = renderTextureTranslucentSurface
      ..enableTilePrefetch = enableTilePrefetch
      ..enableZMediaOverlay = enableZMediaOverlay
      ..pixelRatio = pixelRatio
      ..foregroundLoadColor = color_(foregroundLoadColor);

    if (styleFromMapbox != null) {
      message.fromMapbox = styleFromMapbox.proto;
    }
    if (styleFromUri != null) {
      message.fromUri = styleFromUri;
    }
    if (styleFromJson != null) {
      message.fromJson_32 = styleFromJson;
    }
    if (styleFromAsset != null) {
      message.fromAsset = styleFromAsset;
    }

    if (apiBaseUri != null) {
      message.apiBaseUri = apiBaseUri;
    }
    if (localIdeographFontFamily != null)
      message.localIdeographFontFamily = localIdeographFontFamily;
    if (attributionTintColor != null)
      message.attributionTintColor = color_(attributionTintColor);
    return message..freeze();
  }

  @memoized
  Uint8List get data => proto.writeToBuffer();

  static Serializer<MapOptions> get serializer => _$mapOptionsSerializer;
}
