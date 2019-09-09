// GENERATED CODE - DO NOT MODIFY BY HAND

part of map_options;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MapOptions> _$mapOptionsSerializer = new _$MapOptionsSerializer();

class _$MapOptionsSerializer implements StructuredSerializer<MapOptions> {
  @override
  final Iterable<Type> types = const [MapOptions, _$MapOptions];
  @override
  final String wireName = 'MapOptions';

  @override
  Iterable<Object> serialize(Serializers serializers, MapOptions object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'crossSourceCollisions',
      serializers.serialize(object.crossSourceCollisions,
          specifiedType: const FullType(bool)),
      'cameraPosition',
      serializers.serialize(object.cameraPosition,
          specifiedType: const FullType(CameraPosition)),
      'maxZoom',
      serializers.serialize(object.maxZoom,
          specifiedType: const FullType(double)),
      'minZoom',
      serializers.serialize(object.minZoom,
          specifiedType: const FullType(double)),
      'zoomGestures',
      serializers.serialize(object.zoomGestures,
          specifiedType: const FullType(bool)),
      'scrollGestures',
      serializers.serialize(object.scrollGestures,
          specifiedType: const FullType(bool)),
      'rotateGestures',
      serializers.serialize(object.rotateGestures,
          specifiedType: const FullType(bool)),
      'tiltGestures',
      serializers.serialize(object.tiltGestures,
          specifiedType: const FullType(bool)),
      'doubleTapGestures',
      serializers.serialize(object.doubleTapGestures,
          specifiedType: const FullType(bool)),
      'quickZoomGestures',
      serializers.serialize(object.quickZoomGestures,
          specifiedType: const FullType(bool)),
      'compass',
      serializers.serialize(object.compass,
          specifiedType: const FullType(bool)),
      'compassPosition',
      serializers.serialize(object.compassPosition,
          specifiedType: const FullType(OrnamentPosition)),
      'compassMargin',
      serializers.serialize(object.compassMargin,
          specifiedType:
              const FullType(BuiltList, const [const FullType(int)])),
      'compassFadeFacingNorth',
      serializers.serialize(object.compassFadeFacingNorth,
          specifiedType: const FullType(bool)),
      'logo',
      serializers.serialize(object.logo, specifiedType: const FullType(bool)),
      'logoPosition',
      serializers.serialize(object.logoPosition,
          specifiedType: const FullType(OrnamentPosition)),
      'logoMargin',
      serializers.serialize(object.logoMargin,
          specifiedType:
              const FullType(BuiltList, const [const FullType(int)])),
      'attribution',
      serializers.serialize(object.attribution,
          specifiedType: const FullType(bool)),
      'attributionPosition',
      serializers.serialize(object.attributionPosition,
          specifiedType: const FullType(OrnamentPosition)),
      'attributionMargin',
      serializers.serialize(object.attributionMargin,
          specifiedType:
              const FullType(BuiltList, const [const FullType(int)])),
      'renderTextureMode',
      serializers.serialize(object.renderTextureMode,
          specifiedType: const FullType(bool)),
      'renderTextureTranslucentSurface',
      serializers.serialize(object.renderTextureTranslucentSurface,
          specifiedType: const FullType(bool)),
      'enableTilePrefetch',
      serializers.serialize(object.enableTilePrefetch,
          specifiedType: const FullType(bool)),
      'enableZMediaOverlay',
      serializers.serialize(object.enableZMediaOverlay,
          specifiedType: const FullType(bool)),
      'pixelRatio',
      serializers.serialize(object.pixelRatio,
          specifiedType: const FullType(double)),
      'foregroundLoadColor',
      serializers.serialize(object.foregroundLoadColor,
          specifiedType: const FullType(int)),
    ];
    if (object.apiBaseUri != null) {
      result
        ..add('apiBaseUri')
        ..add(serializers.serialize(object.apiBaseUri,
            specifiedType: const FullType(String)));
    }
    if (object.styleFromMapbox != null) {
      result
        ..add('styleFromMapbox')
        ..add(serializers.serialize(object.styleFromMapbox,
            specifiedType: const FullType(MapStyle)));
    }
    if (object.styleFromUri != null) {
      result
        ..add('styleFromUri')
        ..add(serializers.serialize(object.styleFromUri,
            specifiedType: const FullType(String)));
    }
    if (object.styleFromJson != null) {
      result
        ..add('styleFromJson')
        ..add(serializers.serialize(object.styleFromJson,
            specifiedType: const FullType(String)));
    }
    if (object.styleFromAsset != null) {
      result
        ..add('styleFromAsset')
        ..add(serializers.serialize(object.styleFromAsset,
            specifiedType: const FullType(String)));
    }
    if (object.localIdeographFontFamily != null) {
      result
        ..add('localIdeographFontFamily')
        ..add(serializers.serialize(object.localIdeographFontFamily,
            specifiedType: const FullType(String)));
    }
    if (object.attributionTintColor != null) {
      result
        ..add('attributionTintColor')
        ..add(serializers.serialize(object.attributionTintColor,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  MapOptions deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MapOptionsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'apiBaseUri':
          result.apiBaseUri = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'styleFromMapbox':
          result.styleFromMapbox = serializers.deserialize(value,
              specifiedType: const FullType(MapStyle)) as MapStyle;
          break;
        case 'styleFromUri':
          result.styleFromUri = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'styleFromJson':
          result.styleFromJson = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'styleFromAsset':
          result.styleFromAsset = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'localIdeographFontFamily':
          result.localIdeographFontFamily = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'crossSourceCollisions':
          result.crossSourceCollisions = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'cameraPosition':
          result.cameraPosition.replace(serializers.deserialize(value,
              specifiedType: const FullType(CameraPosition)) as CameraPosition);
          break;
        case 'maxZoom':
          result.maxZoom = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'minZoom':
          result.minZoom = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'zoomGestures':
          result.zoomGestures = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'scrollGestures':
          result.scrollGestures = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'rotateGestures':
          result.rotateGestures = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'tiltGestures':
          result.tiltGestures = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'doubleTapGestures':
          result.doubleTapGestures = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'quickZoomGestures':
          result.quickZoomGestures = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'compass':
          result.compass = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'compassPosition':
          result.compassPosition = serializers.deserialize(value,
                  specifiedType: const FullType(OrnamentPosition))
              as OrnamentPosition;
          break;
        case 'compassMargin':
          result.compassMargin.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))
              as BuiltList<dynamic>);
          break;
        case 'compassFadeFacingNorth':
          result.compassFadeFacingNorth = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'logo':
          result.logo = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'logoPosition':
          result.logoPosition = serializers.deserialize(value,
                  specifiedType: const FullType(OrnamentPosition))
              as OrnamentPosition;
          break;
        case 'logoMargin':
          result.logoMargin.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))
              as BuiltList<dynamic>);
          break;
        case 'attribution':
          result.attribution = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'attributionPosition':
          result.attributionPosition = serializers.deserialize(value,
                  specifiedType: const FullType(OrnamentPosition))
              as OrnamentPosition;
          break;
        case 'attributionMargin':
          result.attributionMargin.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))
              as BuiltList<dynamic>);
          break;
        case 'attributionTintColor':
          result.attributionTintColor = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'renderTextureMode':
          result.renderTextureMode = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'renderTextureTranslucentSurface':
          result.renderTextureTranslucentSurface = serializers
              .deserialize(value, specifiedType: const FullType(bool)) as bool;
          break;
        case 'enableTilePrefetch':
          result.enableTilePrefetch = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'enableZMediaOverlay':
          result.enableZMediaOverlay = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'pixelRatio':
          result.pixelRatio = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'foregroundLoadColor':
          result.foregroundLoadColor = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$MapOptions extends MapOptions {
  @override
  final String apiBaseUri;
  @override
  final MapStyle styleFromMapbox;
  @override
  final String styleFromUri;
  @override
  final String styleFromJson;
  @override
  final String styleFromAsset;
  @override
  final String localIdeographFontFamily;
  @override
  final bool crossSourceCollisions;
  @override
  final CameraPosition cameraPosition;
  @override
  final double maxZoom;
  @override
  final double minZoom;
  @override
  final bool zoomGestures;
  @override
  final bool scrollGestures;
  @override
  final bool rotateGestures;
  @override
  final bool tiltGestures;
  @override
  final bool doubleTapGestures;
  @override
  final bool quickZoomGestures;
  @override
  final bool compass;
  @override
  final OrnamentPosition compassPosition;
  @override
  final BuiltList<int> compassMargin;
  @override
  final bool compassFadeFacingNorth;
  @override
  final bool logo;
  @override
  final OrnamentPosition logoPosition;
  @override
  final BuiltList<int> logoMargin;
  @override
  final bool attribution;
  @override
  final OrnamentPosition attributionPosition;
  @override
  final BuiltList<int> attributionMargin;
  @override
  final int attributionTintColor;
  @override
  final bool renderTextureMode;
  @override
  final bool renderTextureTranslucentSurface;
  @override
  final bool enableTilePrefetch;
  @override
  final bool enableZMediaOverlay;
  @override
  final double pixelRatio;
  @override
  final int foregroundLoadColor;
  Uint8List __data;

  factory _$MapOptions([void Function(MapOptionsBuilder) updates]) =>
      (new MapOptionsBuilder()..update(updates)).build();

  _$MapOptions._(
      {this.apiBaseUri,
      this.styleFromMapbox,
      this.styleFromUri,
      this.styleFromJson,
      this.styleFromAsset,
      this.localIdeographFontFamily,
      this.crossSourceCollisions,
      this.cameraPosition,
      this.maxZoom,
      this.minZoom,
      this.zoomGestures,
      this.scrollGestures,
      this.rotateGestures,
      this.tiltGestures,
      this.doubleTapGestures,
      this.quickZoomGestures,
      this.compass,
      this.compassPosition,
      this.compassMargin,
      this.compassFadeFacingNorth,
      this.logo,
      this.logoPosition,
      this.logoMargin,
      this.attribution,
      this.attributionPosition,
      this.attributionMargin,
      this.attributionTintColor,
      this.renderTextureMode,
      this.renderTextureTranslucentSurface,
      this.enableTilePrefetch,
      this.enableZMediaOverlay,
      this.pixelRatio,
      this.foregroundLoadColor})
      : super._() {
    if (crossSourceCollisions == null) {
      throw new BuiltValueNullFieldError('MapOptions', 'crossSourceCollisions');
    }
    if (cameraPosition == null) {
      throw new BuiltValueNullFieldError('MapOptions', 'cameraPosition');
    }
    if (maxZoom == null) {
      throw new BuiltValueNullFieldError('MapOptions', 'maxZoom');
    }
    if (minZoom == null) {
      throw new BuiltValueNullFieldError('MapOptions', 'minZoom');
    }
    if (zoomGestures == null) {
      throw new BuiltValueNullFieldError('MapOptions', 'zoomGestures');
    }
    if (scrollGestures == null) {
      throw new BuiltValueNullFieldError('MapOptions', 'scrollGestures');
    }
    if (rotateGestures == null) {
      throw new BuiltValueNullFieldError('MapOptions', 'rotateGestures');
    }
    if (tiltGestures == null) {
      throw new BuiltValueNullFieldError('MapOptions', 'tiltGestures');
    }
    if (doubleTapGestures == null) {
      throw new BuiltValueNullFieldError('MapOptions', 'doubleTapGestures');
    }
    if (quickZoomGestures == null) {
      throw new BuiltValueNullFieldError('MapOptions', 'quickZoomGestures');
    }
    if (compass == null) {
      throw new BuiltValueNullFieldError('MapOptions', 'compass');
    }
    if (compassPosition == null) {
      throw new BuiltValueNullFieldError('MapOptions', 'compassPosition');
    }
    if (compassMargin == null) {
      throw new BuiltValueNullFieldError('MapOptions', 'compassMargin');
    }
    if (compassFadeFacingNorth == null) {
      throw new BuiltValueNullFieldError(
          'MapOptions', 'compassFadeFacingNorth');
    }
    if (logo == null) {
      throw new BuiltValueNullFieldError('MapOptions', 'logo');
    }
    if (logoPosition == null) {
      throw new BuiltValueNullFieldError('MapOptions', 'logoPosition');
    }
    if (logoMargin == null) {
      throw new BuiltValueNullFieldError('MapOptions', 'logoMargin');
    }
    if (attribution == null) {
      throw new BuiltValueNullFieldError('MapOptions', 'attribution');
    }
    if (attributionPosition == null) {
      throw new BuiltValueNullFieldError('MapOptions', 'attributionPosition');
    }
    if (attributionMargin == null) {
      throw new BuiltValueNullFieldError('MapOptions', 'attributionMargin');
    }
    if (renderTextureMode == null) {
      throw new BuiltValueNullFieldError('MapOptions', 'renderTextureMode');
    }
    if (renderTextureTranslucentSurface == null) {
      throw new BuiltValueNullFieldError(
          'MapOptions', 'renderTextureTranslucentSurface');
    }
    if (enableTilePrefetch == null) {
      throw new BuiltValueNullFieldError('MapOptions', 'enableTilePrefetch');
    }
    if (enableZMediaOverlay == null) {
      throw new BuiltValueNullFieldError('MapOptions', 'enableZMediaOverlay');
    }
    if (pixelRatio == null) {
      throw new BuiltValueNullFieldError('MapOptions', 'pixelRatio');
    }
    if (foregroundLoadColor == null) {
      throw new BuiltValueNullFieldError('MapOptions', 'foregroundLoadColor');
    }
  }

  @override
  Uint8List get data => __data ??= super.data;

  @override
  MapOptions rebuild(void Function(MapOptionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MapOptionsBuilder toBuilder() => new MapOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MapOptions &&
        apiBaseUri == other.apiBaseUri &&
        styleFromMapbox == other.styleFromMapbox &&
        styleFromUri == other.styleFromUri &&
        styleFromJson == other.styleFromJson &&
        styleFromAsset == other.styleFromAsset &&
        localIdeographFontFamily == other.localIdeographFontFamily &&
        crossSourceCollisions == other.crossSourceCollisions &&
        cameraPosition == other.cameraPosition &&
        maxZoom == other.maxZoom &&
        minZoom == other.minZoom &&
        zoomGestures == other.zoomGestures &&
        scrollGestures == other.scrollGestures &&
        rotateGestures == other.rotateGestures &&
        tiltGestures == other.tiltGestures &&
        doubleTapGestures == other.doubleTapGestures &&
        quickZoomGestures == other.quickZoomGestures &&
        compass == other.compass &&
        compassPosition == other.compassPosition &&
        compassMargin == other.compassMargin &&
        compassFadeFacingNorth == other.compassFadeFacingNorth &&
        logo == other.logo &&
        logoPosition == other.logoPosition &&
        logoMargin == other.logoMargin &&
        attribution == other.attribution &&
        attributionPosition == other.attributionPosition &&
        attributionMargin == other.attributionMargin &&
        attributionTintColor == other.attributionTintColor &&
        renderTextureMode == other.renderTextureMode &&
        renderTextureTranslucentSurface ==
            other.renderTextureTranslucentSurface &&
        enableTilePrefetch == other.enableTilePrefetch &&
        enableZMediaOverlay == other.enableZMediaOverlay &&
        pixelRatio == other.pixelRatio &&
        foregroundLoadColor == other.foregroundLoadColor;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, apiBaseUri.hashCode), styleFromMapbox.hashCode), styleFromUri.hashCode), styleFromJson.hashCode), styleFromAsset.hashCode), localIdeographFontFamily.hashCode), crossSourceCollisions.hashCode), cameraPosition.hashCode), maxZoom.hashCode), minZoom.hashCode), zoomGestures.hashCode), scrollGestures.hashCode), rotateGestures.hashCode), tiltGestures.hashCode),
                                                                                doubleTapGestures.hashCode),
                                                                            quickZoomGestures.hashCode),
                                                                        compass.hashCode),
                                                                    compassPosition.hashCode),
                                                                compassMargin.hashCode),
                                                            compassFadeFacingNorth.hashCode),
                                                        logo.hashCode),
                                                    logoPosition.hashCode),
                                                logoMargin.hashCode),
                                            attribution.hashCode),
                                        attributionPosition.hashCode),
                                    attributionMargin.hashCode),
                                attributionTintColor.hashCode),
                            renderTextureMode.hashCode),
                        renderTextureTranslucentSurface.hashCode),
                    enableTilePrefetch.hashCode),
                enableZMediaOverlay.hashCode),
            pixelRatio.hashCode),
        foregroundLoadColor.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MapOptions')
          ..add('apiBaseUri', apiBaseUri)
          ..add('styleFromMapbox', styleFromMapbox)
          ..add('styleFromUri', styleFromUri)
          ..add('styleFromJson', styleFromJson)
          ..add('styleFromAsset', styleFromAsset)
          ..add('localIdeographFontFamily', localIdeographFontFamily)
          ..add('crossSourceCollisions', crossSourceCollisions)
          ..add('cameraPosition', cameraPosition)
          ..add('maxZoom', maxZoom)
          ..add('minZoom', minZoom)
          ..add('zoomGestures', zoomGestures)
          ..add('scrollGestures', scrollGestures)
          ..add('rotateGestures', rotateGestures)
          ..add('tiltGestures', tiltGestures)
          ..add('doubleTapGestures', doubleTapGestures)
          ..add('quickZoomGestures', quickZoomGestures)
          ..add('compass', compass)
          ..add('compassPosition', compassPosition)
          ..add('compassMargin', compassMargin)
          ..add('compassFadeFacingNorth', compassFadeFacingNorth)
          ..add('logo', logo)
          ..add('logoPosition', logoPosition)
          ..add('logoMargin', logoMargin)
          ..add('attribution', attribution)
          ..add('attributionPosition', attributionPosition)
          ..add('attributionMargin', attributionMargin)
          ..add('attributionTintColor', attributionTintColor)
          ..add('renderTextureMode', renderTextureMode)
          ..add('renderTextureTranslucentSurface',
              renderTextureTranslucentSurface)
          ..add('enableTilePrefetch', enableTilePrefetch)
          ..add('enableZMediaOverlay', enableZMediaOverlay)
          ..add('pixelRatio', pixelRatio)
          ..add('foregroundLoadColor', foregroundLoadColor))
        .toString();
  }
}

