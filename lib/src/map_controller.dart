// File created by
// Lung Razvan <long1eu>
// on 2019-08-01

part of flutter_mapbox_gl;

class MapController extends ChangeNotifier {
  MapController._({
    @required final pb.Map__Operations_Ready info,
    @required Stream<MethodCall> calls,
  })  : assert(info != null),
        assert(calls != null),
        _calls = calls,
        _channel = MethodChannel(
            'com.tophap/mapbox_gl_factory_${info.viewId.toInt()}'),
        _prefetchesTiles = info.prefetchesTiles,
        _minZoom = info.minZoom,
        _maxZoom = info.maxZoom,
        _cameraPosition = CameraPosition.fromProto(info.camera),
        _padding = EdgeInsets.only(
          left: info.padding[0].toDouble(),
          top: info.padding[1].toDouble(),
          right: info.padding[2].toDouble(),
          bottom: info.padding[3].toDouble(),
        ) {
    sub = _calls
        .where((MethodCall it) => it.method.startsWith('mapEvent#'))
        .listen(_cameraPositionChanged);
    _style =
        Style._(channel: _channel, style: StyleModel.fromProto(info.style));
  }

  final MethodChannel _channel;
  final Stream<MethodCall> _calls;

  StreamSubscription<MethodCall> sub;

  bool _prefetchesTiles;
  double _minZoom;
  double _maxZoom;
  CameraPosition _cameraPosition;
  Style _style;
  EdgeInsets _padding;

  Style get style => _style;

  Future<void> setStyle(
      {MapStyle fromMapbox, String fromUri, String fromJson}) async {
    assert(fromMapbox != null || fromUri != null || fromJson != null);
    final pb.Style_Operations_Build message =
        pb.Style_Operations_Build.create();
    if (fromMapbox != null) {
      message.default_1 = fromMapbox.proto;
    } else if (fromUri != null) {
      message.uri = fromUri;
    } else if (fromJson != null) {
      message.json = fromJson;
    }

    final Uint8List data =
        await _channel.invokeMethod('style#set', message.writeToBuffer());
    _style = Style._(channel: _channel, style: StyleModel.fromProtoData(data));
  }

  bool get prefetchesTiles => _prefetchesTiles;

  set prefetchesTiles(bool enabled) {
    _channel
        .invokeMethod<dynamic>('map#setPrefetchesTiles', enabled)
        .then((dynamic _) => _prefetchesTiles = enabled);
  }

  double get minZoom => _minZoom;

  set minZoom(double minZoom) {
    assert(minZoom >= 0 && minZoom <= 25.5);
    _channel
        .invokeMethod<dynamic>('map#setMinZoom', minZoom)
        .then((dynamic _) => _minZoom = minZoom);
  }

  double get maxZoom => _maxZoom;

  set maxZoom(double maxZoom) {
    assert(minZoom >= 0 && minZoom <= 25.5);
    _channel
        .invokeMethod<dynamic>('map#setMaxZoom', maxZoom)
        .then((dynamic _) => _maxZoom = maxZoom);
  }

  /*
  todo public UiSettings getUiSettings()
  */

  CameraPosition get cameraPosition => _cameraPosition;

  set cameraPosition(CameraPosition cameraPosition) {
    _channel
        .invokeMethod<void>('map#setCameraPosition', cameraPosition.data)
        .then((dynamic _) => _cameraPosition = cameraPosition);
  }

  Future<void> moveCamera(CameraUpdate update) async {
    assert(update != null);
    await _channel.invokeMethod<void>('map#moveCamera', update.data);
  }

  Future<void> easeCamera(
    CameraUpdate update, {
    Duration duration = const Duration(milliseconds: 300),
    bool easingInterpolator = true,
  }) async {
    assert(update != null);
    assert(duration != null);
    assert(easingInterpolator != null);

    final pb.Map__Operations_EaseCamera message =
        pb.Map__Operations_EaseCamera.create()
          ..update = update.proto
          ..duration = duration.inMilliseconds
          ..easingInterpolator = easingInterpolator
          ..freeze();

    await _channel.invokeMethod<void>(
        'map#easeCamera', message.writeToBuffer());
  }

