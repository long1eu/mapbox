// File created by
// Lung Razvan <long1eu>
// on 2019-08-01

part of mapbox_gl;

class MapController {
  MapController._({@required final pb.Map__Operations_Ready info, Stream<MethodCall> calls})
      : assert(info != null),
        assert(calls != null),
        _calls = calls,
        _viewId = info.viewId,
        _channel = MethodChannel('com.tophap/mapbox_gl_factory_${info.viewId}'),
        _prefetchesTiles = info.prefetchesTiles,
        _minZoom = info.minZoom,
        _maxZoom = info.maxZoom,
        _cameraPosition = CameraPosition.fromProto(info.camera) {
    sub = _calls.where((it) => it.method == 'cameraEvent#onCameraMove').listen(_cameraPositionChanged);
    _style = Style._(channel: _channel, style: StyleModel.fromProto(info.style));
  }

  final int _viewId;
  final MethodChannel _channel;
  final Stream<MethodCall> _calls;

  StreamSubscription<MethodCall> sub;

  bool _prefetchesTiles;
  double _minZoom;
  double _maxZoom;
  CameraPosition _cameraPosition;
  Style _style;

  Style get style => _style;

  Future<void> setStyle({MapStyle fromMapbox, String fromUri, String fromJson}) async {
    assert(fromMapbox != null || fromUri != null || fromJson != null);
    final pb.Style_Operations_Build message = pb.Style_Operations_Build.create();
    if (fromMapbox != null) {
      message.default_1 = fromMapbox.proto;
    } else if (fromUri != null) {
      message.uri = fromUri;
    } else if (fromJson != null) {
      message.json = fromJson;
    }

    final Uint8List data = await _channel.invokeMethod('style#set', message.writeToBuffer());
    _style = Style._(channel: _channel, style: StyleModel.fromProtoData(data));
  }

  bool get prefetchesTiles => _prefetchesTiles;

  set prefetchesTiles(bool enabled) {
    _channel.invokeMethod('map#setPrefetchesTiles', enabled).then((_) => _prefetchesTiles = enabled);
  }

  double get minZoom => _minZoom;

  set minZoom(double minZoom) {
    assert(minZoom >= 0 && minZoom <= 25.5);
    _channel.invokeMethod('map#setMinZoom', minZoom).then((_) => _minZoom = minZoom);
  }

  double get maxZoom => _maxZoom;

  set maxZoom(double maxZoom) {
    assert(minZoom >= 0 && minZoom <= 25.5);
    _channel.invokeMethod('map#setMaxZoom', maxZoom).then((_) => _maxZoom = maxZoom);
  }

/*
 todo public UiSettings getUiSettings()
 todo public Projection getProjection()
*/

  Future<void> cancelTransitions() => _channel.invokeMethod('map#cancelTransitions');

  CameraPosition get cameraPosition => _cameraPosition;

  Future<CameraPosition> getCameraPositionAsync() async {
    final Uint8List data = await _channel.invokeMethod('map#getCameraPosition');
    _cameraPosition = CameraPosition.fromProtoData(data);
    return _cameraPosition;
  }

  set cameraPosition(CameraPosition cameraPosition) {
    _channel.invokeMethod('map#setCameraPosition', cameraPosition.data).then((_) => _cameraPosition = cameraPosition);
  }

  Future<CameraOperationResult> moveCamera(CameraUpdate update) async {
    assert(update != null);
    final int index = await _channel.invokeMethod('map#moveCamera', update.data);
    return CameraOperationResult.values.elementAt(index);
  }

  Future<CameraOperationResult> easeCamera(
    CameraUpdate update, {
    Duration duration = const Duration(milliseconds: 300),
    bool easingInterpolator = true,
  }) async {
    assert(update != null);
    assert(duration != null);
    assert(easingInterpolator != null);

    final pb.Map__Operations_EaseCamera message = pb.Map__Operations_EaseCamera.create()
      ..update = update.proto
      ..duration = duration.inMilliseconds
      ..easingInterpolator = easingInterpolator
      ..freeze();

    final int index = await _channel.invokeMethod('map#easeCamera', message.writeToBuffer());
    return CameraOperationResult.values.elementAt(index);
  }