class MapOptionsBuilder implements Builder<MapOptions, MapOptionsBuilder> {
  _$MapOptions _$v;

  String _apiBaseUri;
  String get apiBaseUri => _$this._apiBaseUri;
  set apiBaseUri(String apiBaseUri) => _$this._apiBaseUri = apiBaseUri;

  MapStyle _styleFromMapbox;
  MapStyle get styleFromMapbox => _$this._styleFromMapbox;
  set styleFromMapbox(MapStyle styleFromMapbox) =>
      _$this._styleFromMapbox = styleFromMapbox;

  String _styleFromUri;
  String get styleFromUri => _$this._styleFromUri;
  set styleFromUri(String styleFromUri) => _$this._styleFromUri = styleFromUri;

  String _styleFromJson;
  String get styleFromJson => _$this._styleFromJson;
  set styleFromJson(String styleFromJson) =>
      _$this._styleFromJson = styleFromJson;

  String _styleFromAsset;
  String get styleFromAsset => _$this._styleFromAsset;
  set styleFromAsset(String styleFromAsset) =>
      _$this._styleFromAsset = styleFromAsset;

  String _localIdeographFontFamily;
  String get localIdeographFontFamily => _$this._localIdeographFontFamily;
  set localIdeographFontFamily(String localIdeographFontFamily) =>
      _$this._localIdeographFontFamily = localIdeographFontFamily;