  Future<void> animateCamera(
    CameraUpdate update, {
    Duration duration = const Duration(milliseconds: 300),
  }) async {
    assert(update != null);
    assert(duration != null);

    final pb.Map__Operations_AnimateCamera message =
        pb.Map__Operations_AnimateCamera.create()
          ..update = update.proto
          ..duration = duration.inMilliseconds
          ..freeze();

    await _channel.invokeMethod<dynamic>(
        'map#animateCamera', message.writeToBuffer());
  }

  Future<void> scrollBy(double x, double y, {Duration duration}) async {
    assert(x != null);
    assert(y != null);
    final pb.Map__Operations_ScrollBy message =
        pb.Map__Operations_ScrollBy.create()
          ..x = x
          ..y = y;

    if (duration != null) {
      message.duration = Int64(duration.inMilliseconds);
    }
    message.freeze();

    await _channel.invokeMethod<dynamic>(
        'map#scrollBy', message.writeToBuffer());
  }

  Future<void> resetNorth() => _channel.invokeMethod('map#resetNorth');

  Future<void> setFocalBearing(
      double bearing, double focalX, double focalY, Duration duration) async {
    assert(bearing != null);
    assert(focalX != null);
    assert(focalY != null);
    assert(duration != null);

    final pb.Map__Operations_SetFocalBearing message =
        pb.Map__Operations_SetFocalBearing.create()
          ..bearing = bearing
          ..focalX = focalX
          ..focalY = focalY
          ..duration = Int64(duration.inMilliseconds)
          ..freeze();

    await _channel.invokeMethod<void>(
        'map#setFocalBearing', message.writeToBuffer());
  }

  Future<double> get height => _channel.invokeMethod('map#getHeight');

  Future<double> get width => _channel.invokeMethod('map#getWidth');

  Future<void> setLatLngBoundsForCameraTarget(LatLngBounds latLngBounds) {
    assert(latLngBounds != null);
    return _channel.invokeMethod(
        'map#setLatLngBoundsForCameraTarget', latLngBounds.data);
  }

  Future<CameraPosition> getCameraForLatLngBounds(
    LatLngBounds latLngBounds, {
    EdgeInsets padding = EdgeInsets.zero,
    double bearing,
    double tilt,
  }) async {
    assert(latLngBounds != null);

    final pb.Map__Operations_GetCameraForLatLngBounds message =
        pb.Map__Operations_GetCameraForLatLngBounds.create()
          ..bounds = latLngBounds.proto
          ..padding.addAll(<int>[
            (padding.left ?? 0).toInt(),
            (padding.top ?? 0).toInt(),
            (padding.right ?? 0).toInt(),
            (padding.bottom ?? 0).toInt(),
          ]);

    if (bearing != null) {
      message.bearing = bearing;
    }
    if (tilt != null) {
      message.tilt = tilt;
    }

    message.freeze();
    final Uint8List data = await _channel.invokeMethod(
        'map#getCameraForLatLngBounds', latLngBounds.data);
    if (data == null) {
      return null;
    }

    return CameraPosition.fromProtoData(data);
  }

  EdgeInsets get padding => _padding;

  set padding(EdgeInsets padding) {
    assert(padding != null);

    _channel.invokeMethod<dynamic>('map#setPadding', <int>[
      (padding.left ?? 0).toInt(),
      (padding.top ?? 0).toInt(),
      (padding.right ?? 0).toInt(),
      (padding.bottom ?? 0).toInt(),
    ]).then((dynamic _) => _padding = padding);
  }

  Future<LatLngBounds> getVisibleBounds([bool ignorePadding]) async {
    final Uint8List data =
        await _channel.invokeMethod('map#getVisibleBounds', ignorePadding);
    return LatLngBounds.fromProtoData(data);
  }

  Future<Uint8List> snapshot() =>
      _channel.invokeListMethod<int>('map#snapshot');

  void _cameraPositionChanged(MethodCall event) {
    _cameraPosition = CameraPosition.fromProtoData(event.arguments);
    notifyListeners();
  }

  @override
  void dispose() {
    sub.cancel();
    super.dispose();
  }
}
