// File created by
// Lung Razvan <long1eu>
// on 2019-08-07

part of layer;

// todo hot reload doesnt' work on Android
abstract class RasterLayer
    with _Channel
    implements Layer, Built<RasterLayer, RasterLayerBuilder> {
  factory RasterLayer({
    @required String id,
    @required String sourceId,
    String sourceLayer,
    bool visible = true,
    double minZoom = 0.0,
    double maxZoom = 24.0,
    double opacity = 1.0,
    Expression opacityEx,
    double hueRotate = 0.0,
    Expression hueRotateEx,
    double brightnessMin = 0.0,
    Expression brightnessMinEx,
    double brightnessMax = 1.0,
    Expression brightnessMaxEx,
    double saturation = 0.0,
    Expression saturationEx,
    double contrast = 0.0,
    Expression contrastEx,
    Resampling resampling = Resampling.linear,
    Expression resamplingEx,
    Duration fadeDuration = const Duration(milliseconds: 300),
    Expression fadeDurationEx,
    TransitionOptions opacityTransition,
    TransitionOptions hueRotateTransition,
    TransitionOptions brightnessMinTransition,
    TransitionOptions brightnessMaxTransition,
    TransitionOptions saturationTransition,
    TransitionOptions contrastTransition,
  }) {
    assert(id != null);
    assert(sourceId != null);
    assert(visible != null);
    assert(minZoom != null);
    assert(maxZoom != null);
    assert(opacity == null || opacity >= 0 && opacity <= 1);
    assert(brightnessMin == null || brightnessMin >= 0 && brightnessMin <= 1);
    assert(brightnessMax == null || brightnessMax >= 0 && brightnessMax <= 1);
    assert(saturation == null || saturation >= -1 && saturation <= 1);
    assert(contrast == null || contrast >= -1 && contrast <= 1);

    final TransitionOptions transitionOptions = TransitionOptions();
    return _$RasterLayer((RasterLayerBuilder b) {
      b
        ..id = id
        ..sourceId = sourceId
        ..visible = visible
        ..minZoom = minZoom
        ..maxZoom = maxZoom
        ..sourceLayer = sourceLayer
        ..opacity = opacityEx ?? opacity != null ? literalDouble(opacity) : null
        ..hueRotate =
            hueRotateEx ?? hueRotate != null ? literalDouble(hueRotate) : null
        ..brightnessMin = brightnessMinEx ?? brightnessMin != null
            ? literalDouble(brightnessMin)
            : null
        ..brightnessMax = brightnessMaxEx ?? brightnessMax != null
            ? literalDouble(brightnessMax)
            : null
        ..saturation = saturationEx ?? saturation != null
            ? literalDouble(saturation)
            : null
        ..contrast =
            contrastEx ?? contrast != null ? literalDouble(contrast) : null
        ..resampling = resamplingEx ?? resampling
        ..fadeDuration = fadeDurationEx ?? fadeDuration != null
            ? literalInt(fadeDuration.inMilliseconds)
            : null
        ..opacityTransition =
            (opacityTransition ?? transitionOptions).toBuilder()
        ..hueRotateTransition =
            (hueRotateTransition ?? transitionOptions).toBuilder()
        ..brightnessMinTransition =
            (brightnessMinTransition ?? transitionOptions).toBuilder()
        ..brightnessMaxTransition =
            (brightnessMaxTransition ?? transitionOptions).toBuilder()
        ..saturationTransition =
            (saturationTransition ?? transitionOptions).toBuilder()
        ..contrastTransition =
            (contrastTransition ?? transitionOptions).toBuilder();
    });
  }

  factory RasterLayer.fromProtoData(Uint8List data) {
    return RasterLayer.fromProto(pb.Layer_Raster.fromBuffer(data));
  }

  factory RasterLayer.fromProto(pb.Layer_Raster proto) {
    return _$RasterLayer((RasterLayerBuilder b) {
      b
        ..id = proto.id
        ..sourceId = proto.sourceId.value
        ..visible = proto.visible.value
        ..minZoom = proto.minZoom.value
        ..maxZoom = proto.maxZoom.value
        ..sourceLayer = proto.hasSourceLayer() ? proto.sourceLayer.value : null
        ..opacity = proto.hasOpacity()
            ? Expression.fromProtoString(proto.opacity)
            : null
        ..hueRotate = proto.hasHueRotate()
            ? Expression.fromProtoString(proto.hueRotate)
            : null
        ..brightnessMin = proto.hasBrightnessMin()
            ? Expression.fromProtoString(proto.brightnessMin)
            : null
        ..brightnessMax = proto.hasBrightnessMax()
            ? Expression.fromProtoString(proto.brightnessMax)
            : null
        ..saturation = proto.hasSaturation()
            ? Expression.fromProtoString(proto.saturation)
            : null
        ..contrast = proto.hasContrast()
            ? Expression.fromProtoString(proto.contrast)
            : null
        ..resampling = proto.hasResampling()
            ? Expression.fromProtoString(proto.resampling)
            : null
        ..fadeDuration = proto.hasFadeDuration()
            ? Expression.fromProtoString(proto.fadeDuration)
            : null
        ..opacityTransition =
            TransitionOptions.fromProto(proto.opacityTransition).toBuilder()
        ..hueRotateTransition =
            TransitionOptions.fromProto(proto.hueRotateTransition).toBuilder()
        ..brightnessMinTransition =
            TransitionOptions.fromProto(proto.brightnessMinTransition)
                .toBuilder()
        ..brightnessMaxTransition =
            TransitionOptions.fromProto(proto.brightnessMaxTransition)
                .toBuilder()
        ..saturationTransition =
            TransitionOptions.fromProto(proto.saturationTransition).toBuilder()
        ..contrastTransition =
            TransitionOptions.fromProto(proto.contrastTransition).toBuilder();
    });
  }

  RasterLayer._();

  String get sourceId;

  @nullable
  String get sourceLayer;

  /*double*/
  @nullable
  Expression get opacity;

  /*double*/
  @nullable
  Expression get hueRotate;

  /*double*/
  @nullable
  Expression get brightnessMin;

  /*double*/
  @nullable
  Expression get brightnessMax;

  /*double*/
  @nullable
  Expression get saturation;

  /*double*/
  @nullable
  Expression get contrast;

  /*Resampling*/
  @nullable
  Expression get resampling;

  /*Duration*/
  @nullable
  Expression get fadeDuration;

  TransitionOptions get opacityTransition;

  TransitionOptions get hueRotateTransition;

  TransitionOptions get brightnessMinTransition;

  TransitionOptions get brightnessMaxTransition;

  TransitionOptions get saturationTransition;

  TransitionOptions get contrastTransition;

  RasterLayer copyWith({
    String sourceLayer,
    bool visible,
    double minZoom,
    double maxZoom,
    double opacity,
    Expression opacityEx,
    double hueRotate,
    Expression hueRotateEx,
    double brightnessMin,
    Expression brightnessMinEx,
    double brightnessMax,
    Expression brightnessMaxEx,
    double saturation,
    Expression saturationEx,
    double contrast,
    Expression contrastEx,
    Resampling resampling,
    Expression resamplingEx,
    Duration fadeDuration,
    Expression fadeDurationEx,
    TransitionOptions opacityTransition,
    TransitionOptions hueRotateTransition,
    TransitionOptions brightnessMinTransition,
    TransitionOptions brightnessMaxTransition,
    TransitionOptions saturationTransition,
    TransitionOptions contrastTransition,
  }) {
    return rebuild((RasterLayerBuilder b) {
      return b
        ..visible = visible ?? this.visible
        ..minZoom = minZoom ?? this.minZoom
        ..maxZoom = maxZoom ?? this.maxZoom
        ..sourceLayer = sourceLayer ?? this.sourceLayer
        ..opacity =
            opacityEx ?? opacity != null ? literalDouble(opacity) : this.opacity
        ..hueRotate = hueRotateEx ?? hueRotate != null
            ? literalDouble(hueRotate)
            : this.hueRotate
        ..brightnessMin = brightnessMinEx ?? brightnessMin != null
            ? literalDouble(brightnessMin)
            : this.brightnessMin
        ..brightnessMax = brightnessMaxEx ?? brightnessMax != null
            ? literalDouble(brightnessMax)
            : this.brightnessMax
        ..saturation = saturationEx ?? saturation != null
            ? literalDouble(saturation)
            : this.saturation
        ..contrast = contrastEx ?? contrast != null
            ? literalDouble(contrast)
            : this.contrast
        ..resampling = resamplingEx ?? resampling ?? this.resampling
        ..fadeDuration = fadeDurationEx ?? fadeDuration != null
            ? literalInt(fadeDuration.inMilliseconds)
            : this.fadeDuration
        ..opacityTransition =
            (opacityTransition ?? this.opacityTransition).toBuilder()
        ..hueRotateTransition =
            (hueRotateTransition ?? this.hueRotateTransition).toBuilder()
        ..brightnessMinTransition =
            (brightnessMinTransition ?? this.brightnessMinTransition)
                .toBuilder()
        ..brightnessMaxTransition =
            (brightnessMaxTransition ?? this.brightnessMaxTransition)
                .toBuilder()
        ..saturationTransition =
            (saturationTransition ?? this.saturationTransition).toBuilder()
        ..contrastTransition =
            (contrastTransition ?? this.contrastTransition).toBuilder();
    });
  }

  @override
  RasterLayer markAsAttached(MethodChannel channel, [Layer layer]) {
    if (layer == null) {
      return rebuild((LayerBuilder b) => b.channel = channel);
    } else if (layer is RasterLayer) {
      return rebuild((RasterLayerBuilder b) {
        if (layer != null) {
          b
            ..channel = channel
            ..visible = layer.visible ?? visible
            ..minZoom = layer.minZoom ?? minZoom
            ..maxZoom = layer.maxZoom ?? maxZoom
            ..sourceLayer = layer.sourceLayer ?? sourceLayer
            ..opacity = layer.opacity ?? opacity
            ..hueRotate = layer.hueRotate ?? hueRotate
            ..brightnessMin = layer.brightnessMin ?? brightnessMin
            ..brightnessMax = layer.brightnessMax ?? brightnessMax
            ..saturation = layer.saturation ?? saturation
            ..contrast = layer.contrast ?? contrast
            ..resampling = layer.resampling ?? resampling
            ..fadeDuration = layer.fadeDuration ?? fadeDuration
            ..opacityTransition =
                (layer.opacityTransition ?? opacityTransition).toBuilder()
            ..hueRotateTransition =
                (layer.hueRotateTransition ?? hueRotateTransition).toBuilder()
            ..brightnessMinTransition =
                (layer.brightnessMinTransition ?? brightnessMinTransition)
                    .toBuilder()
            ..brightnessMaxTransition =
                (layer.brightnessMaxTransition ?? brightnessMaxTransition)
                    .toBuilder()
            ..saturationTransition =
                (layer.saturationTransition ?? saturationTransition).toBuilder()
            ..contrastTransition =
                (layer.contrastTransition ?? contrastTransition).toBuilder();
        }
      });
    } else {
      throw ArgumentError(
          'Only a RasterLayer can be merged but got ${layer.runtimeType}');
    }
  }

  @override
  Future<RasterLayer> copyFrom(Layer layer) {
    if (layer is RasterLayer) {
      final RasterLayer _layer = rebuild((RasterLayerBuilder b) {
        b
          ..visible = layer.visible ?? visible
          ..minZoom = layer.minZoom ?? minZoom
          ..maxZoom = layer.maxZoom ?? maxZoom
          ..sourceLayer = layer.sourceLayer ?? sourceLayer
          ..opacity = layer.opacity ?? opacity
          ..hueRotate = layer.hueRotate ?? hueRotate
          ..brightnessMin = layer.brightnessMin ?? brightnessMin
          ..brightnessMax = layer.brightnessMax ?? brightnessMax
          ..saturation = layer.saturation ?? saturation
          ..contrast = layer.contrast ?? contrast
          ..resampling = layer.resampling ?? resampling
          ..fadeDuration = layer.fadeDuration ?? fadeDuration
          ..opacityTransition =
              (layer.opacityTransition ?? opacityTransition).toBuilder()
          ..hueRotateTransition =
              (layer.hueRotateTransition ?? hueRotateTransition).toBuilder()
          ..brightnessMinTransition =
              (layer.brightnessMinTransition ?? brightnessMinTransition)
                  .toBuilder()
          ..brightnessMaxTransition =
              (layer.brightnessMaxTransition ?? brightnessMaxTransition)
                  .toBuilder()
          ..saturationTransition =
              (layer.saturationTransition ?? saturationTransition).toBuilder()
          ..contrastTransition =
              (layer.contrastTransition ?? contrastTransition).toBuilder();
      });
      if (!isAttached || this == _layer) {
        return Future<RasterLayer>.value(_layer);
      } else {
        return _update(_layer);
      }
    } else {
      throw ArgumentError(
          'Only a RasterLayer can be merged but got ${layer.runtimeType}');
    }
  }

  @override
  pb.Layer_Raster get proto {
    final pb.Layer_Raster message = pb.Layer_Raster.create()
      ..id = this.id
      ..sourceId = string_(sourceId)
      ..visible = bool_(visible)
      ..minZoom = float_(minZoom)
      ..maxZoom = float_(maxZoom)
      ..opacityTransition = opacityTransition.proto
      ..hueRotateTransition = hueRotateTransition.proto
      ..brightnessMinTransition = brightnessMinTransition.proto
      ..brightnessMaxTransition = brightnessMaxTransition.proto
      ..saturationTransition = saturationTransition.proto
      ..contrastTransition = contrastTransition.proto;

    if (sourceLayer != null) {
      message.sourceLayer = string_(sourceLayer);
    }
    if (opacity != null) {
      message.opacity = opacity.protoString;
    }
    if (hueRotate != null) {
      message.hueRotate = hueRotate.protoString;
    }
    if (brightnessMin != null) {
      message.brightnessMin = brightnessMin.protoString;
    }
    if (brightnessMax != null) {
      message.brightnessMax = brightnessMax.protoString;
    }
    if (saturation != null) {
      message.saturation = saturation.protoString;
    }
    if (contrast != null) {
      message.contrast = contrast.protoString;
    }
    if (resampling != null) {
      message.resampling = resampling.protoString;
    }
    if (fadeDuration != null) {
      message.fadeDuration = fadeDuration.protoString;
    }

    return message..freeze();
  }

  @override
  pb.Layer get source {
    return pb.Layer.create()
      ..id = this.id
      ..rasterLayer = proto
      ..freeze();
  }

  static Serializer<RasterLayer> get serializer => _$rasterLayerSerializer;
}