  bool _crossSourceCollisions;
  bool get crossSourceCollisions => _$this._crossSourceCollisions;
  set crossSourceCollisions(bool crossSourceCollisions) =>
      _$this._crossSourceCollisions = crossSourceCollisions;

  CameraPositionBuilder _cameraPosition;
  CameraPositionBuilder get cameraPosition =>
      _$this._cameraPosition ??= new CameraPositionBuilder();
  set cameraPosition(CameraPositionBuilder cameraPosition) =>
      _$this._cameraPosition = cameraPosition;

  double _maxZoom;
  double get maxZoom => _$this._maxZoom;
  set maxZoom(double maxZoom) => _$this._maxZoom = maxZoom;

  double _minZoom;
  double get minZoom => _$this._minZoom;
  set minZoom(double minZoom) => _$this._minZoom = minZoom;

  bool _zoomGestures;
  bool get zoomGestures => _$this._zoomGestures;
  set zoomGestures(bool zoomGestures) => _$this._zoomGestures = zoomGestures;

  bool _scrollGestures;
  bool get scrollGestures => _$this._scrollGestures;
  set scrollGestures(bool scrollGestures) =>
      _$this._scrollGestures = scrollGestures;

  bool _rotateGestures;
  bool get rotateGestures => _$this._rotateGestures;
  set rotateGestures(bool rotateGestures) =>
      _$this._rotateGestures = rotateGestures;