  Future<CameraOperationResult> animateCamera(
    CameraUpdate update, {
    Duration duration = const Duration(milliseconds: 300),
  }) async {
    assert(update != null);
    assert(duration != null);

    final pb.Map__Operations_AnimateCamera message = pb.Map__Operations_AnimateCamera.create()
      ..update = update.proto
      ..duration = duration.inMilliseconds
      ..freeze();

    final int index = await _channel.invokeMethod('map#animateCamera', message.writeToBuffer());
    return CameraOperationResult.values.elementAt(index);
  }

  Future<void> scrollBy(double x, double y, {Duration duration}) async {
    assert(x != null);
    assert(y != null);
    final pb.Map__Operations_ScrollBy message = pb.Map__Operations_ScrollBy.create()
      ..x = x
      ..y = y;

    if (duration != null) {
      message.duration = Int64(duration.inMilliseconds);
    }
    message.freeze();

    await _channel.invokeMethod('map#scrollBy', message.writeToBuffer());
  }

  Future<void> resetNorth() => _channel.invokeMethod('map#resetNorth');

  Future<void> setFocalBearing(double bearing, double focalX, double focalY, Duration duration) async {
    assert(bearing != null);
    assert(focalX != null);
    assert(focalY != null);
    assert(duration != null);

    final pb.Map__Operations_SetFocalBearing message = pb.Map__Operations_SetFocalBearing.create()
      ..bearing = bearing
      ..focalX = focalX
      ..focalY = focalY
      ..duration = Int64(duration.inMilliseconds)
      ..freeze();

    await _channel.invokeMethod('map#setFocalBearing', message.writeToBuffer());
  }

  Future<double> get height => _channel.invokeMethod('map#getHeight');

  Future<double> get width => _channel.invokeMethod('map#getWidth');

  Future<void> setLatLngBoundsForCameraTarget(LatLngBounds latLngBounds) {
    assert(latLngBounds != null);
    return _channel.invokeMethod('map#setLatLngBoundsForCameraTarget', latLngBounds.data);
  }

  Future<CameraPosition> getCameraForLatLngBounds(
    LatLngBounds latLngBounds, {
    int paddingLeft = 0,
    int paddingTop = 0,
    int paddingRight = 0,
    int paddingBottom = 0,
    double bearing,
    double tilt,
  }) async {
    assert(latLngBounds != null);

    final pb.Map__Operations_GetCameraForLatLngBounds message = pb.Map__Operations_GetCameraForLatLngBounds.create()
      ..bounds = latLngBounds.proto
      ..padding.addAll(<int>[
        paddingLeft ?? 0,
        paddingTop ?? 0,
        paddingRight,
        paddingBottom ?? 0,
      ]);

    if (bearing != null) {
      message.bearing = bearing;
    }
    if (tilt != null) {
      message.tilt = tilt;
    }

    message.freeze();
    final Uint8List data = await _channel.invokeMethod('map#getCameraForLatLngBounds', latLngBounds.data);
    if (data == null) {
      return null;
    }

    return CameraPosition.fromProtoData(data);
  }

  Future<List<int>> get padding => _channel.invokeListMethod<int>('map#getPadding');

  Future<void> cancelAllVelocityAnimations() => _channel.invokeListMethod<int>('map#cancelAllVelocityAnimations');

  Future<Uint8List> snapshot() => _channel.invokeListMethod<int>('map#snapshot');

  void dispose() => sub.cancel();

  void _cameraPositionChanged(MethodCall event) => _cameraPosition = CameraPosition.fromProtoData(event.arguments);
}
