// File created by
// Lung Razvan <long1eu>
// on 2019-08-07

part of flutter_mapbox_gl;

abstract class BackgroundLayer
    with _LayerChannel
    implements Layer, Built<BackgroundLayer, BackgroundLayerBuilder> {
  factory BackgroundLayer({
    @required String id,
    bool visible = true,
    double minZoom = 0.0,
    double maxZoom = 24.0,
    Color color = const Color(0xFF000000),
    Expression colorEx,
    String pattern,
    Expression patternEx,
    double opacity = 1.0,
    Expression opacityEx,
    TransitionOptions colorTransition,
    TransitionOptions patternTransition,
    TransitionOptions opacityTransition,
  }) {
    assert(id != null);
    assert(visible != null);
    assert(minZoom != null);
    assert(maxZoom != null);
    assert(opacity == null || opacity >= 0 && opacity <= 1);

    final TransitionOptions transitionOptions = TransitionOptions();
    return _$BackgroundLayer((BackgroundLayerBuilder b) {
      b
        ..id = id
        ..visible = visible
        ..minZoom = minZoom
        ..maxZoom = maxZoom
        ..color = colorEx ??
            (color != null ? rgb(color.red, color.green, color.blue) : null)
        ..pattern =
            patternEx ?? (pattern != null ? literalString(pattern) : null)
        ..opacity =
            opacityEx ?? (opacity != null ? literalDouble(opacity) : null)
        ..colorTransition = (colorTransition ?? transitionOptions).toBuilder()
        ..patternTransition =
            (patternTransition ?? transitionOptions).toBuilder()
        ..opacityTransition =
            (opacityTransition ?? transitionOptions).toBuilder();
    });
  }

  factory BackgroundLayer.fromProtoData(Uint8List data) {
    return BackgroundLayer.fromProto(pb.Layer_Background.fromBuffer(data));
  }

  factory BackgroundLayer.fromProto(pb.Layer_Background proto) {
    return _$BackgroundLayer((BackgroundLayerBuilder b) {
      b
        ..id = proto.id
        ..visible = proto.visible.value
        ..minZoom = proto.minZoom.value
        ..maxZoom = proto.maxZoom.value
        ..color =
            proto.hasColor() ? Expression.fromProtoString(proto.color) : null
        ..pattern = proto.hasPattern()
            ? Expression.fromProtoString(proto.pattern)
            : null
        ..opacity = proto.hasOpacity()
            ? Expression.fromProtoString(proto.opacity)
            : null
        ..colorTransition =
            TransitionOptions.fromProto(proto.colorTransition).toBuilder()
        ..patternTransition =
            TransitionOptions.fromProto(proto.patternTransition).toBuilder()
        ..opacityTransition =
            TransitionOptions.fromProto(proto.opacityTransition).toBuilder();
    });
  }

  BackgroundLayer._();

  /*Color*/
  @nullable
  Expression get color;

  /*String*/
  @nullable
  Expression get pattern;

  /*double*/
  @nullable
  Expression get opacity;

  TransitionOptions get colorTransition;

  TransitionOptions get patternTransition;

  TransitionOptions get opacityTransition;

  BackgroundLayer copyWith({
    bool visible,
    double minZoom,
    double maxZoom,
    Color color,
    Expression colorEx,
    String pattern,
    Expression patternEx,
    double opacity,
    Expression opacityEx,
    TransitionOptions colorTransition,
    TransitionOptions patternTransition,
    TransitionOptions opacityTransition,
  }) {
    return rebuild((BackgroundLayerBuilder b) {
      return b
        ..channel = null
        ..visible = visible ?? this.visible
        ..minZoom = minZoom ?? this.minZoom
        ..maxZoom = maxZoom ?? this.maxZoom
        ..color = colorEx ??
            (color != null
                ? rgb(color.red, color.green, color.blue)
                : this.color)
        ..pattern = patternEx ??
            (pattern != null ? literalString(pattern) : this.pattern)
        ..opacity = opacityEx ??
            (opacity != null ? literalDouble(opacity) : this.opacity)
        ..colorTransition =
            (colorTransition ?? this.colorTransition).toBuilder()
        ..patternTransition =
            (patternTransition ?? this.patternTransition).toBuilder()
        ..opacityTransition =
            (opacityTransition ?? this.opacityTransition).toBuilder();
    });
  }

  @override
  BackgroundLayer _markAsAttached(ChannelWrapper channel, [Layer layer]) {
    if (layer == null) {
      return rebuild((LayerBuilder b) => b.channel = channel);
    } else if (layer is BackgroundLayer) {
      return rebuild((BackgroundLayerBuilder b) {
        b
          ..channel = channel
          ..visible = layer.visible ?? visible
          ..minZoom = layer.minZoom ?? minZoom
          ..maxZoom = layer.maxZoom ?? maxZoom
          ..color = layer.color ?? color
          ..pattern = layer.pattern ?? pattern
          ..opacity = layer.opacity ?? opacity
          ..colorTransition =
              (layer.colorTransition ?? colorTransition).toBuilder()
          ..patternTransition =
              (layer.patternTransition ?? patternTransition).toBuilder()
          ..opacityTransition =
              (layer.opacityTransition ?? opacityTransition).toBuilder();
      });
    } else {
      throw ArgumentError(
          'Only a BackgroundLayer can be merged but got ${layer.runtimeType}');
    }
  }

  @override
  Future<BackgroundLayer> _updateFrom(Layer layer) {
    if (layer is BackgroundLayer) {
      final BackgroundLayer _layer = rebuild((BackgroundLayerBuilder b) {
        b
          ..visible = layer.visible ?? visible
          ..minZoom = layer.minZoom ?? minZoom
          ..maxZoom = layer.maxZoom ?? maxZoom
          ..color = layer.color ?? color
          ..pattern = layer.pattern ?? pattern
          ..opacity = layer.opacity ?? opacity
          ..colorTransition =
              (layer.colorTransition ?? colorTransition).toBuilder()
          ..patternTransition =
              (layer.patternTransition ?? patternTransition).toBuilder()
          ..opacityTransition =
              (layer.opacityTransition ?? opacityTransition).toBuilder();
      });
      if (!isAttached || this == _layer) {
        return Future<BackgroundLayer>.value(_layer);
      } else {
        return _performUpdate(_layer);
      }
    } else {
      throw ArgumentError(
          'Only a BackgroundLayer can be merged but got ${layer.runtimeType}');
    }
  }

  @override
  pb.Layer_Background get _proto {
    final pb.Layer_Background message = pb.Layer_Background()
      ..id = id
      ..visible = bool_(visible)
      ..minZoom = float_(minZoom)
      ..maxZoom = float_(maxZoom)
      ..colorTransition = colorTransition.proto
      ..patternTransition = patternTransition.proto
      ..opacityTransition = opacityTransition.proto;

    if (color != null) {
      message.color = color.protoString;
    }
    if (pattern != null) {
      message.pattern = pattern.protoString;
    }
    if (opacity != null) {
      message.opacity = opacity.protoString;
    }

    return message.freeze();
  }

  @override
  pb.Layer get _source {
    return pb.Layer.create()
      ..id = id
      ..backgroundLayer = _proto
      ..freeze();
  }

  static Serializer<BackgroundLayer> get serializer =>
      _$backgroundLayerSerializer;
}