  bool _tiltGestures;
  bool get tiltGestures => _$this._tiltGestures;
  set tiltGestures(bool tiltGestures) => _$this._tiltGestures = tiltGestures;

  bool _doubleTapGestures;
  bool get doubleTapGestures => _$this._doubleTapGestures;
  set doubleTapGestures(bool doubleTapGestures) =>
      _$this._doubleTapGestures = doubleTapGestures;

  bool _quickZoomGestures;
  bool get quickZoomGestures => _$this._quickZoomGestures;
  set quickZoomGestures(bool quickZoomGestures) =>
      _$this._quickZoomGestures = quickZoomGestures;

  bool _compass;
  bool get compass => _$this._compass;
  set compass(bool compass) => _$this._compass = compass;

  OrnamentPosition _compassPosition;
  OrnamentPosition get compassPosition => _$this._compassPosition;
  set compassPosition(OrnamentPosition compassPosition) =>
      _$this._compassPosition = compassPosition;

  ListBuilder<int> _compassMargin;
  ListBuilder<int> get compassMargin =>
      _$this._compassMargin ??= new ListBuilder<int>();
  set compassMargin(ListBuilder<int> compassMargin) =>
      _$this._compassMargin = compassMargin;

  bool _compassFadeFacingNorth;
  bool get compassFadeFacingNorth => _$this._compassFadeFacingNorth;
  set compassFadeFacingNorth(bool compassFadeFacingNorth) =>
      _$this._compassFadeFacingNorth = compassFadeFacingNorth;

  bool _logo;
  bool get logo => _$this._logo;
  set logo(bool logo) => _$this._logo = logo;

  OrnamentPosition _logoPosition;
  OrnamentPosition get logoPosition => _$this._logoPosition;
  set logoPosition(OrnamentPosition logoPosition) =>
      _$this._logoPosition = logoPosition;

  ListBuilder<int> _logoMargin;
  ListBuilder<int> get logoMargin =>
      _$this._logoMargin ??= new ListBuilder<int>();
  set logoMargin(ListBuilder<int> logoMargin) =>
      _$this._logoMargin = logoMargin;

  bool _attribution;
  bool get attribution => _$this._attribution;
  set attribution(bool attribution) => _$this._attribution = attribution;

  OrnamentPosition _attributionPosition;
  OrnamentPosition get attributionPosition => _$this._attributionPosition;
  set attributionPosition(OrnamentPosition attributionPosition) =>
      _$this._attributionPosition = attributionPosition;

  ListBuilder<int> _attributionMargin;
  ListBuilder<int> get attributionMargin =>
      _$this._attributionMargin ??= new ListBuilder<int>();
  set attributionMargin(ListBuilder<int> attributionMargin) =>
      _$this._attributionMargin = attributionMargin;

  int _attributionTintColor;
  int get attributionTintColor => _$this._attributionTintColor;
  set attributionTintColor(int attributionTintColor) =>
      _$this._attributionTintColor = attributionTintColor;

  bool _renderTextureMode;
  bool get renderTextureMode => _$this._renderTextureMode;
  set renderTextureMode(bool renderTextureMode) =>
      _$this._renderTextureMode = renderTextureMode;

  bool _renderTextureTranslucentSurface;
  bool get renderTextureTranslucentSurface =>
      _$this._renderTextureTranslucentSurface;
  set renderTextureTranslucentSurface(bool renderTextureTranslucentSurface) =>
      _$this._renderTextureTranslucentSurface = renderTextureTranslucentSurface;

  bool _enableTilePrefetch;
  bool get enableTilePrefetch => _$this._enableTilePrefetch;
  set enableTilePrefetch(bool enableTilePrefetch) =>
      _$this._enableTilePrefetch = enableTilePrefetch;

  bool _enableZMediaOverlay;
  bool get enableZMediaOverlay => _$this._enableZMediaOverlay;
  set enableZMediaOverlay(bool enableZMediaOverlay) =>
      _$this._enableZMediaOverlay = enableZMediaOverlay;

  double _pixelRatio;
  double get pixelRatio => _$this._pixelRatio;
  set pixelRatio(double pixelRatio) => _$this._pixelRatio = pixelRatio;

  int _foregroundLoadColor;
  int get foregroundLoadColor => _$this._foregroundLoadColor;
  set foregroundLoadColor(int foregroundLoadColor) =>
      _$this._foregroundLoadColor = foregroundLoadColor;

  MapOptionsBuilder();

  MapOptionsBuilder get _$this {
    if (_$v != null) {
      _apiBaseUri = _$v.apiBaseUri;
      _styleFromMapbox = _$v.styleFromMapbox;
      _styleFromUri = _$v.styleFromUri;
      _styleFromJson = _$v.styleFromJson;
      _styleFromAsset = _$v.styleFromAsset;
      _localIdeographFontFamily = _$v.localIdeographFontFamily;
      _crossSourceCollisions = _$v.crossSourceCollisions;
      _cameraPosition = _$v.cameraPosition?.toBuilder();
      _maxZoom = _$v.maxZoom;
      _minZoom = _$v.minZoom;
      _zoomGestures = _$v.zoomGestures;
      _scrollGestures = _$v.scrollGestures;
      _rotateGestures = _$v.rotateGestures;
      _tiltGestures = _$v.tiltGestures;
      _doubleTapGestures = _$v.doubleTapGestures;
      _quickZoomGestures = _$v.quickZoomGestures;
      _compass = _$v.compass;
      _compassPosition = _$v.compassPosition;
      _compassMargin = _$v.compassMargin?.toBuilder();
      _compassFadeFacingNorth = _$v.compassFadeFacingNorth;
      _logo = _$v.logo;
      _logoPosition = _$v.logoPosition;
      _logoMargin = _$v.logoMargin?.toBuilder();
      _attribution = _$v.attribution;
      _attributionPosition = _$v.attributionPosition;
      _attributionMargin = _$v.attributionMargin?.toBuilder();
      _attributionTintColor = _$v.attributionTintColor;
      _renderTextureMode = _$v.renderTextureMode;
      _renderTextureTranslucentSurface = _$v.renderTextureTranslucentSurface;
      _enableTilePrefetch = _$v.enableTilePrefetch;
      _enableZMediaOverlay = _$v.enableZMediaOverlay;
      _pixelRatio = _$v.pixelRatio;
      _foregroundLoadColor = _$v.foregroundLoadColor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MapOptions other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MapOptions;
  }

  @override
  void update(void Function(MapOptionsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MapOptions build() {
    _$MapOptions _$result;
    try {
      _$result = _$v ??
          new _$MapOptions._(
              apiBaseUri: apiBaseUri,
              styleFromMapbox: styleFromMapbox,
              styleFromUri: styleFromUri,
              styleFromJson: styleFromJson,
              styleFromAsset: styleFromAsset,
              localIdeographFontFamily: localIdeographFontFamily,
              crossSourceCollisions: crossSourceCollisions,
              cameraPosition: cameraPosition.build(),
              maxZoom: maxZoom,
              minZoom: minZoom,
              zoomGestures: zoomGestures,
              scrollGestures: scrollGestures,
              rotateGestures: rotateGestures,
              tiltGestures: tiltGestures,
              doubleTapGestures: doubleTapGestures,
              quickZoomGestures: quickZoomGestures,
              compass: compass,
              compassPosition: compassPosition,
              compassMargin: compassMargin.build(),
              compassFadeFacingNorth: compassFadeFacingNorth,
              logo: logo,
              logoPosition: logoPosition,
              logoMargin: logoMargin.build(),
              attribution: attribution,
              attributionPosition: attributionPosition,
              attributionMargin: attributionMargin.build(),
              attributionTintColor: attributionTintColor,
              renderTextureMode: renderTextureMode,
              renderTextureTranslucentSurface: renderTextureTranslucentSurface,
              enableTilePrefetch: enableTilePrefetch,
              enableZMediaOverlay: enableZMediaOverlay,
              pixelRatio: pixelRatio,
              foregroundLoadColor: foregroundLoadColor);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'cameraPosition';
        cameraPosition.build();

        _$failedField = 'compassMargin';
        compassMargin.build();

        _$failedField = 'logoMargin';
        logoMargin.build();

        _$failedField = 'attributionMargin';
        attributionMargin.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MapOptions', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
