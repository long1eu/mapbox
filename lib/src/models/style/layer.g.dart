// GENERATED CODE - DO NOT MODIFY BY HAND

part of layer;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BackgroundLayerModel> _$backgroundLayerModelSerializer =
    new _$BackgroundLayerModelSerializer();
Serializer<CircleLayerModel> _$circleLayerModelSerializer =
    new _$CircleLayerModelSerializer();
Serializer<FillExtrusionLayerModel> _$fillExtrusionLayerModelSerializer =
    new _$FillExtrusionLayerModelSerializer();
Serializer<FillLayerModel> _$fillLayerModelSerializer =
    new _$FillLayerModelSerializer();
Serializer<HeatmapLayerModel> _$heatmapLayerModelSerializer =
    new _$HeatmapLayerModelSerializer();
Serializer<HillshadeLayerModel> _$hillshadeLayerModelSerializer =
    new _$HillshadeLayerModelSerializer();
Serializer<LineLayerModel> _$lineLayerModelSerializer =
    new _$LineLayerModelSerializer();
Serializer<SymbolLayerModel> _$symbolLayerModelSerializer =
    new _$SymbolLayerModelSerializer();

class _$BackgroundLayerModelSerializer
    implements StructuredSerializer<BackgroundLayerModel> {
  @override
  final Iterable<Type> types = const [
    BackgroundLayerModel,
    _$BackgroundLayerModel
  ];
  @override
  final String wireName = 'BackgroundLayerModel';

  @override
  Iterable<Object> serialize(
      Serializers serializers, BackgroundLayerModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'color',
      serializers.serialize(object.color, specifiedType: const FullType(int)),
      'colorTransition',
      serializers.serialize(object.colorTransition,
          specifiedType: const FullType(TransitionOptions)),
      'patternTransition',
      serializers.serialize(object.patternTransition,
          specifiedType: const FullType(TransitionOptions)),
      'opacityTransition',
      serializers.serialize(object.opacityTransition,
          specifiedType: const FullType(TransitionOptions)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'visible',
      serializers.serialize(object.visible,
          specifiedType: const FullType(bool)),
      'minZoom',
      serializers.serialize(object.minZoom,
          specifiedType: const FullType(double)),
      'maxZoom',
      serializers.serialize(object.maxZoom,
          specifiedType: const FullType(double)),
    ];
    if (object.pattern != null) {
      result
        ..add('pattern')
        ..add(serializers.serialize(object.pattern,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  BackgroundLayerModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BackgroundLayerModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'color':
          result.color = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'pattern':
          result.pattern = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'colorTransition':
          result.colorTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'patternTransition':
          result.patternTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'opacityTransition':
          result.opacityTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'visible':
          result.visible = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'minZoom':
          result.minZoom = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'maxZoom':
          result.maxZoom = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$CircleLayerModelSerializer
    implements StructuredSerializer<CircleLayerModel> {
  @override
  final Iterable<Type> types = const [CircleLayerModel, _$CircleLayerModel];
  @override
  final String wireName = 'CircleLayerModel';

  @override
  Iterable<Object> serialize(Serializers serializers, CircleLayerModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'sourceId',
      serializers.serialize(object.sourceId,
          specifiedType: const FullType(String)),
      'radius',
      serializers.serialize(object.radius,
          specifiedType: const FullType(double)),
      'color',
      serializers.serialize(object.color, specifiedType: const FullType(int)),
      'blur',
      serializers.serialize(object.blur, specifiedType: const FullType(double)),
      'translate',
      serializers.serialize(object.translate,
          specifiedType:
              const FullType(BuiltList, const [const FullType(double)])),
      'translateAnchor',
      serializers.serialize(object.translateAnchor,
          specifiedType: const FullType(TranslateAnchor)),
      'pitchScale',
      serializers.serialize(object.pitchScale,
          specifiedType: const FullType(TranslateAnchor)),
      'pitchAlignment',
      serializers.serialize(object.pitchAlignment,
          specifiedType: const FullType(TranslateAnchor)),
      'strokeWidth',
      serializers.serialize(object.strokeWidth,
          specifiedType: const FullType(double)),
      'strokeColor',
      serializers.serialize(object.strokeColor,
          specifiedType: const FullType(int)),
      'radiusTransition',
      serializers.serialize(object.radiusTransition,
          specifiedType: const FullType(TransitionOptions)),
      'colorTransition',
      serializers.serialize(object.colorTransition,
          specifiedType: const FullType(TransitionOptions)),
      'blurTransition',
      serializers.serialize(object.blurTransition,
          specifiedType: const FullType(TransitionOptions)),
      'opacityTransition',
      serializers.serialize(object.opacityTransition,
          specifiedType: const FullType(TransitionOptions)),
      'translateTransition',
      serializers.serialize(object.translateTransition,
          specifiedType: const FullType(TransitionOptions)),
      'strokeWidthTransition',
      serializers.serialize(object.strokeWidthTransition,
          specifiedType: const FullType(TransitionOptions)),
      'strokeColorTransition',
      serializers.serialize(object.strokeColorTransition,
          specifiedType: const FullType(TransitionOptions)),
      'strokeOpacityTransition',
      serializers.serialize(object.strokeOpacityTransition,
          specifiedType: const FullType(TransitionOptions)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'visible',
      serializers.serialize(object.visible,
          specifiedType: const FullType(bool)),
      'minZoom',
      serializers.serialize(object.minZoom,
          specifiedType: const FullType(double)),
      'maxZoom',
      serializers.serialize(object.maxZoom,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  CircleLayerModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CircleLayerModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'sourceId':
          result.sourceId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'radius':
          result.radius = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'color':
          result.color = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'blur':
          result.blur = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'translate':
          result.translate.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(double)]))
              as BuiltList<dynamic>);
          break;
        case 'translateAnchor':
          result.translateAnchor = serializers.deserialize(value,
                  specifiedType: const FullType(TranslateAnchor))
              as TranslateAnchor;
          break;
        case 'pitchScale':
          result.pitchScale = serializers.deserialize(value,
                  specifiedType: const FullType(TranslateAnchor))
              as TranslateAnchor;
          break;
        case 'pitchAlignment':
          result.pitchAlignment = serializers.deserialize(value,
                  specifiedType: const FullType(TranslateAnchor))
              as TranslateAnchor;
          break;
        case 'strokeWidth':
          result.strokeWidth = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'strokeColor':
          result.strokeColor = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'radiusTransition':
          result.radiusTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'colorTransition':
          result.colorTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'blurTransition':
          result.blurTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'opacityTransition':
          result.opacityTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'translateTransition':
          result.translateTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'strokeWidthTransition':
          result.strokeWidthTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'strokeColorTransition':
          result.strokeColorTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'strokeOpacityTransition':
          result.strokeOpacityTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'visible':
          result.visible = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'minZoom':
          result.minZoom = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'maxZoom':
          result.maxZoom = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$FillExtrusionLayerModelSerializer
    implements StructuredSerializer<FillExtrusionLayerModel> {
  @override
  final Iterable<Type> types = const [
    FillExtrusionLayerModel,
    _$FillExtrusionLayerModel
  ];
  @override
  final String wireName = 'FillExtrusionLayerModel';

  @override
  Iterable<Object> serialize(
      Serializers serializers, FillExtrusionLayerModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'sourceId',
      serializers.serialize(object.sourceId,
          specifiedType: const FullType(String)),
      'color',
      serializers.serialize(object.color, specifiedType: const FullType(int)),
      'translate',
      serializers.serialize(object.translate,
          specifiedType:
              const FullType(BuiltList, const [const FullType(double)])),
      'translateAnchor',
      serializers.serialize(object.translateAnchor,
          specifiedType: const FullType(TranslateAnchor)),
      'height',
      serializers.serialize(object.height,
          specifiedType: const FullType(double)),
      'base',
      serializers.serialize(object.base, specifiedType: const FullType(double)),
      'verticalGradient',
      serializers.serialize(object.verticalGradient,
          specifiedType: const FullType(bool)),
      'opacityTransition',
      serializers.serialize(object.opacityTransition,
          specifiedType: const FullType(TransitionOptions)),
      'colorTransition',
      serializers.serialize(object.colorTransition,
          specifiedType: const FullType(TransitionOptions)),
      'translateTransition',
      serializers.serialize(object.translateTransition,
          specifiedType: const FullType(TransitionOptions)),
      'patternTransition',
      serializers.serialize(object.patternTransition,
          specifiedType: const FullType(TransitionOptions)),
      'heightTransition',
      serializers.serialize(object.heightTransition,
          specifiedType: const FullType(TransitionOptions)),
      'baseTransition',
      serializers.serialize(object.baseTransition,
          specifiedType: const FullType(TransitionOptions)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'visible',
      serializers.serialize(object.visible,
          specifiedType: const FullType(bool)),
      'minZoom',
      serializers.serialize(object.minZoom,
          specifiedType: const FullType(double)),
      'maxZoom',
      serializers.serialize(object.maxZoom,
          specifiedType: const FullType(double)),
    ];
    if (object.pattern != null) {
      result
        ..add('pattern')
        ..add(serializers.serialize(object.pattern,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  FillExtrusionLayerModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FillExtrusionLayerModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'sourceId':
          result.sourceId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'color':
          result.color = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'translate':
          result.translate.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(double)]))
              as BuiltList<dynamic>);
          break;
        case 'translateAnchor':
          result.translateAnchor = serializers.deserialize(value,
                  specifiedType: const FullType(TranslateAnchor))
              as TranslateAnchor;
          break;
        case 'pattern':
          result.pattern = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'height':
          result.height = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'base':
          result.base = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'verticalGradient':
          result.verticalGradient = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'opacityTransition':
          result.opacityTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'colorTransition':
          result.colorTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'translateTransition':
          result.translateTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'patternTransition':
          result.patternTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'heightTransition':
          result.heightTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'baseTransition':
          result.baseTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'visible':
          result.visible = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'minZoom':
          result.minZoom = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'maxZoom':
          result.maxZoom = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$FillLayerModelSerializer
    implements StructuredSerializer<FillLayerModel> {
  @override
  final Iterable<Type> types = const [FillLayerModel, _$FillLayerModel];
  @override
  final String wireName = 'FillLayerModel';

  @override
  Iterable<Object> serialize(Serializers serializers, FillLayerModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'sourceId',
      serializers.serialize(object.sourceId,
          specifiedType: const FullType(String)),
      'antialias',
      serializers.serialize(object.antialias,
          specifiedType: const FullType(bool)),
      'color',
      serializers.serialize(object.color, specifiedType: const FullType(int)),
      'translate',
      serializers.serialize(object.translate,
          specifiedType:
              const FullType(BuiltList, const [const FullType(double)])),
      'translateAnchor',
      serializers.serialize(object.translateAnchor,
          specifiedType: const FullType(TranslateAnchor)),
      'opacityTransition',
      serializers.serialize(object.opacityTransition,
          specifiedType: const FullType(TransitionOptions)),
      'colorTransition',
      serializers.serialize(object.colorTransition,
          specifiedType: const FullType(TransitionOptions)),
      'outlineColorTransition',
      serializers.serialize(object.outlineColorTransition,
          specifiedType: const FullType(TransitionOptions)),
      'translateTransition',
      serializers.serialize(object.translateTransition,
          specifiedType: const FullType(TransitionOptions)),
      'patternTransition',
      serializers.serialize(object.patternTransition,
          specifiedType: const FullType(TransitionOptions)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'visible',
      serializers.serialize(object.visible,
          specifiedType: const FullType(bool)),
      'minZoom',
      serializers.serialize(object.minZoom,
          specifiedType: const FullType(double)),
      'maxZoom',
      serializers.serialize(object.maxZoom,
          specifiedType: const FullType(double)),
    ];
    if (object.outlineColor != null) {
      result
        ..add('outlineColor')
        ..add(serializers.serialize(object.outlineColor,
            specifiedType: const FullType(int)));
    }
    if (object.pattern != null) {
      result
        ..add('pattern')
        ..add(serializers.serialize(object.pattern,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  FillLayerModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FillLayerModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'sourceId':
          result.sourceId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'antialias':
          result.antialias = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'color':
          result.color = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'outlineColor':
          result.outlineColor = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'translate':
          result.translate.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(double)]))
              as BuiltList<dynamic>);
          break;
        case 'translateAnchor':
          result.translateAnchor = serializers.deserialize(value,
                  specifiedType: const FullType(TranslateAnchor))
              as TranslateAnchor;
          break;
        case 'pattern':
          result.pattern = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'opacityTransition':
          result.opacityTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'colorTransition':
          result.colorTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'outlineColorTransition':
          result.outlineColorTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'translateTransition':
          result.translateTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'patternTransition':
          result.patternTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'visible':
          result.visible = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'minZoom':
          result.minZoom = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'maxZoom':
          result.maxZoom = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$HeatmapLayerModelSerializer
    implements StructuredSerializer<HeatmapLayerModel> {
  @override
  final Iterable<Type> types = const [HeatmapLayerModel, _$HeatmapLayerModel];
  @override
  final String wireName = 'HeatmapLayerModel';

  @override
  Iterable<Object> serialize(Serializers serializers, HeatmapLayerModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'sourceId',
      serializers.serialize(object.sourceId,
          specifiedType: const FullType(String)),
      'radius',
      serializers.serialize(object.radius,
          specifiedType: const FullType(double)),
      'weight',
      serializers.serialize(object.weight,
          specifiedType: const FullType(double)),
      'intensity',
      serializers.serialize(object.intensity,
          specifiedType: const FullType(double)),
      'color',
      serializers.serialize(object.color, specifiedType: const FullType(int)),
      'radiusTransition',
      serializers.serialize(object.radiusTransition,
          specifiedType: const FullType(TransitionOptions)),
      'intensityTransition',
      serializers.serialize(object.intensityTransition,
          specifiedType: const FullType(TransitionOptions)),
      'opacityTransition',
      serializers.serialize(object.opacityTransition,
          specifiedType: const FullType(TransitionOptions)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'visible',
      serializers.serialize(object.visible,
          specifiedType: const FullType(bool)),
      'minZoom',
      serializers.serialize(object.minZoom,
          specifiedType: const FullType(double)),
      'maxZoom',
      serializers.serialize(object.maxZoom,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  HeatmapLayerModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HeatmapLayerModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'sourceId':
          result.sourceId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'radius':
          result.radius = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'weight':
          result.weight = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'intensity':
          result.intensity = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'color':
          result.color = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'radiusTransition':
          result.radiusTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'intensityTransition':
          result.intensityTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'opacityTransition':
          result.opacityTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'visible':
          result.visible = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'minZoom':
          result.minZoom = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'maxZoom':
          result.maxZoom = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$HillshadeLayerModelSerializer
    implements StructuredSerializer<HillshadeLayerModel> {
  @override
  final Iterable<Type> types = const [
    HillshadeLayerModel,
    _$HillshadeLayerModel
  ];
  @override
  final String wireName = 'HillshadeLayerModel';

  @override
  Iterable<Object> serialize(
      Serializers serializers, HillshadeLayerModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'sourceId',
      serializers.serialize(object.sourceId,
          specifiedType: const FullType(String)),
      'illuminationDirection',
      serializers.serialize(object.illuminationDirection,
          specifiedType: const FullType(double)),
      'illuminationAnchor',
      serializers.serialize(object.illuminationAnchor,
          specifiedType: const FullType(TranslateAnchor)),
      'exaggeration',
      serializers.serialize(object.exaggeration,
          specifiedType: const FullType(double)),
      'shadowColor',
      serializers.serialize(object.shadowColor,
          specifiedType: const FullType(int)),
      'highlightColor',
      serializers.serialize(object.highlightColor,
          specifiedType: const FullType(int)),
      'accentColor',
      serializers.serialize(object.accentColor,
          specifiedType: const FullType(int)),
      'exaggerationTransition',
      serializers.serialize(object.exaggerationTransition,
          specifiedType: const FullType(TransitionOptions)),
      'shadowColorTransition',
      serializers.serialize(object.shadowColorTransition,
          specifiedType: const FullType(TransitionOptions)),
      'highlightColorTransition',
      serializers.serialize(object.highlightColorTransition,
          specifiedType: const FullType(TransitionOptions)),
      'accentColorTransition',
      serializers.serialize(object.accentColorTransition,
          specifiedType: const FullType(TransitionOptions)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'visible',
      serializers.serialize(object.visible,
          specifiedType: const FullType(bool)),
      'minZoom',
      serializers.serialize(object.minZoom,
          specifiedType: const FullType(double)),
      'maxZoom',
      serializers.serialize(object.maxZoom,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  HillshadeLayerModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HillshadeLayerModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'sourceId':
          result.sourceId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'illuminationDirection':
          result.illuminationDirection = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'illuminationAnchor':
          result.illuminationAnchor = serializers.deserialize(value,
                  specifiedType: const FullType(TranslateAnchor))
              as TranslateAnchor;
          break;
        case 'exaggeration':
          result.exaggeration = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'shadowColor':
          result.shadowColor = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'highlightColor':
          result.highlightColor = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'accentColor':
          result.accentColor = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'exaggerationTransition':
          result.exaggerationTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'shadowColorTransition':
          result.shadowColorTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'highlightColorTransition':
          result.highlightColorTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'accentColorTransition':
          result.accentColorTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'visible':
          result.visible = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'minZoom':
          result.minZoom = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'maxZoom':
          result.maxZoom = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$LineLayerModelSerializer
    implements StructuredSerializer<LineLayerModel> {
  @override
  final Iterable<Type> types = const [LineLayerModel, _$LineLayerModel];
  @override
  final String wireName = 'LineLayerModel';

  @override
  Iterable<Object> serialize(Serializers serializers, LineLayerModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'sourceId',
      serializers.serialize(object.sourceId,
          specifiedType: const FullType(String)),
      'cap',
      serializers.serialize(object.cap, specifiedType: const FullType(LineCap)),
      'join',
      serializers.serialize(object.join,
          specifiedType: const FullType(LineJoin)),
      'miterLimit',
      serializers.serialize(object.miterLimit,
          specifiedType: const FullType(double)),
      'roundLimit',
      serializers.serialize(object.roundLimit,
          specifiedType: const FullType(double)),
      'color',
      serializers.serialize(object.color, specifiedType: const FullType(int)),
      'translate',
      serializers.serialize(object.translate,
          specifiedType:
              const FullType(BuiltList, const [const FullType(double)])),
      'translateAnchor',
      serializers.serialize(object.translateAnchor,
          specifiedType: const FullType(TranslateAnchor)),
      'width',
      serializers.serialize(object.width,
          specifiedType: const FullType(double)),
      'gapWidth',
      serializers.serialize(object.gapWidth,
          specifiedType: const FullType(double)),
      'offset',
      serializers.serialize(object.offset,
          specifiedType: const FullType(double)),
      'blur',
      serializers.serialize(object.blur, specifiedType: const FullType(double)),
      'opacityTransition',
      serializers.serialize(object.opacityTransition,
          specifiedType: const FullType(TransitionOptions)),
      'colorTransition',
      serializers.serialize(object.colorTransition,
          specifiedType: const FullType(TransitionOptions)),
      'translateTransition',
      serializers.serialize(object.translateTransition,
          specifiedType: const FullType(TransitionOptions)),
      'widthTransition',
      serializers.serialize(object.widthTransition,
          specifiedType: const FullType(TransitionOptions)),
      'gapWidthTransition',
      serializers.serialize(object.gapWidthTransition,
          specifiedType: const FullType(TransitionOptions)),
      'offsetTransition',
      serializers.serialize(object.offsetTransition,
          specifiedType: const FullType(TransitionOptions)),
      'blurTransition',
      serializers.serialize(object.blurTransition,
          specifiedType: const FullType(TransitionOptions)),
      'dasharrayTransition',
      serializers.serialize(object.dasharrayTransition,
          specifiedType: const FullType(TransitionOptions)),
      'patternTransition',
      serializers.serialize(object.patternTransition,
          specifiedType: const FullType(TransitionOptions)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'visible',
      serializers.serialize(object.visible,
          specifiedType: const FullType(bool)),
      'minZoom',
      serializers.serialize(object.minZoom,
          specifiedType: const FullType(double)),
      'maxZoom',
      serializers.serialize(object.maxZoom,
          specifiedType: const FullType(double)),
    ];
    if (object.dasharray != null) {
      result
        ..add('dasharray')
        ..add(serializers.serialize(object.dasharray,
            specifiedType:
                const FullType(BuiltList, const [const FullType(double)])));
    }
    if (object.pattern != null) {
      result
        ..add('pattern')
        ..add(serializers.serialize(object.pattern,
            specifiedType: const FullType(String)));
    }
    if (object.gradient != null) {
      result
        ..add('gradient')
        ..add(serializers.serialize(object.gradient,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  LineLayerModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LineLayerModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'sourceId':
          result.sourceId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cap':
          result.cap = serializers.deserialize(value,
              specifiedType: const FullType(LineCap)) as LineCap;
          break;
        case 'join':
          result.join = serializers.deserialize(value,
              specifiedType: const FullType(LineJoin)) as LineJoin;
          break;
        case 'miterLimit':
          result.miterLimit = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'roundLimit':
          result.roundLimit = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'color':
          result.color = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'translate':
          result.translate.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(double)]))
              as BuiltList<dynamic>);
          break;
        case 'translateAnchor':
          result.translateAnchor = serializers.deserialize(value,
                  specifiedType: const FullType(TranslateAnchor))
              as TranslateAnchor;
          break;
        case 'width':
          result.width = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'gapWidth':
          result.gapWidth = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'offset':
          result.offset = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'blur':
          result.blur = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'dasharray':
          result.dasharray.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(double)]))
              as BuiltList<dynamic>);
          break;
        case 'pattern':
          result.pattern = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'gradient':
          result.gradient = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'opacityTransition':
          result.opacityTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'colorTransition':
          result.colorTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'translateTransition':
          result.translateTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'widthTransition':
          result.widthTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'gapWidthTransition':
          result.gapWidthTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'offsetTransition':
          result.offsetTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'blurTransition':
          result.blurTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'dasharrayTransition':
          result.dasharrayTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'patternTransition':
          result.patternTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'visible':
          result.visible = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'minZoom':
          result.minZoom = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'maxZoom':
          result.maxZoom = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$SymbolLayerModelSerializer
    implements StructuredSerializer<SymbolLayerModel> {
  @override
  final Iterable<Type> types = const [SymbolLayerModel, _$SymbolLayerModel];
  @override
  final String wireName = 'SymbolLayerModel';

  @override
  Iterable<Object> serialize(Serializers serializers, SymbolLayerModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'sourceId',
      serializers.serialize(object.sourceId,
          specifiedType: const FullType(String)),
      'symbolPlacement',
      serializers.serialize(object.symbolPlacement,
          specifiedType: const FullType(SymbolPlacement)),
      'symbolSpacing',
      serializers.serialize(object.symbolSpacing,
          specifiedType: const FullType(double)),
      'symbolAvoidEdges',
      serializers.serialize(object.symbolAvoidEdges,
          specifiedType: const FullType(bool)),
      'symbolZOrder',
      serializers.serialize(object.symbolZOrder,
          specifiedType: const FullType(SymbolZOrder)),
      'iconAllowOverlap',
      serializers.serialize(object.iconAllowOverlap,
          specifiedType: const FullType(bool)),
      'iconIgnorePlacement',
      serializers.serialize(object.iconIgnorePlacement,
          specifiedType: const FullType(bool)),
      'iconOptional',
      serializers.serialize(object.iconOptional,
          specifiedType: const FullType(bool)),
      'iconRotationAlignment',
      serializers.serialize(object.iconRotationAlignment,
          specifiedType: const FullType(SymbolAlignment)),
      'iconSize',
      serializers.serialize(object.iconSize,
          specifiedType: const FullType(double)),
      'iconTextFit',
      serializers.serialize(object.iconTextFit,
          specifiedType: const FullType(SymbolTextFit)),
      'iconTextFitPadding',
      serializers.serialize(object.iconTextFitPadding,
          specifiedType:
              const FullType(BuiltList, const [const FullType(double)])),
      'iconRotate',
      serializers.serialize(object.iconRotate,
          specifiedType: const FullType(double)),
      'iconPadding',
      serializers.serialize(object.iconPadding,
          specifiedType: const FullType(double)),
      'iconKeepUpright',
      serializers.serialize(object.iconKeepUpright,
          specifiedType: const FullType(bool)),
      'iconOffset',
      serializers.serialize(object.iconOffset,
          specifiedType:
              const FullType(BuiltList, const [const FullType(double)])),
      'iconAnchor',
      serializers.serialize(object.iconAnchor,
          specifiedType: const FullType(PositionAnchor)),
      'iconPitchAlignment',
      serializers.serialize(object.iconPitchAlignment,
          specifiedType: const FullType(SymbolAlignment)),
      'textPitchAlignment',
      serializers.serialize(object.textPitchAlignment,
          specifiedType: const FullType(SymbolAlignment)),
      'textRotationAlignment',
      serializers.serialize(object.textRotationAlignment,
          specifiedType: const FullType(SymbolAlignment)),
      'textFont',
      serializers.serialize(object.textFont,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'textSize',
      serializers.serialize(object.textSize,
          specifiedType: const FullType(double)),
      'textMaxWidth',
      serializers.serialize(object.textMaxWidth,
          specifiedType: const FullType(double)),
      'textLineHeight',
      serializers.serialize(object.textLineHeight,
          specifiedType: const FullType(double)),
      'textLetterSpacing',
      serializers.serialize(object.textLetterSpacing,
          specifiedType: const FullType(double)),
      'textJustify',
      serializers.serialize(object.textJustify,
          specifiedType: const FullType(SymbolTextJustify)),
      'textRadialOffset',
      serializers.serialize(object.textRadialOffset,
          specifiedType: const FullType(double)),
      'textAnchor',
      serializers.serialize(object.textAnchor,
          specifiedType: const FullType(PositionAnchor)),
      'textMaxAngle',
      serializers.serialize(object.textMaxAngle,
          specifiedType: const FullType(double)),
      'textRotate',
      serializers.serialize(object.textRotate,
          specifiedType: const FullType(double)),
      'textPadding',
      serializers.serialize(object.textPadding,
          specifiedType: const FullType(double)),
      'textKeepUpright',
      serializers.serialize(object.textKeepUpright,
          specifiedType: const FullType(bool)),
      'textTransform',
      serializers.serialize(object.textTransform,
          specifiedType: const FullType(SymbolTextTransform)),
      'textOffset',
      serializers.serialize(object.textOffset,
          specifiedType:
              const FullType(BuiltList, const [const FullType(double)])),
      'textAllowOverlap',
      serializers.serialize(object.textAllowOverlap,
          specifiedType: const FullType(bool)),
      'textIgnorePlacement',
      serializers.serialize(object.textIgnorePlacement,
          specifiedType: const FullType(bool)),
      'textOptional',
      serializers.serialize(object.textOptional,
          specifiedType: const FullType(bool)),
      'iconColor',
      serializers.serialize(object.iconColor,
          specifiedType: const FullType(int)),
      'iconHaloColor',
      serializers.serialize(object.iconHaloColor,
          specifiedType: const FullType(int)),
      'iconHaloWidth',
      serializers.serialize(object.iconHaloWidth,
          specifiedType: const FullType(double)),
      'iconHaloBlur',
      serializers.serialize(object.iconHaloBlur,
          specifiedType: const FullType(double)),
      'iconTranslate',
      serializers.serialize(object.iconTranslate,
          specifiedType:
              const FullType(BuiltList, const [const FullType(double)])),
      'iconTranslateAnchor',
      serializers.serialize(object.iconTranslateAnchor,
          specifiedType: const FullType(TranslateAnchor)),
      'textColor',
      serializers.serialize(object.textColor,
          specifiedType: const FullType(int)),
      'textHaloColor',
      serializers.serialize(object.textHaloColor,
          specifiedType: const FullType(int)),
      'textHaloWidth',
      serializers.serialize(object.textHaloWidth,
          specifiedType: const FullType(double)),
      'textHaloBlur',
      serializers.serialize(object.textHaloBlur,
          specifiedType: const FullType(double)),
      'textTranslate',
      serializers.serialize(object.textTranslate,
          specifiedType:
              const FullType(BuiltList, const [const FullType(double)])),
      'textTranslateAnchor',
      serializers.serialize(object.textTranslateAnchor,
          specifiedType: const FullType(TranslateAnchor)),
      'iconOpacityTransition',
      serializers.serialize(object.iconOpacityTransition,
          specifiedType: const FullType(TransitionOptions)),
      'iconColorTransition',
      serializers.serialize(object.iconColorTransition,
          specifiedType: const FullType(TransitionOptions)),
      'iconHaloColorTransition',
      serializers.serialize(object.iconHaloColorTransition,
          specifiedType: const FullType(TransitionOptions)),
      'iconHaloWidthTransition',
      serializers.serialize(object.iconHaloWidthTransition,
          specifiedType: const FullType(TransitionOptions)),
      'iconHaloBlurTransition',
      serializers.serialize(object.iconHaloBlurTransition,
          specifiedType: const FullType(TransitionOptions)),
      'iconTranslateTransition',
      serializers.serialize(object.iconTranslateTransition,
          specifiedType: const FullType(TransitionOptions)),
      'textOpacityTransition',
      serializers.serialize(object.textOpacityTransition,
          specifiedType: const FullType(TransitionOptions)),
      'textColorTransition',
      serializers.serialize(object.textColorTransition,
          specifiedType: const FullType(TransitionOptions)),
      'textHaloColorTransition',
      serializers.serialize(object.textHaloColorTransition,
          specifiedType: const FullType(TransitionOptions)),
      'textHaloWidthTransition',
      serializers.serialize(object.textHaloWidthTransition,
          specifiedType: const FullType(TransitionOptions)),
      'textHaloBlurTransition',
      serializers.serialize(object.textHaloBlurTransition,
          specifiedType: const FullType(TransitionOptions)),
      'textTranslateTransition',
      serializers.serialize(object.textTranslateTransition,
          specifiedType: const FullType(TransitionOptions)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'visible',
      serializers.serialize(object.visible,
          specifiedType: const FullType(bool)),
      'minZoom',
      serializers.serialize(object.minZoom,
          specifiedType: const FullType(double)),
      'maxZoom',
      serializers.serialize(object.maxZoom,
          specifiedType: const FullType(double)),
    ];
    if (object.iconImage != null) {
      result
        ..add('iconImage')
        ..add(serializers.serialize(object.iconImage,
            specifiedType: const FullType(String)));
    }
    if (object.textField != null) {
      result
        ..add('textField')
        ..add(serializers.serialize(object.textField,
            specifiedType: const FullType(
                BuiltList, const [const FullType(FormattedSection)])));
    }
    if (object.textVariableAnchor != null) {
      result
        ..add('textVariableAnchor')
        ..add(serializers.serialize(object.textVariableAnchor,
            specifiedType: const FullType(
                BuiltList, const [const FullType(PositionAnchor)])));
    }
    return result;
  }

  @override
  SymbolLayerModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SymbolLayerModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'sourceId':
          result.sourceId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'symbolPlacement':
          result.symbolPlacement = serializers.deserialize(value,
                  specifiedType: const FullType(SymbolPlacement))
              as SymbolPlacement;
          break;
        case 'symbolSpacing':
          result.symbolSpacing = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'symbolAvoidEdges':
          result.symbolAvoidEdges = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'symbolZOrder':
          result.symbolZOrder = serializers.deserialize(value,
              specifiedType: const FullType(SymbolZOrder)) as SymbolZOrder;
          break;
        case 'iconAllowOverlap':
          result.iconAllowOverlap = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'iconIgnorePlacement':
          result.iconIgnorePlacement = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'iconOptional':
          result.iconOptional = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'iconRotationAlignment':
          result.iconRotationAlignment = serializers.deserialize(value,
                  specifiedType: const FullType(SymbolAlignment))
              as SymbolAlignment;
          break;
        case 'iconSize':
          result.iconSize = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'iconTextFit':
          result.iconTextFit = serializers.deserialize(value,
              specifiedType: const FullType(SymbolTextFit)) as SymbolTextFit;
          break;
        case 'iconTextFitPadding':
          result.iconTextFitPadding.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(double)]))
              as BuiltList<dynamic>);
          break;
        case 'iconImage':
          result.iconImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'iconRotate':
          result.iconRotate = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'iconPadding':
          result.iconPadding = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'iconKeepUpright':
          result.iconKeepUpright = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'iconOffset':
          result.iconOffset.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(double)]))
              as BuiltList<dynamic>);
          break;
        case 'iconAnchor':
          result.iconAnchor = serializers.deserialize(value,
              specifiedType: const FullType(PositionAnchor)) as PositionAnchor;
          break;
        case 'iconPitchAlignment':
          result.iconPitchAlignment = serializers.deserialize(value,
                  specifiedType: const FullType(SymbolAlignment))
              as SymbolAlignment;
          break;
        case 'textPitchAlignment':
          result.textPitchAlignment = serializers.deserialize(value,
                  specifiedType: const FullType(SymbolAlignment))
              as SymbolAlignment;
          break;
        case 'textRotationAlignment':
          result.textRotationAlignment = serializers.deserialize(value,
                  specifiedType: const FullType(SymbolAlignment))
              as SymbolAlignment;
          break;
        case 'textField':
          result.textField.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(FormattedSection)]))
              as BuiltList<dynamic>);
          break;
        case 'textFont':
          result.textFont.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<dynamic>);
          break;
        case 'textSize':
          result.textSize = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'textMaxWidth':
          result.textMaxWidth = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'textLineHeight':
          result.textLineHeight = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'textLetterSpacing':
          result.textLetterSpacing = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'textJustify':
          result.textJustify = serializers.deserialize(value,
                  specifiedType: const FullType(SymbolTextJustify))
              as SymbolTextJustify;
          break;
        case 'textRadialOffset':
          result.textRadialOffset = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'textVariableAnchor':
          result.textVariableAnchor.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(PositionAnchor)]))
              as BuiltList<dynamic>);
          break;
        case 'textAnchor':
          result.textAnchor = serializers.deserialize(value,
              specifiedType: const FullType(PositionAnchor)) as PositionAnchor;
          break;
        case 'textMaxAngle':
          result.textMaxAngle = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'textRotate':
          result.textRotate = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'textPadding':
          result.textPadding = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'textKeepUpright':
          result.textKeepUpright = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'textTransform':
          result.textTransform = serializers.deserialize(value,
                  specifiedType: const FullType(SymbolTextTransform))
              as SymbolTextTransform;
          break;
        case 'textOffset':
          result.textOffset.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(double)]))
              as BuiltList<dynamic>);
          break;
        case 'textAllowOverlap':
          result.textAllowOverlap = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'textIgnorePlacement':
          result.textIgnorePlacement = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'textOptional':
          result.textOptional = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'iconColor':
          result.iconColor = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'iconHaloColor':
          result.iconHaloColor = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'iconHaloWidth':
          result.iconHaloWidth = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'iconHaloBlur':
          result.iconHaloBlur = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'iconTranslate':
          result.iconTranslate.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(double)]))
              as BuiltList<dynamic>);
          break;
        case 'iconTranslateAnchor':
          result.iconTranslateAnchor = serializers.deserialize(value,
                  specifiedType: const FullType(TranslateAnchor))
              as TranslateAnchor;
          break;
        case 'textColor':
          result.textColor = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'textHaloColor':
          result.textHaloColor = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'textHaloWidth':
          result.textHaloWidth = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'textHaloBlur':
          result.textHaloBlur = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'textTranslate':
          result.textTranslate.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(double)]))
              as BuiltList<dynamic>);
          break;
        case 'textTranslateAnchor':
          result.textTranslateAnchor = serializers.deserialize(value,
                  specifiedType: const FullType(TranslateAnchor))
              as TranslateAnchor;
          break;
        case 'iconOpacityTransition':
          result.iconOpacityTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'iconColorTransition':
          result.iconColorTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'iconHaloColorTransition':
          result.iconHaloColorTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'iconHaloWidthTransition':
          result.iconHaloWidthTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'iconHaloBlurTransition':
          result.iconHaloBlurTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'iconTranslateTransition':
          result.iconTranslateTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'textOpacityTransition':
          result.textOpacityTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'textColorTransition':
          result.textColorTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'textHaloColorTransition':
          result.textHaloColorTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'textHaloWidthTransition':
          result.textHaloWidthTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'textHaloBlurTransition':
          result.textHaloBlurTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'textTranslateTransition':
          result.textTranslateTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'visible':
          result.visible = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'minZoom':
          result.minZoom = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'maxZoom':
          result.maxZoom = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

abstract class LayerModelBuilder {
  void replace(LayerModel other);
  void update(void Function(LayerModelBuilder) updates);
  String get id;
  set id(String id);

  bool get visible;
  set visible(bool visible);

  double get minZoom;
  set minZoom(double minZoom);

  double get maxZoom;
  set maxZoom(double maxZoom);
}

class _$BackgroundLayerModel extends BackgroundLayerModel {
  @override
  final int color;
  @override
  final String pattern;
  @override
  final TransitionOptions colorTransition;
  @override
  final TransitionOptions patternTransition;
  @override
  final TransitionOptions opacityTransition;
  @override
  final String id;
  @override
  final bool visible;
  @override
  final double minZoom;
  @override
  final double maxZoom;
  Uint8List __data;
  Uint8List __sourceData;

  factory _$BackgroundLayerModel(
          [void Function(BackgroundLayerModelBuilder) updates]) =>
      (new BackgroundLayerModelBuilder()..update(updates)).build();

  _$BackgroundLayerModel._(
      {this.color,
      this.pattern,
      this.colorTransition,
      this.patternTransition,
      this.opacityTransition,
      this.id,
      this.visible,
      this.minZoom,
      this.maxZoom})
      : super._() {
    if (color == null) {
      throw new BuiltValueNullFieldError('BackgroundLayerModel', 'color');
    }
    if (colorTransition == null) {
      throw new BuiltValueNullFieldError(
          'BackgroundLayerModel', 'colorTransition');
    }
    if (patternTransition == null) {
      throw new BuiltValueNullFieldError(
          'BackgroundLayerModel', 'patternTransition');
    }
    if (opacityTransition == null) {
      throw new BuiltValueNullFieldError(
          'BackgroundLayerModel', 'opacityTransition');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('BackgroundLayerModel', 'id');
    }
    if (visible == null) {
      throw new BuiltValueNullFieldError('BackgroundLayerModel', 'visible');
    }
    if (minZoom == null) {
      throw new BuiltValueNullFieldError('BackgroundLayerModel', 'minZoom');
    }
    if (maxZoom == null) {
      throw new BuiltValueNullFieldError('BackgroundLayerModel', 'maxZoom');
    }
  }

  @override
  Uint8List get data => __data ??= super.data;

  @override
  Uint8List get sourceData => __sourceData ??= super.sourceData;

  @override
  BackgroundLayerModel rebuild(
          void Function(BackgroundLayerModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BackgroundLayerModelBuilder toBuilder() =>
      new BackgroundLayerModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BackgroundLayerModel &&
        color == other.color &&
        pattern == other.pattern &&
        colorTransition == other.colorTransition &&
        patternTransition == other.patternTransition &&
        opacityTransition == other.opacityTransition &&
        id == other.id &&
        visible == other.visible &&
        minZoom == other.minZoom &&
        maxZoom == other.maxZoom;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, color.hashCode), pattern.hashCode),
                                colorTransition.hashCode),
                            patternTransition.hashCode),
                        opacityTransition.hashCode),
                    id.hashCode),
                visible.hashCode),
            minZoom.hashCode),
        maxZoom.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BackgroundLayerModel')
          ..add('color', color)
          ..add('pattern', pattern)
          ..add('colorTransition', colorTransition)
          ..add('patternTransition', patternTransition)
          ..add('opacityTransition', opacityTransition)
          ..add('id', id)
          ..add('visible', visible)
          ..add('minZoom', minZoom)
          ..add('maxZoom', maxZoom))
        .toString();
  }
}

class BackgroundLayerModelBuilder
    implements
        Builder<BackgroundLayerModel, BackgroundLayerModelBuilder>,
        LayerModelBuilder {
  _$BackgroundLayerModel _$v;

  int _color;
  int get color => _$this._color;
  set color(int color) => _$this._color = color;

  String _pattern;
  String get pattern => _$this._pattern;
  set pattern(String pattern) => _$this._pattern = pattern;

  TransitionOptionsBuilder _colorTransition;
  TransitionOptionsBuilder get colorTransition =>
      _$this._colorTransition ??= new TransitionOptionsBuilder();
  set colorTransition(TransitionOptionsBuilder colorTransition) =>
      _$this._colorTransition = colorTransition;

  TransitionOptionsBuilder _patternTransition;
  TransitionOptionsBuilder get patternTransition =>
      _$this._patternTransition ??= new TransitionOptionsBuilder();
  set patternTransition(TransitionOptionsBuilder patternTransition) =>
      _$this._patternTransition = patternTransition;

  TransitionOptionsBuilder _opacityTransition;
  TransitionOptionsBuilder get opacityTransition =>
      _$this._opacityTransition ??= new TransitionOptionsBuilder();
  set opacityTransition(TransitionOptionsBuilder opacityTransition) =>
      _$this._opacityTransition = opacityTransition;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  bool _visible;
  bool get visible => _$this._visible;
  set visible(bool visible) => _$this._visible = visible;

  double _minZoom;
  double get minZoom => _$this._minZoom;
  set minZoom(double minZoom) => _$this._minZoom = minZoom;

  double _maxZoom;
  double get maxZoom => _$this._maxZoom;
  set maxZoom(double maxZoom) => _$this._maxZoom = maxZoom;

  BackgroundLayerModelBuilder();

  BackgroundLayerModelBuilder get _$this {
    if (_$v != null) {
      _color = _$v.color;
      _pattern = _$v.pattern;
      _colorTransition = _$v.colorTransition?.toBuilder();
      _patternTransition = _$v.patternTransition?.toBuilder();
      _opacityTransition = _$v.opacityTransition?.toBuilder();
      _id = _$v.id;
      _visible = _$v.visible;
      _minZoom = _$v.minZoom;
      _maxZoom = _$v.maxZoom;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant BackgroundLayerModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BackgroundLayerModel;
  }

  @override
  void update(void Function(BackgroundLayerModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BackgroundLayerModel build() {
    _$BackgroundLayerModel _$result;
    try {
      _$result = _$v ??
          new _$BackgroundLayerModel._(
              color: color,
              pattern: pattern,
              colorTransition: colorTransition.build(),
              patternTransition: patternTransition.build(),
              opacityTransition: opacityTransition.build(),
              id: id,
              visible: visible,
              minZoom: minZoom,
              maxZoom: maxZoom);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'colorTransition';
        colorTransition.build();
        _$failedField = 'patternTransition';
        patternTransition.build();
        _$failedField = 'opacityTransition';
        opacityTransition.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BackgroundLayerModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CircleLayerModel extends CircleLayerModel {
  @override
  final String sourceId;
  @override
  final double radius;
  @override
  final int color;
  @override
  final double blur;
  @override
  final BuiltList<double> translate;
  @override
  final TranslateAnchor translateAnchor;
  @override
  final TranslateAnchor pitchScale;
  @override
  final TranslateAnchor pitchAlignment;
  @override
  final double strokeWidth;
  @override
  final int strokeColor;
  @override
  final TransitionOptions radiusTransition;
  @override
  final TransitionOptions colorTransition;
  @override
  final TransitionOptions blurTransition;
  @override
  final TransitionOptions opacityTransition;
  @override
  final TransitionOptions translateTransition;
  @override
  final TransitionOptions strokeWidthTransition;
  @override
  final TransitionOptions strokeColorTransition;
  @override
  final TransitionOptions strokeOpacityTransition;
  @override
  final String id;
  @override
  final bool visible;
  @override
  final double minZoom;
  @override
  final double maxZoom;
  Uint8List __data;
  Uint8List __sourceData;

  factory _$CircleLayerModel(
          [void Function(CircleLayerModelBuilder) updates]) =>
      (new CircleLayerModelBuilder()..update(updates)).build();

  _$CircleLayerModel._(
      {this.sourceId,
      this.radius,
      this.color,
      this.blur,
      this.translate,
      this.translateAnchor,
      this.pitchScale,
      this.pitchAlignment,
      this.strokeWidth,
      this.strokeColor,
      this.radiusTransition,
      this.colorTransition,
      this.blurTransition,
      this.opacityTransition,
      this.translateTransition,
      this.strokeWidthTransition,
      this.strokeColorTransition,
      this.strokeOpacityTransition,
      this.id,
      this.visible,
      this.minZoom,
      this.maxZoom})
      : super._() {
    if (sourceId == null) {
      throw new BuiltValueNullFieldError('CircleLayerModel', 'sourceId');
    }
    if (radius == null) {
      throw new BuiltValueNullFieldError('CircleLayerModel', 'radius');
    }
    if (color == null) {
      throw new BuiltValueNullFieldError('CircleLayerModel', 'color');
    }
    if (blur == null) {
      throw new BuiltValueNullFieldError('CircleLayerModel', 'blur');
    }
    if (translate == null) {
      throw new BuiltValueNullFieldError('CircleLayerModel', 'translate');
    }
    if (translateAnchor == null) {
      throw new BuiltValueNullFieldError('CircleLayerModel', 'translateAnchor');
    }
    if (pitchScale == null) {
      throw new BuiltValueNullFieldError('CircleLayerModel', 'pitchScale');
    }
    if (pitchAlignment == null) {
      throw new BuiltValueNullFieldError('CircleLayerModel', 'pitchAlignment');
    }
    if (strokeWidth == null) {
      throw new BuiltValueNullFieldError('CircleLayerModel', 'strokeWidth');
    }
    if (strokeColor == null) {
      throw new BuiltValueNullFieldError('CircleLayerModel', 'strokeColor');
    }
    if (radiusTransition == null) {
      throw new BuiltValueNullFieldError(
          'CircleLayerModel', 'radiusTransition');
    }
    if (colorTransition == null) {
      throw new BuiltValueNullFieldError('CircleLayerModel', 'colorTransition');
    }
    if (blurTransition == null) {
      throw new BuiltValueNullFieldError('CircleLayerModel', 'blurTransition');
    }
    if (opacityTransition == null) {
      throw new BuiltValueNullFieldError(
          'CircleLayerModel', 'opacityTransition');
    }
    if (translateTransition == null) {
      throw new BuiltValueNullFieldError(
          'CircleLayerModel', 'translateTransition');
    }
    if (strokeWidthTransition == null) {
      throw new BuiltValueNullFieldError(
          'CircleLayerModel', 'strokeWidthTransition');
    }
    if (strokeColorTransition == null) {
      throw new BuiltValueNullFieldError(
          'CircleLayerModel', 'strokeColorTransition');
    }
    if (strokeOpacityTransition == null) {
      throw new BuiltValueNullFieldError(
          'CircleLayerModel', 'strokeOpacityTransition');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('CircleLayerModel', 'id');
    }
    if (visible == null) {
      throw new BuiltValueNullFieldError('CircleLayerModel', 'visible');
    }
    if (minZoom == null) {
      throw new BuiltValueNullFieldError('CircleLayerModel', 'minZoom');
    }
    if (maxZoom == null) {
      throw new BuiltValueNullFieldError('CircleLayerModel', 'maxZoom');
    }
  }

  @override
  Uint8List get data => __data ??= super.data;

  @override
  Uint8List get sourceData => __sourceData ??= super.sourceData;

  @override
  CircleLayerModel rebuild(void Function(CircleLayerModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CircleLayerModelBuilder toBuilder() =>
      new CircleLayerModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CircleLayerModel &&
        sourceId == other.sourceId &&
        radius == other.radius &&
        color == other.color &&
        blur == other.blur &&
        translate == other.translate &&
        translateAnchor == other.translateAnchor &&
        pitchScale == other.pitchScale &&
        pitchAlignment == other.pitchAlignment &&
        strokeWidth == other.strokeWidth &&
        strokeColor == other.strokeColor &&
        radiusTransition == other.radiusTransition &&
        colorTransition == other.colorTransition &&
        blurTransition == other.blurTransition &&
        opacityTransition == other.opacityTransition &&
        translateTransition == other.translateTransition &&
        strokeWidthTransition == other.strokeWidthTransition &&
        strokeColorTransition == other.strokeColorTransition &&
        strokeOpacityTransition == other.strokeOpacityTransition &&
        id == other.id &&
        visible == other.visible &&
        minZoom == other.minZoom &&
        maxZoom == other.maxZoom;
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
                                                                            $jc($jc($jc($jc(0, sourceId.hashCode), radius.hashCode), color.hashCode),
                                                                                blur.hashCode),
                                                                            translate.hashCode),
                                                                        translateAnchor.hashCode),
                                                                    pitchScale.hashCode),
                                                                pitchAlignment.hashCode),
                                                            strokeWidth.hashCode),
                                                        strokeColor.hashCode),
                                                    radiusTransition.hashCode),
                                                colorTransition.hashCode),
                                            blurTransition.hashCode),
                                        opacityTransition.hashCode),
                                    translateTransition.hashCode),
                                strokeWidthTransition.hashCode),
                            strokeColorTransition.hashCode),
                        strokeOpacityTransition.hashCode),
                    id.hashCode),
                visible.hashCode),
            minZoom.hashCode),
        maxZoom.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CircleLayerModel')
          ..add('sourceId', sourceId)
          ..add('radius', radius)
          ..add('color', color)
          ..add('blur', blur)
          ..add('translate', translate)
          ..add('translateAnchor', translateAnchor)
          ..add('pitchScale', pitchScale)
          ..add('pitchAlignment', pitchAlignment)
          ..add('strokeWidth', strokeWidth)
          ..add('strokeColor', strokeColor)
          ..add('radiusTransition', radiusTransition)
          ..add('colorTransition', colorTransition)
          ..add('blurTransition', blurTransition)
          ..add('opacityTransition', opacityTransition)
          ..add('translateTransition', translateTransition)
          ..add('strokeWidthTransition', strokeWidthTransition)
          ..add('strokeColorTransition', strokeColorTransition)
          ..add('strokeOpacityTransition', strokeOpacityTransition)
          ..add('id', id)
          ..add('visible', visible)
          ..add('minZoom', minZoom)
          ..add('maxZoom', maxZoom))
        .toString();
  }
}

class CircleLayerModelBuilder
    implements
        Builder<CircleLayerModel, CircleLayerModelBuilder>,
        LayerModelBuilder {
  _$CircleLayerModel _$v;

  String _sourceId;
  String get sourceId => _$this._sourceId;
  set sourceId(String sourceId) => _$this._sourceId = sourceId;

  double _radius;
  double get radius => _$this._radius;
  set radius(double radius) => _$this._radius = radius;

  int _color;
  int get color => _$this._color;
  set color(int color) => _$this._color = color;

  double _blur;
  double get blur => _$this._blur;
  set blur(double blur) => _$this._blur = blur;

  ListBuilder<double> _translate;
  ListBuilder<double> get translate =>
      _$this._translate ??= new ListBuilder<double>();
  set translate(ListBuilder<double> translate) => _$this._translate = translate;

  TranslateAnchor _translateAnchor;
  TranslateAnchor get translateAnchor => _$this._translateAnchor;
  set translateAnchor(TranslateAnchor translateAnchor) =>
      _$this._translateAnchor = translateAnchor;

  TranslateAnchor _pitchScale;
  TranslateAnchor get pitchScale => _$this._pitchScale;
  set pitchScale(TranslateAnchor pitchScale) => _$this._pitchScale = pitchScale;

  TranslateAnchor _pitchAlignment;
  TranslateAnchor get pitchAlignment => _$this._pitchAlignment;
  set pitchAlignment(TranslateAnchor pitchAlignment) =>
      _$this._pitchAlignment = pitchAlignment;

  double _strokeWidth;
  double get strokeWidth => _$this._strokeWidth;
  set strokeWidth(double strokeWidth) => _$this._strokeWidth = strokeWidth;

  int _strokeColor;
  int get strokeColor => _$this._strokeColor;
  set strokeColor(int strokeColor) => _$this._strokeColor = strokeColor;

  TransitionOptionsBuilder _radiusTransition;
  TransitionOptionsBuilder get radiusTransition =>
      _$this._radiusTransition ??= new TransitionOptionsBuilder();
  set radiusTransition(TransitionOptionsBuilder radiusTransition) =>
      _$this._radiusTransition = radiusTransition;

  TransitionOptionsBuilder _colorTransition;
  TransitionOptionsBuilder get colorTransition =>
      _$this._colorTransition ??= new TransitionOptionsBuilder();
  set colorTransition(TransitionOptionsBuilder colorTransition) =>
      _$this._colorTransition = colorTransition;

  TransitionOptionsBuilder _blurTransition;
  TransitionOptionsBuilder get blurTransition =>
      _$this._blurTransition ??= new TransitionOptionsBuilder();
  set blurTransition(TransitionOptionsBuilder blurTransition) =>
      _$this._blurTransition = blurTransition;

  TransitionOptionsBuilder _opacityTransition;
  TransitionOptionsBuilder get opacityTransition =>
      _$this._opacityTransition ??= new TransitionOptionsBuilder();
  set opacityTransition(TransitionOptionsBuilder opacityTransition) =>
      _$this._opacityTransition = opacityTransition;

  TransitionOptionsBuilder _translateTransition;
  TransitionOptionsBuilder get translateTransition =>
      _$this._translateTransition ??= new TransitionOptionsBuilder();
  set translateTransition(TransitionOptionsBuilder translateTransition) =>
      _$this._translateTransition = translateTransition;

  TransitionOptionsBuilder _strokeWidthTransition;
  TransitionOptionsBuilder get strokeWidthTransition =>
      _$this._strokeWidthTransition ??= new TransitionOptionsBuilder();
  set strokeWidthTransition(TransitionOptionsBuilder strokeWidthTransition) =>
      _$this._strokeWidthTransition = strokeWidthTransition;

  TransitionOptionsBuilder _strokeColorTransition;
  TransitionOptionsBuilder get strokeColorTransition =>
      _$this._strokeColorTransition ??= new TransitionOptionsBuilder();
  set strokeColorTransition(TransitionOptionsBuilder strokeColorTransition) =>
      _$this._strokeColorTransition = strokeColorTransition;

  TransitionOptionsBuilder _strokeOpacityTransition;
  TransitionOptionsBuilder get strokeOpacityTransition =>
      _$this._strokeOpacityTransition ??= new TransitionOptionsBuilder();
  set strokeOpacityTransition(
          TransitionOptionsBuilder strokeOpacityTransition) =>
      _$this._strokeOpacityTransition = strokeOpacityTransition;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  bool _visible;
  bool get visible => _$this._visible;
  set visible(bool visible) => _$this._visible = visible;

  double _minZoom;
  double get minZoom => _$this._minZoom;
  set minZoom(double minZoom) => _$this._minZoom = minZoom;

  double _maxZoom;
  double get maxZoom => _$this._maxZoom;
  set maxZoom(double maxZoom) => _$this._maxZoom = maxZoom;

  CircleLayerModelBuilder();

  CircleLayerModelBuilder get _$this {
    if (_$v != null) {
      _sourceId = _$v.sourceId;
      _radius = _$v.radius;
      _color = _$v.color;
      _blur = _$v.blur;
      _translate = _$v.translate?.toBuilder();
      _translateAnchor = _$v.translateAnchor;
      _pitchScale = _$v.pitchScale;
      _pitchAlignment = _$v.pitchAlignment;
      _strokeWidth = _$v.strokeWidth;
      _strokeColor = _$v.strokeColor;
      _radiusTransition = _$v.radiusTransition?.toBuilder();
      _colorTransition = _$v.colorTransition?.toBuilder();
      _blurTransition = _$v.blurTransition?.toBuilder();
      _opacityTransition = _$v.opacityTransition?.toBuilder();
      _translateTransition = _$v.translateTransition?.toBuilder();
      _strokeWidthTransition = _$v.strokeWidthTransition?.toBuilder();
      _strokeColorTransition = _$v.strokeColorTransition?.toBuilder();
      _strokeOpacityTransition = _$v.strokeOpacityTransition?.toBuilder();
      _id = _$v.id;
      _visible = _$v.visible;
      _minZoom = _$v.minZoom;
      _maxZoom = _$v.maxZoom;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant CircleLayerModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CircleLayerModel;
  }

  @override
  void update(void Function(CircleLayerModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CircleLayerModel build() {
    _$CircleLayerModel _$result;
    try {
      _$result = _$v ??
          new _$CircleLayerModel._(
              sourceId: sourceId,
              radius: radius,
              color: color,
              blur: blur,
              translate: translate.build(),
              translateAnchor: translateAnchor,
              pitchScale: pitchScale,
              pitchAlignment: pitchAlignment,
              strokeWidth: strokeWidth,
              strokeColor: strokeColor,
              radiusTransition: radiusTransition.build(),
              colorTransition: colorTransition.build(),
              blurTransition: blurTransition.build(),
              opacityTransition: opacityTransition.build(),
              translateTransition: translateTransition.build(),
              strokeWidthTransition: strokeWidthTransition.build(),
              strokeColorTransition: strokeColorTransition.build(),
              strokeOpacityTransition: strokeOpacityTransition.build(),
              id: id,
              visible: visible,
              minZoom: minZoom,
              maxZoom: maxZoom);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'translate';
        translate.build();

        _$failedField = 'radiusTransition';
        radiusTransition.build();
        _$failedField = 'colorTransition';
        colorTransition.build();
        _$failedField = 'blurTransition';
        blurTransition.build();
        _$failedField = 'opacityTransition';
        opacityTransition.build();
        _$failedField = 'translateTransition';
        translateTransition.build();
        _$failedField = 'strokeWidthTransition';
        strokeWidthTransition.build();
        _$failedField = 'strokeColorTransition';
        strokeColorTransition.build();
        _$failedField = 'strokeOpacityTransition';
        strokeOpacityTransition.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CircleLayerModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$FillExtrusionLayerModel extends FillExtrusionLayerModel {
  @override
  final String sourceId;
  @override
  final int color;
  @override
  final BuiltList<double> translate;
  @override
  final TranslateAnchor translateAnchor;
  @override
  final String pattern;
  @override
  final double height;
  @override
  final double base;
  @override
  final bool verticalGradient;
  @override
  final TransitionOptions opacityTransition;
  @override
  final TransitionOptions colorTransition;
  @override
  final TransitionOptions translateTransition;
  @override
  final TransitionOptions patternTransition;
  @override
  final TransitionOptions heightTransition;
  @override
  final TransitionOptions baseTransition;
  @override
  final String id;
  @override
  final bool visible;
  @override
  final double minZoom;
  @override
  final double maxZoom;
  Uint8List __data;
  Uint8List __sourceData;

  factory _$FillExtrusionLayerModel(
          [void Function(FillExtrusionLayerModelBuilder) updates]) =>
      (new FillExtrusionLayerModelBuilder()..update(updates)).build();

  _$FillExtrusionLayerModel._(
      {this.sourceId,
      this.color,
      this.translate,
      this.translateAnchor,
      this.pattern,
      this.height,
      this.base,
      this.verticalGradient,
      this.opacityTransition,
      this.colorTransition,
      this.translateTransition,
      this.patternTransition,
      this.heightTransition,
      this.baseTransition,
      this.id,
      this.visible,
      this.minZoom,
      this.maxZoom})
      : super._() {
    if (sourceId == null) {
      throw new BuiltValueNullFieldError('FillExtrusionLayerModel', 'sourceId');
    }
    if (color == null) {
      throw new BuiltValueNullFieldError('FillExtrusionLayerModel', 'color');
    }
    if (translate == null) {
      throw new BuiltValueNullFieldError(
          'FillExtrusionLayerModel', 'translate');
    }
    if (translateAnchor == null) {
      throw new BuiltValueNullFieldError(
          'FillExtrusionLayerModel', 'translateAnchor');
    }
    if (height == null) {
      throw new BuiltValueNullFieldError('FillExtrusionLayerModel', 'height');
    }
    if (base == null) {
      throw new BuiltValueNullFieldError('FillExtrusionLayerModel', 'base');
    }
    if (verticalGradient == null) {
      throw new BuiltValueNullFieldError(
          'FillExtrusionLayerModel', 'verticalGradient');
    }
    if (opacityTransition == null) {
      throw new BuiltValueNullFieldError(
          'FillExtrusionLayerModel', 'opacityTransition');
    }
    if (colorTransition == null) {
      throw new BuiltValueNullFieldError(
          'FillExtrusionLayerModel', 'colorTransition');
    }
    if (translateTransition == null) {
      throw new BuiltValueNullFieldError(
          'FillExtrusionLayerModel', 'translateTransition');
    }
    if (patternTransition == null) {
      throw new BuiltValueNullFieldError(
          'FillExtrusionLayerModel', 'patternTransition');
    }
    if (heightTransition == null) {
      throw new BuiltValueNullFieldError(
          'FillExtrusionLayerModel', 'heightTransition');
    }
    if (baseTransition == null) {
      throw new BuiltValueNullFieldError(
          'FillExtrusionLayerModel', 'baseTransition');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('FillExtrusionLayerModel', 'id');
    }
    if (visible == null) {
      throw new BuiltValueNullFieldError('FillExtrusionLayerModel', 'visible');
    }
    if (minZoom == null) {
      throw new BuiltValueNullFieldError('FillExtrusionLayerModel', 'minZoom');
    }
    if (maxZoom == null) {
      throw new BuiltValueNullFieldError('FillExtrusionLayerModel', 'maxZoom');
    }
  }

  @override
  Uint8List get data => __data ??= super.data;

  @override
  Uint8List get sourceData => __sourceData ??= super.sourceData;

  @override
  FillExtrusionLayerModel rebuild(
          void Function(FillExtrusionLayerModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FillExtrusionLayerModelBuilder toBuilder() =>
      new FillExtrusionLayerModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FillExtrusionLayerModel &&
        sourceId == other.sourceId &&
        color == other.color &&
        translate == other.translate &&
        translateAnchor == other.translateAnchor &&
        pattern == other.pattern &&
        height == other.height &&
        base == other.base &&
        verticalGradient == other.verticalGradient &&
        opacityTransition == other.opacityTransition &&
        colorTransition == other.colorTransition &&
        translateTransition == other.translateTransition &&
        patternTransition == other.patternTransition &&
        heightTransition == other.heightTransition &&
        baseTransition == other.baseTransition &&
        id == other.id &&
        visible == other.visible &&
        minZoom == other.minZoom &&
        maxZoom == other.maxZoom;
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
                                                                            0,
                                                                            sourceId
                                                                                .hashCode),
                                                                        color
                                                                            .hashCode),
                                                                    translate
                                                                        .hashCode),
                                                                translateAnchor
                                                                    .hashCode),
                                                            pattern.hashCode),
                                                        height.hashCode),
                                                    base.hashCode),
                                                verticalGradient.hashCode),
                                            opacityTransition.hashCode),
                                        colorTransition.hashCode),
                                    translateTransition.hashCode),
                                patternTransition.hashCode),
                            heightTransition.hashCode),
                        baseTransition.hashCode),
                    id.hashCode),
                visible.hashCode),
            minZoom.hashCode),
        maxZoom.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FillExtrusionLayerModel')
          ..add('sourceId', sourceId)
          ..add('color', color)
          ..add('translate', translate)
          ..add('translateAnchor', translateAnchor)
          ..add('pattern', pattern)
          ..add('height', height)
          ..add('base', base)
          ..add('verticalGradient', verticalGradient)
          ..add('opacityTransition', opacityTransition)
          ..add('colorTransition', colorTransition)
          ..add('translateTransition', translateTransition)
          ..add('patternTransition', patternTransition)
          ..add('heightTransition', heightTransition)
          ..add('baseTransition', baseTransition)
          ..add('id', id)
          ..add('visible', visible)
          ..add('minZoom', minZoom)
          ..add('maxZoom', maxZoom))
        .toString();
  }
}

class FillExtrusionLayerModelBuilder
    implements
        Builder<FillExtrusionLayerModel, FillExtrusionLayerModelBuilder>,
        LayerModelBuilder {
  _$FillExtrusionLayerModel _$v;

  String _sourceId;
  String get sourceId => _$this._sourceId;
  set sourceId(String sourceId) => _$this._sourceId = sourceId;

  int _color;
  int get color => _$this._color;
  set color(int color) => _$this._color = color;

  ListBuilder<double> _translate;
  ListBuilder<double> get translate =>
      _$this._translate ??= new ListBuilder<double>();
  set translate(ListBuilder<double> translate) => _$this._translate = translate;

  TranslateAnchor _translateAnchor;
  TranslateAnchor get translateAnchor => _$this._translateAnchor;
  set translateAnchor(TranslateAnchor translateAnchor) =>
      _$this._translateAnchor = translateAnchor;

  String _pattern;
  String get pattern => _$this._pattern;
  set pattern(String pattern) => _$this._pattern = pattern;

  double _height;
  double get height => _$this._height;
  set height(double height) => _$this._height = height;

  double _base;
  double get base => _$this._base;
  set base(double base) => _$this._base = base;

  bool _verticalGradient;
  bool get verticalGradient => _$this._verticalGradient;
  set verticalGradient(bool verticalGradient) =>
      _$this._verticalGradient = verticalGradient;

  TransitionOptionsBuilder _opacityTransition;
  TransitionOptionsBuilder get opacityTransition =>
      _$this._opacityTransition ??= new TransitionOptionsBuilder();
  set opacityTransition(TransitionOptionsBuilder opacityTransition) =>
      _$this._opacityTransition = opacityTransition;

  TransitionOptionsBuilder _colorTransition;
  TransitionOptionsBuilder get colorTransition =>
      _$this._colorTransition ??= new TransitionOptionsBuilder();
  set colorTransition(TransitionOptionsBuilder colorTransition) =>
      _$this._colorTransition = colorTransition;

  TransitionOptionsBuilder _translateTransition;
  TransitionOptionsBuilder get translateTransition =>
      _$this._translateTransition ??= new TransitionOptionsBuilder();
  set translateTransition(TransitionOptionsBuilder translateTransition) =>
      _$this._translateTransition = translateTransition;

  TransitionOptionsBuilder _patternTransition;
  TransitionOptionsBuilder get patternTransition =>
      _$this._patternTransition ??= new TransitionOptionsBuilder();
  set patternTransition(TransitionOptionsBuilder patternTransition) =>
      _$this._patternTransition = patternTransition;

  TransitionOptionsBuilder _heightTransition;
  TransitionOptionsBuilder get heightTransition =>
      _$this._heightTransition ??= new TransitionOptionsBuilder();
  set heightTransition(TransitionOptionsBuilder heightTransition) =>
      _$this._heightTransition = heightTransition;

  TransitionOptionsBuilder _baseTransition;
  TransitionOptionsBuilder get baseTransition =>
      _$this._baseTransition ??= new TransitionOptionsBuilder();
  set baseTransition(TransitionOptionsBuilder baseTransition) =>
      _$this._baseTransition = baseTransition;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  bool _visible;
  bool get visible => _$this._visible;
  set visible(bool visible) => _$this._visible = visible;

  double _minZoom;
  double get minZoom => _$this._minZoom;
  set minZoom(double minZoom) => _$this._minZoom = minZoom;

  double _maxZoom;
  double get maxZoom => _$this._maxZoom;
  set maxZoom(double maxZoom) => _$this._maxZoom = maxZoom;

  FillExtrusionLayerModelBuilder();

  FillExtrusionLayerModelBuilder get _$this {
    if (_$v != null) {
      _sourceId = _$v.sourceId;
      _color = _$v.color;
      _translate = _$v.translate?.toBuilder();
      _translateAnchor = _$v.translateAnchor;
      _pattern = _$v.pattern;
      _height = _$v.height;
      _base = _$v.base;
      _verticalGradient = _$v.verticalGradient;
      _opacityTransition = _$v.opacityTransition?.toBuilder();
      _colorTransition = _$v.colorTransition?.toBuilder();
      _translateTransition = _$v.translateTransition?.toBuilder();
      _patternTransition = _$v.patternTransition?.toBuilder();
      _heightTransition = _$v.heightTransition?.toBuilder();
      _baseTransition = _$v.baseTransition?.toBuilder();
      _id = _$v.id;
      _visible = _$v.visible;
      _minZoom = _$v.minZoom;
      _maxZoom = _$v.maxZoom;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant FillExtrusionLayerModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$FillExtrusionLayerModel;
  }

  @override
  void update(void Function(FillExtrusionLayerModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FillExtrusionLayerModel build() {
    _$FillExtrusionLayerModel _$result;
    try {
      _$result = _$v ??
          new _$FillExtrusionLayerModel._(
              sourceId: sourceId,
              color: color,
              translate: translate.build(),
              translateAnchor: translateAnchor,
              pattern: pattern,
              height: height,
              base: base,
              verticalGradient: verticalGradient,
              opacityTransition: opacityTransition.build(),
              colorTransition: colorTransition.build(),
              translateTransition: translateTransition.build(),
              patternTransition: patternTransition.build(),
              heightTransition: heightTransition.build(),
              baseTransition: baseTransition.build(),
              id: id,
              visible: visible,
              minZoom: minZoom,
              maxZoom: maxZoom);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'translate';
        translate.build();

        _$failedField = 'opacityTransition';
        opacityTransition.build();
        _$failedField = 'colorTransition';
        colorTransition.build();
        _$failedField = 'translateTransition';
        translateTransition.build();
        _$failedField = 'patternTransition';
        patternTransition.build();
        _$failedField = 'heightTransition';
        heightTransition.build();
        _$failedField = 'baseTransition';
        baseTransition.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'FillExtrusionLayerModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$FillLayerModel extends FillLayerModel {
  @override
  final String sourceId;
  @override
  final bool antialias;
  @override
  final int color;
  @override
  final int outlineColor;
  @override
  final BuiltList<double> translate;
  @override
  final TranslateAnchor translateAnchor;
  @override
  final String pattern;
  @override
  final TransitionOptions opacityTransition;
  @override
  final TransitionOptions colorTransition;
  @override
  final TransitionOptions outlineColorTransition;
  @override
  final TransitionOptions translateTransition;
  @override
  final TransitionOptions patternTransition;
  @override
  final String id;
  @override
  final bool visible;
  @override
  final double minZoom;
  @override
  final double maxZoom;
  Uint8List __data;
  Uint8List __sourceData;

  factory _$FillLayerModel([void Function(FillLayerModelBuilder) updates]) =>
      (new FillLayerModelBuilder()..update(updates)).build();

  _$FillLayerModel._(
      {this.sourceId,
      this.antialias,
      this.color,
      this.outlineColor,
      this.translate,
      this.translateAnchor,
      this.pattern,
      this.opacityTransition,
      this.colorTransition,
      this.outlineColorTransition,
      this.translateTransition,
      this.patternTransition,
      this.id,
      this.visible,
      this.minZoom,
      this.maxZoom})
      : super._() {
    if (sourceId == null) {
      throw new BuiltValueNullFieldError('FillLayerModel', 'sourceId');
    }
    if (antialias == null) {
      throw new BuiltValueNullFieldError('FillLayerModel', 'antialias');
    }
    if (color == null) {
      throw new BuiltValueNullFieldError('FillLayerModel', 'color');
    }
    if (translate == null) {
      throw new BuiltValueNullFieldError('FillLayerModel', 'translate');
    }
    if (translateAnchor == null) {
      throw new BuiltValueNullFieldError('FillLayerModel', 'translateAnchor');
    }
    if (opacityTransition == null) {
      throw new BuiltValueNullFieldError('FillLayerModel', 'opacityTransition');
    }
    if (colorTransition == null) {
      throw new BuiltValueNullFieldError('FillLayerModel', 'colorTransition');
    }
    if (outlineColorTransition == null) {
      throw new BuiltValueNullFieldError(
          'FillLayerModel', 'outlineColorTransition');
    }
    if (translateTransition == null) {
      throw new BuiltValueNullFieldError(
          'FillLayerModel', 'translateTransition');
    }
    if (patternTransition == null) {
      throw new BuiltValueNullFieldError('FillLayerModel', 'patternTransition');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('FillLayerModel', 'id');
    }
    if (visible == null) {
      throw new BuiltValueNullFieldError('FillLayerModel', 'visible');
    }
    if (minZoom == null) {
      throw new BuiltValueNullFieldError('FillLayerModel', 'minZoom');
    }
    if (maxZoom == null) {
      throw new BuiltValueNullFieldError('FillLayerModel', 'maxZoom');
    }
  }

  @override
  Uint8List get data => __data ??= super.data;

  @override
  Uint8List get sourceData => __sourceData ??= super.sourceData;

  @override
  FillLayerModel rebuild(void Function(FillLayerModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FillLayerModelBuilder toBuilder() =>
      new FillLayerModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FillLayerModel &&
        sourceId == other.sourceId &&
        antialias == other.antialias &&
        color == other.color &&
        outlineColor == other.outlineColor &&
        translate == other.translate &&
        translateAnchor == other.translateAnchor &&
        pattern == other.pattern &&
        opacityTransition == other.opacityTransition &&
        colorTransition == other.colorTransition &&
        outlineColorTransition == other.outlineColorTransition &&
        translateTransition == other.translateTransition &&
        patternTransition == other.patternTransition &&
        id == other.id &&
        visible == other.visible &&
        minZoom == other.minZoom &&
        maxZoom == other.maxZoom;
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
                                                                    0,
                                                                    sourceId
                                                                        .hashCode),
                                                                antialias
                                                                    .hashCode),
                                                            color.hashCode),
                                                        outlineColor.hashCode),
                                                    translate.hashCode),
                                                translateAnchor.hashCode),
                                            pattern.hashCode),
                                        opacityTransition.hashCode),
                                    colorTransition.hashCode),
                                outlineColorTransition.hashCode),
                            translateTransition.hashCode),
                        patternTransition.hashCode),
                    id.hashCode),
                visible.hashCode),
            minZoom.hashCode),
        maxZoom.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FillLayerModel')
          ..add('sourceId', sourceId)
          ..add('antialias', antialias)
          ..add('color', color)
          ..add('outlineColor', outlineColor)
          ..add('translate', translate)
          ..add('translateAnchor', translateAnchor)
          ..add('pattern', pattern)
          ..add('opacityTransition', opacityTransition)
          ..add('colorTransition', colorTransition)
          ..add('outlineColorTransition', outlineColorTransition)
          ..add('translateTransition', translateTransition)
          ..add('patternTransition', patternTransition)
          ..add('id', id)
          ..add('visible', visible)
          ..add('minZoom', minZoom)
          ..add('maxZoom', maxZoom))
        .toString();
  }
}

class FillLayerModelBuilder
    implements
        Builder<FillLayerModel, FillLayerModelBuilder>,
        LayerModelBuilder {
  _$FillLayerModel _$v;

  String _sourceId;
  String get sourceId => _$this._sourceId;
  set sourceId(String sourceId) => _$this._sourceId = sourceId;

  bool _antialias;
  bool get antialias => _$this._antialias;
  set antialias(bool antialias) => _$this._antialias = antialias;

  int _color;
  int get color => _$this._color;
  set color(int color) => _$this._color = color;

  int _outlineColor;
  int get outlineColor => _$this._outlineColor;
  set outlineColor(int outlineColor) => _$this._outlineColor = outlineColor;

  ListBuilder<double> _translate;
  ListBuilder<double> get translate =>
      _$this._translate ??= new ListBuilder<double>();
  set translate(ListBuilder<double> translate) => _$this._translate = translate;

  TranslateAnchor _translateAnchor;
  TranslateAnchor get translateAnchor => _$this._translateAnchor;
  set translateAnchor(TranslateAnchor translateAnchor) =>
      _$this._translateAnchor = translateAnchor;

  String _pattern;
  String get pattern => _$this._pattern;
  set pattern(String pattern) => _$this._pattern = pattern;

  TransitionOptionsBuilder _opacityTransition;
  TransitionOptionsBuilder get opacityTransition =>
      _$this._opacityTransition ??= new TransitionOptionsBuilder();
  set opacityTransition(TransitionOptionsBuilder opacityTransition) =>
      _$this._opacityTransition = opacityTransition;

  TransitionOptionsBuilder _colorTransition;
  TransitionOptionsBuilder get colorTransition =>
      _$this._colorTransition ??= new TransitionOptionsBuilder();
  set colorTransition(TransitionOptionsBuilder colorTransition) =>
      _$this._colorTransition = colorTransition;

  TransitionOptionsBuilder _outlineColorTransition;
  TransitionOptionsBuilder get outlineColorTransition =>
      _$this._outlineColorTransition ??= new TransitionOptionsBuilder();
  set outlineColorTransition(TransitionOptionsBuilder outlineColorTransition) =>
      _$this._outlineColorTransition = outlineColorTransition;

  TransitionOptionsBuilder _translateTransition;
  TransitionOptionsBuilder get translateTransition =>
      _$this._translateTransition ??= new TransitionOptionsBuilder();
  set translateTransition(TransitionOptionsBuilder translateTransition) =>
      _$this._translateTransition = translateTransition;

  TransitionOptionsBuilder _patternTransition;
  TransitionOptionsBuilder get patternTransition =>
      _$this._patternTransition ??= new TransitionOptionsBuilder();
  set patternTransition(TransitionOptionsBuilder patternTransition) =>
      _$this._patternTransition = patternTransition;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  bool _visible;
  bool get visible => _$this._visible;
  set visible(bool visible) => _$this._visible = visible;

  double _minZoom;
  double get minZoom => _$this._minZoom;
  set minZoom(double minZoom) => _$this._minZoom = minZoom;

  double _maxZoom;
  double get maxZoom => _$this._maxZoom;
  set maxZoom(double maxZoom) => _$this._maxZoom = maxZoom;

  FillLayerModelBuilder();

  FillLayerModelBuilder get _$this {
    if (_$v != null) {
      _sourceId = _$v.sourceId;
      _antialias = _$v.antialias;
      _color = _$v.color;
      _outlineColor = _$v.outlineColor;
      _translate = _$v.translate?.toBuilder();
      _translateAnchor = _$v.translateAnchor;
      _pattern = _$v.pattern;
      _opacityTransition = _$v.opacityTransition?.toBuilder();
      _colorTransition = _$v.colorTransition?.toBuilder();
      _outlineColorTransition = _$v.outlineColorTransition?.toBuilder();
      _translateTransition = _$v.translateTransition?.toBuilder();
      _patternTransition = _$v.patternTransition?.toBuilder();
      _id = _$v.id;
      _visible = _$v.visible;
      _minZoom = _$v.minZoom;
      _maxZoom = _$v.maxZoom;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant FillLayerModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$FillLayerModel;
  }

  @override
  void update(void Function(FillLayerModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FillLayerModel build() {
    _$FillLayerModel _$result;
    try {
      _$result = _$v ??
          new _$FillLayerModel._(
              sourceId: sourceId,
              antialias: antialias,
              color: color,
              outlineColor: outlineColor,
              translate: translate.build(),
              translateAnchor: translateAnchor,
              pattern: pattern,
              opacityTransition: opacityTransition.build(),
              colorTransition: colorTransition.build(),
              outlineColorTransition: outlineColorTransition.build(),
              translateTransition: translateTransition.build(),
              patternTransition: patternTransition.build(),
              id: id,
              visible: visible,
              minZoom: minZoom,
              maxZoom: maxZoom);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'translate';
        translate.build();

        _$failedField = 'opacityTransition';
        opacityTransition.build();
        _$failedField = 'colorTransition';
        colorTransition.build();
        _$failedField = 'outlineColorTransition';
        outlineColorTransition.build();
        _$failedField = 'translateTransition';
        translateTransition.build();
        _$failedField = 'patternTransition';
        patternTransition.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'FillLayerModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$HeatmapLayerModel extends HeatmapLayerModel {
  @override
  final String sourceId;
  @override
  final double radius;
  @override
  final double weight;
  @override
  final double intensity;
  @override
  final int color;
  @override
  final TransitionOptions radiusTransition;
  @override
  final TransitionOptions intensityTransition;
  @override
  final TransitionOptions opacityTransition;
  @override
  final String id;
  @override
  final bool visible;
  @override
  final double minZoom;
  @override
  final double maxZoom;
  Uint8List __data;
  Uint8List __sourceData;

  factory _$HeatmapLayerModel(
          [void Function(HeatmapLayerModelBuilder) updates]) =>
      (new HeatmapLayerModelBuilder()..update(updates)).build();

  _$HeatmapLayerModel._(
      {this.sourceId,
      this.radius,
      this.weight,
      this.intensity,
      this.color,
      this.radiusTransition,
      this.intensityTransition,
      this.opacityTransition,
      this.id,
      this.visible,
      this.minZoom,
      this.maxZoom})
      : super._() {
    if (sourceId == null) {
      throw new BuiltValueNullFieldError('HeatmapLayerModel', 'sourceId');
    }
    if (radius == null) {
      throw new BuiltValueNullFieldError('HeatmapLayerModel', 'radius');
    }
    if (weight == null) {
      throw new BuiltValueNullFieldError('HeatmapLayerModel', 'weight');
    }
    if (intensity == null) {
      throw new BuiltValueNullFieldError('HeatmapLayerModel', 'intensity');
    }
    if (color == null) {
      throw new BuiltValueNullFieldError('HeatmapLayerModel', 'color');
    }
    if (radiusTransition == null) {
      throw new BuiltValueNullFieldError(
          'HeatmapLayerModel', 'radiusTransition');
    }
    if (intensityTransition == null) {
      throw new BuiltValueNullFieldError(
          'HeatmapLayerModel', 'intensityTransition');
    }
    if (opacityTransition == null) {
      throw new BuiltValueNullFieldError(
          'HeatmapLayerModel', 'opacityTransition');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('HeatmapLayerModel', 'id');
    }
    if (visible == null) {
      throw new BuiltValueNullFieldError('HeatmapLayerModel', 'visible');
    }
    if (minZoom == null) {
      throw new BuiltValueNullFieldError('HeatmapLayerModel', 'minZoom');
    }
    if (maxZoom == null) {
      throw new BuiltValueNullFieldError('HeatmapLayerModel', 'maxZoom');
    }
  }

  @override
  Uint8List get data => __data ??= super.data;

  @override
  Uint8List get sourceData => __sourceData ??= super.sourceData;

  @override
  HeatmapLayerModel rebuild(void Function(HeatmapLayerModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HeatmapLayerModelBuilder toBuilder() =>
      new HeatmapLayerModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HeatmapLayerModel &&
        sourceId == other.sourceId &&
        radius == other.radius &&
        weight == other.weight &&
        intensity == other.intensity &&
        color == other.color &&
        radiusTransition == other.radiusTransition &&
        intensityTransition == other.intensityTransition &&
        opacityTransition == other.opacityTransition &&
        id == other.id &&
        visible == other.visible &&
        minZoom == other.minZoom &&
        maxZoom == other.maxZoom;
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
                                            $jc($jc(0, sourceId.hashCode),
                                                radius.hashCode),
                                            weight.hashCode),
                                        intensity.hashCode),
                                    color.hashCode),
                                radiusTransition.hashCode),
                            intensityTransition.hashCode),
                        opacityTransition.hashCode),
                    id.hashCode),
                visible.hashCode),
            minZoom.hashCode),
        maxZoom.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HeatmapLayerModel')
          ..add('sourceId', sourceId)
          ..add('radius', radius)
          ..add('weight', weight)
          ..add('intensity', intensity)
          ..add('color', color)
          ..add('radiusTransition', radiusTransition)
          ..add('intensityTransition', intensityTransition)
          ..add('opacityTransition', opacityTransition)
          ..add('id', id)
          ..add('visible', visible)
          ..add('minZoom', minZoom)
          ..add('maxZoom', maxZoom))
        .toString();
  }
}

class HeatmapLayerModelBuilder
    implements
        Builder<HeatmapLayerModel, HeatmapLayerModelBuilder>,
        LayerModelBuilder {
  _$HeatmapLayerModel _$v;

  String _sourceId;
  String get sourceId => _$this._sourceId;
  set sourceId(String sourceId) => _$this._sourceId = sourceId;

  double _radius;
  double get radius => _$this._radius;
  set radius(double radius) => _$this._radius = radius;

  double _weight;
  double get weight => _$this._weight;
  set weight(double weight) => _$this._weight = weight;

  double _intensity;
  double get intensity => _$this._intensity;
  set intensity(double intensity) => _$this._intensity = intensity;

  int _color;
  int get color => _$this._color;
  set color(int color) => _$this._color = color;

  TransitionOptionsBuilder _radiusTransition;
  TransitionOptionsBuilder get radiusTransition =>
      _$this._radiusTransition ??= new TransitionOptionsBuilder();
  set radiusTransition(TransitionOptionsBuilder radiusTransition) =>
      _$this._radiusTransition = radiusTransition;

  TransitionOptionsBuilder _intensityTransition;
  TransitionOptionsBuilder get intensityTransition =>
      _$this._intensityTransition ??= new TransitionOptionsBuilder();
  set intensityTransition(TransitionOptionsBuilder intensityTransition) =>
      _$this._intensityTransition = intensityTransition;

  TransitionOptionsBuilder _opacityTransition;
  TransitionOptionsBuilder get opacityTransition =>
      _$this._opacityTransition ??= new TransitionOptionsBuilder();
  set opacityTransition(TransitionOptionsBuilder opacityTransition) =>
      _$this._opacityTransition = opacityTransition;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  bool _visible;
  bool get visible => _$this._visible;
  set visible(bool visible) => _$this._visible = visible;

  double _minZoom;
  double get minZoom => _$this._minZoom;
  set minZoom(double minZoom) => _$this._minZoom = minZoom;

  double _maxZoom;
  double get maxZoom => _$this._maxZoom;
  set maxZoom(double maxZoom) => _$this._maxZoom = maxZoom;

  HeatmapLayerModelBuilder();

  HeatmapLayerModelBuilder get _$this {
    if (_$v != null) {
      _sourceId = _$v.sourceId;
      _radius = _$v.radius;
      _weight = _$v.weight;
      _intensity = _$v.intensity;
      _color = _$v.color;
      _radiusTransition = _$v.radiusTransition?.toBuilder();
      _intensityTransition = _$v.intensityTransition?.toBuilder();
      _opacityTransition = _$v.opacityTransition?.toBuilder();
      _id = _$v.id;
      _visible = _$v.visible;
      _minZoom = _$v.minZoom;
      _maxZoom = _$v.maxZoom;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant HeatmapLayerModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$HeatmapLayerModel;
  }

  @override
  void update(void Function(HeatmapLayerModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HeatmapLayerModel build() {
    _$HeatmapLayerModel _$result;
    try {
      _$result = _$v ??
          new _$HeatmapLayerModel._(
              sourceId: sourceId,
              radius: radius,
              weight: weight,
              intensity: intensity,
              color: color,
              radiusTransition: radiusTransition.build(),
              intensityTransition: intensityTransition.build(),
              opacityTransition: opacityTransition.build(),
              id: id,
              visible: visible,
              minZoom: minZoom,
              maxZoom: maxZoom);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'radiusTransition';
        radiusTransition.build();
        _$failedField = 'intensityTransition';
        intensityTransition.build();
        _$failedField = 'opacityTransition';
        opacityTransition.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'HeatmapLayerModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$HillshadeLayerModel extends HillshadeLayerModel {
  @override
  final String sourceId;
  @override
  final double illuminationDirection;
  @override
  final TranslateAnchor illuminationAnchor;
  @override
  final double exaggeration;
  @override
  final int shadowColor;
  @override
  final int highlightColor;
  @override
  final int accentColor;
  @override
  final TransitionOptions exaggerationTransition;
  @override
  final TransitionOptions shadowColorTransition;
  @override
  final TransitionOptions highlightColorTransition;
  @override
  final TransitionOptions accentColorTransition;
  @override
  final String id;
  @override
  final bool visible;
  @override
  final double minZoom;
  @override
  final double maxZoom;
  Uint8List __data;
  Uint8List __sourceData;

  factory _$HillshadeLayerModel(
          [void Function(HillshadeLayerModelBuilder) updates]) =>
      (new HillshadeLayerModelBuilder()..update(updates)).build();

  _$HillshadeLayerModel._(
      {this.sourceId,
      this.illuminationDirection,
      this.illuminationAnchor,
      this.exaggeration,
      this.shadowColor,
      this.highlightColor,
      this.accentColor,
      this.exaggerationTransition,
      this.shadowColorTransition,
      this.highlightColorTransition,
      this.accentColorTransition,
      this.id,
      this.visible,
      this.minZoom,
      this.maxZoom})
      : super._() {
    if (sourceId == null) {
      throw new BuiltValueNullFieldError('HillshadeLayerModel', 'sourceId');
    }
    if (illuminationDirection == null) {
      throw new BuiltValueNullFieldError(
          'HillshadeLayerModel', 'illuminationDirection');
    }
    if (illuminationAnchor == null) {
      throw new BuiltValueNullFieldError(
          'HillshadeLayerModel', 'illuminationAnchor');
    }
    if (exaggeration == null) {
      throw new BuiltValueNullFieldError('HillshadeLayerModel', 'exaggeration');
    }
    if (shadowColor == null) {
      throw new BuiltValueNullFieldError('HillshadeLayerModel', 'shadowColor');
    }
    if (highlightColor == null) {
      throw new BuiltValueNullFieldError(
          'HillshadeLayerModel', 'highlightColor');
    }
    if (accentColor == null) {
      throw new BuiltValueNullFieldError('HillshadeLayerModel', 'accentColor');
    }
    if (exaggerationTransition == null) {
      throw new BuiltValueNullFieldError(
          'HillshadeLayerModel', 'exaggerationTransition');
    }
    if (shadowColorTransition == null) {
      throw new BuiltValueNullFieldError(
          'HillshadeLayerModel', 'shadowColorTransition');
    }
    if (highlightColorTransition == null) {
      throw new BuiltValueNullFieldError(
          'HillshadeLayerModel', 'highlightColorTransition');
    }
    if (accentColorTransition == null) {
      throw new BuiltValueNullFieldError(
          'HillshadeLayerModel', 'accentColorTransition');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('HillshadeLayerModel', 'id');
    }
    if (visible == null) {
      throw new BuiltValueNullFieldError('HillshadeLayerModel', 'visible');
    }
    if (minZoom == null) {
      throw new BuiltValueNullFieldError('HillshadeLayerModel', 'minZoom');
    }
    if (maxZoom == null) {
      throw new BuiltValueNullFieldError('HillshadeLayerModel', 'maxZoom');
    }
  }

  @override
  Uint8List get data => __data ??= super.data;

  @override
  Uint8List get sourceData => __sourceData ??= super.sourceData;

  @override
  HillshadeLayerModel rebuild(
          void Function(HillshadeLayerModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HillshadeLayerModelBuilder toBuilder() =>
      new HillshadeLayerModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HillshadeLayerModel &&
        sourceId == other.sourceId &&
        illuminationDirection == other.illuminationDirection &&
        illuminationAnchor == other.illuminationAnchor &&
        exaggeration == other.exaggeration &&
        shadowColor == other.shadowColor &&
        highlightColor == other.highlightColor &&
        accentColor == other.accentColor &&
        exaggerationTransition == other.exaggerationTransition &&
        shadowColorTransition == other.shadowColorTransition &&
        highlightColorTransition == other.highlightColorTransition &&
        accentColorTransition == other.accentColorTransition &&
        id == other.id &&
        visible == other.visible &&
        minZoom == other.minZoom &&
        maxZoom == other.maxZoom;
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
                                                                0,
                                                                sourceId
                                                                    .hashCode),
                                                            illuminationDirection
                                                                .hashCode),
                                                        illuminationAnchor
                                                            .hashCode),
                                                    exaggeration.hashCode),
                                                shadowColor.hashCode),
                                            highlightColor.hashCode),
                                        accentColor.hashCode),
                                    exaggerationTransition.hashCode),
                                shadowColorTransition.hashCode),
                            highlightColorTransition.hashCode),
                        accentColorTransition.hashCode),
                    id.hashCode),
                visible.hashCode),
            minZoom.hashCode),
        maxZoom.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HillshadeLayerModel')
          ..add('sourceId', sourceId)
          ..add('illuminationDirection', illuminationDirection)
          ..add('illuminationAnchor', illuminationAnchor)
          ..add('exaggeration', exaggeration)
          ..add('shadowColor', shadowColor)
          ..add('highlightColor', highlightColor)
          ..add('accentColor', accentColor)
          ..add('exaggerationTransition', exaggerationTransition)
          ..add('shadowColorTransition', shadowColorTransition)
          ..add('highlightColorTransition', highlightColorTransition)
          ..add('accentColorTransition', accentColorTransition)
          ..add('id', id)
          ..add('visible', visible)
          ..add('minZoom', minZoom)
          ..add('maxZoom', maxZoom))
        .toString();
  }
}

class HillshadeLayerModelBuilder
    implements
        Builder<HillshadeLayerModel, HillshadeLayerModelBuilder>,
        LayerModelBuilder {
  _$HillshadeLayerModel _$v;

  String _sourceId;
  String get sourceId => _$this._sourceId;
  set sourceId(String sourceId) => _$this._sourceId = sourceId;

  double _illuminationDirection;
  double get illuminationDirection => _$this._illuminationDirection;
  set illuminationDirection(double illuminationDirection) =>
      _$this._illuminationDirection = illuminationDirection;

  TranslateAnchor _illuminationAnchor;
  TranslateAnchor get illuminationAnchor => _$this._illuminationAnchor;
  set illuminationAnchor(TranslateAnchor illuminationAnchor) =>
      _$this._illuminationAnchor = illuminationAnchor;

  double _exaggeration;
  double get exaggeration => _$this._exaggeration;
  set exaggeration(double exaggeration) => _$this._exaggeration = exaggeration;

  int _shadowColor;
  int get shadowColor => _$this._shadowColor;
  set shadowColor(int shadowColor) => _$this._shadowColor = shadowColor;

  int _highlightColor;
  int get highlightColor => _$this._highlightColor;
  set highlightColor(int highlightColor) =>
      _$this._highlightColor = highlightColor;

  int _accentColor;
  int get accentColor => _$this._accentColor;
  set accentColor(int accentColor) => _$this._accentColor = accentColor;

  TransitionOptionsBuilder _exaggerationTransition;
  TransitionOptionsBuilder get exaggerationTransition =>
      _$this._exaggerationTransition ??= new TransitionOptionsBuilder();
  set exaggerationTransition(TransitionOptionsBuilder exaggerationTransition) =>
      _$this._exaggerationTransition = exaggerationTransition;

  TransitionOptionsBuilder _shadowColorTransition;
  TransitionOptionsBuilder get shadowColorTransition =>
      _$this._shadowColorTransition ??= new TransitionOptionsBuilder();
  set shadowColorTransition(TransitionOptionsBuilder shadowColorTransition) =>
      _$this._shadowColorTransition = shadowColorTransition;

  TransitionOptionsBuilder _highlightColorTransition;
  TransitionOptionsBuilder get highlightColorTransition =>
      _$this._highlightColorTransition ??= new TransitionOptionsBuilder();
  set highlightColorTransition(
          TransitionOptionsBuilder highlightColorTransition) =>
      _$this._highlightColorTransition = highlightColorTransition;

  TransitionOptionsBuilder _accentColorTransition;
  TransitionOptionsBuilder get accentColorTransition =>
      _$this._accentColorTransition ??= new TransitionOptionsBuilder();
  set accentColorTransition(TransitionOptionsBuilder accentColorTransition) =>
      _$this._accentColorTransition = accentColorTransition;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  bool _visible;
  bool get visible => _$this._visible;
  set visible(bool visible) => _$this._visible = visible;

  double _minZoom;
  double get minZoom => _$this._minZoom;
  set minZoom(double minZoom) => _$this._minZoom = minZoom;

  double _maxZoom;
  double get maxZoom => _$this._maxZoom;
  set maxZoom(double maxZoom) => _$this._maxZoom = maxZoom;

  HillshadeLayerModelBuilder();

  HillshadeLayerModelBuilder get _$this {
    if (_$v != null) {
      _sourceId = _$v.sourceId;
      _illuminationDirection = _$v.illuminationDirection;
      _illuminationAnchor = _$v.illuminationAnchor;
      _exaggeration = _$v.exaggeration;
      _shadowColor = _$v.shadowColor;
      _highlightColor = _$v.highlightColor;
      _accentColor = _$v.accentColor;
      _exaggerationTransition = _$v.exaggerationTransition?.toBuilder();
      _shadowColorTransition = _$v.shadowColorTransition?.toBuilder();
      _highlightColorTransition = _$v.highlightColorTransition?.toBuilder();
      _accentColorTransition = _$v.accentColorTransition?.toBuilder();
      _id = _$v.id;
      _visible = _$v.visible;
      _minZoom = _$v.minZoom;
      _maxZoom = _$v.maxZoom;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant HillshadeLayerModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$HillshadeLayerModel;
  }

  @override
  void update(void Function(HillshadeLayerModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HillshadeLayerModel build() {
    _$HillshadeLayerModel _$result;
    try {
      _$result = _$v ??
          new _$HillshadeLayerModel._(
              sourceId: sourceId,
              illuminationDirection: illuminationDirection,
              illuminationAnchor: illuminationAnchor,
              exaggeration: exaggeration,
              shadowColor: shadowColor,
              highlightColor: highlightColor,
              accentColor: accentColor,
              exaggerationTransition: exaggerationTransition.build(),
              shadowColorTransition: shadowColorTransition.build(),
              highlightColorTransition: highlightColorTransition.build(),
              accentColorTransition: accentColorTransition.build(),
              id: id,
              visible: visible,
              minZoom: minZoom,
              maxZoom: maxZoom);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'exaggerationTransition';
        exaggerationTransition.build();
        _$failedField = 'shadowColorTransition';
        shadowColorTransition.build();
        _$failedField = 'highlightColorTransition';
        highlightColorTransition.build();
        _$failedField = 'accentColorTransition';
        accentColorTransition.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'HillshadeLayerModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$LineLayerModel extends LineLayerModel {
  @override
  final String sourceId;
  @override
  final LineCap cap;
  @override
  final LineJoin join;
  @override
  final double miterLimit;
  @override
  final double roundLimit;
  @override
  final int color;
  @override
  final BuiltList<double> translate;
  @override
  final TranslateAnchor translateAnchor;
  @override
  final double width;
  @override
  final double gapWidth;
  @override
  final double offset;
  @override
  final double blur;
  @override
  final BuiltList<double> dasharray;
  @override
  final String pattern;
  @override
  final int gradient;
  @override
  final TransitionOptions opacityTransition;
  @override
  final TransitionOptions colorTransition;
  @override
  final TransitionOptions translateTransition;
  @override
  final TransitionOptions widthTransition;
  @override
  final TransitionOptions gapWidthTransition;
  @override
  final TransitionOptions offsetTransition;
  @override
  final TransitionOptions blurTransition;
  @override
  final TransitionOptions dasharrayTransition;
  @override
  final TransitionOptions patternTransition;
  @override
  final String id;
  @override
  final bool visible;
  @override
  final double minZoom;
  @override
  final double maxZoom;
  Uint8List __data;
  Uint8List __sourceData;

  factory _$LineLayerModel([void Function(LineLayerModelBuilder) updates]) =>
      (new LineLayerModelBuilder()..update(updates)).build();

  _$LineLayerModel._(
      {this.sourceId,
      this.cap,
      this.join,
      this.miterLimit,
      this.roundLimit,
      this.color,
      this.translate,
      this.translateAnchor,
      this.width,
      this.gapWidth,
      this.offset,
      this.blur,
      this.dasharray,
      this.pattern,
      this.gradient,
      this.opacityTransition,
      this.colorTransition,
      this.translateTransition,
      this.widthTransition,
      this.gapWidthTransition,
      this.offsetTransition,
      this.blurTransition,
      this.dasharrayTransition,
      this.patternTransition,
      this.id,
      this.visible,
      this.minZoom,
      this.maxZoom})
      : super._() {
    if (sourceId == null) {
      throw new BuiltValueNullFieldError('LineLayerModel', 'sourceId');
    }
    if (cap == null) {
      throw new BuiltValueNullFieldError('LineLayerModel', 'cap');
    }
    if (join == null) {
      throw new BuiltValueNullFieldError('LineLayerModel', 'join');
    }
    if (miterLimit == null) {
      throw new BuiltValueNullFieldError('LineLayerModel', 'miterLimit');
    }
    if (roundLimit == null) {
      throw new BuiltValueNullFieldError('LineLayerModel', 'roundLimit');
    }
    if (color == null) {
      throw new BuiltValueNullFieldError('LineLayerModel', 'color');
    }
    if (translate == null) {
      throw new BuiltValueNullFieldError('LineLayerModel', 'translate');
    }
    if (translateAnchor == null) {
      throw new BuiltValueNullFieldError('LineLayerModel', 'translateAnchor');
    }
    if (width == null) {
      throw new BuiltValueNullFieldError('LineLayerModel', 'width');
    }
    if (gapWidth == null) {
      throw new BuiltValueNullFieldError('LineLayerModel', 'gapWidth');
    }
    if (offset == null) {
      throw new BuiltValueNullFieldError('LineLayerModel', 'offset');
    }
    if (blur == null) {
      throw new BuiltValueNullFieldError('LineLayerModel', 'blur');
    }
    if (opacityTransition == null) {
      throw new BuiltValueNullFieldError('LineLayerModel', 'opacityTransition');
    }
    if (colorTransition == null) {
      throw new BuiltValueNullFieldError('LineLayerModel', 'colorTransition');
    }
    if (translateTransition == null) {
      throw new BuiltValueNullFieldError(
          'LineLayerModel', 'translateTransition');
    }
    if (widthTransition == null) {
      throw new BuiltValueNullFieldError('LineLayerModel', 'widthTransition');
    }
    if (gapWidthTransition == null) {
      throw new BuiltValueNullFieldError(
          'LineLayerModel', 'gapWidthTransition');
    }
    if (offsetTransition == null) {
      throw new BuiltValueNullFieldError('LineLayerModel', 'offsetTransition');
    }
    if (blurTransition == null) {
      throw new BuiltValueNullFieldError('LineLayerModel', 'blurTransition');
    }
    if (dasharrayTransition == null) {
      throw new BuiltValueNullFieldError(
          'LineLayerModel', 'dasharrayTransition');
    }
    if (patternTransition == null) {
      throw new BuiltValueNullFieldError('LineLayerModel', 'patternTransition');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('LineLayerModel', 'id');
    }
    if (visible == null) {
      throw new BuiltValueNullFieldError('LineLayerModel', 'visible');
    }
    if (minZoom == null) {
      throw new BuiltValueNullFieldError('LineLayerModel', 'minZoom');
    }
    if (maxZoom == null) {
      throw new BuiltValueNullFieldError('LineLayerModel', 'maxZoom');
    }
  }

  @override
  Uint8List get data => __data ??= super.data;

  @override
  Uint8List get sourceData => __sourceData ??= super.sourceData;

  @override
  LineLayerModel rebuild(void Function(LineLayerModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LineLayerModelBuilder toBuilder() =>
      new LineLayerModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LineLayerModel &&
        sourceId == other.sourceId &&
        cap == other.cap &&
        join == other.join &&
        miterLimit == other.miterLimit &&
        roundLimit == other.roundLimit &&
        color == other.color &&
        translate == other.translate &&
        translateAnchor == other.translateAnchor &&
        width == other.width &&
        gapWidth == other.gapWidth &&
        offset == other.offset &&
        blur == other.blur &&
        dasharray == other.dasharray &&
        pattern == other.pattern &&
        gradient == other.gradient &&
        opacityTransition == other.opacityTransition &&
        colorTransition == other.colorTransition &&
        translateTransition == other.translateTransition &&
        widthTransition == other.widthTransition &&
        gapWidthTransition == other.gapWidthTransition &&
        offsetTransition == other.offsetTransition &&
        blurTransition == other.blurTransition &&
        dasharrayTransition == other.dasharrayTransition &&
        patternTransition == other.patternTransition &&
        id == other.id &&
        visible == other.visible &&
        minZoom == other.minZoom &&
        maxZoom == other.maxZoom;
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
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, sourceId.hashCode), cap.hashCode), join.hashCode), miterLimit.hashCode), roundLimit.hashCode), color.hashCode), translate.hashCode), translateAnchor.hashCode), width.hashCode),
                                                                                gapWidth.hashCode),
                                                                            offset.hashCode),
                                                                        blur.hashCode),
                                                                    dasharray.hashCode),
                                                                pattern.hashCode),
                                                            gradient.hashCode),
                                                        opacityTransition.hashCode),
                                                    colorTransition.hashCode),
                                                translateTransition.hashCode),
                                            widthTransition.hashCode),
                                        gapWidthTransition.hashCode),
                                    offsetTransition.hashCode),
                                blurTransition.hashCode),
                            dasharrayTransition.hashCode),
                        patternTransition.hashCode),
                    id.hashCode),
                visible.hashCode),
            minZoom.hashCode),
        maxZoom.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LineLayerModel')
          ..add('sourceId', sourceId)
          ..add('cap', cap)
          ..add('join', join)
          ..add('miterLimit', miterLimit)
          ..add('roundLimit', roundLimit)
          ..add('color', color)
          ..add('translate', translate)
          ..add('translateAnchor', translateAnchor)
          ..add('width', width)
          ..add('gapWidth', gapWidth)
          ..add('offset', offset)
          ..add('blur', blur)
          ..add('dasharray', dasharray)
          ..add('pattern', pattern)
          ..add('gradient', gradient)
          ..add('opacityTransition', opacityTransition)
          ..add('colorTransition', colorTransition)
          ..add('translateTransition', translateTransition)
          ..add('widthTransition', widthTransition)
          ..add('gapWidthTransition', gapWidthTransition)
          ..add('offsetTransition', offsetTransition)
          ..add('blurTransition', blurTransition)
          ..add('dasharrayTransition', dasharrayTransition)
          ..add('patternTransition', patternTransition)
          ..add('id', id)
          ..add('visible', visible)
          ..add('minZoom', minZoom)
          ..add('maxZoom', maxZoom))
        .toString();
  }
}

class LineLayerModelBuilder
    implements
        Builder<LineLayerModel, LineLayerModelBuilder>,
        LayerModelBuilder {
  _$LineLayerModel _$v;

  String _sourceId;
  String get sourceId => _$this._sourceId;
  set sourceId(String sourceId) => _$this._sourceId = sourceId;

  LineCap _cap;
  LineCap get cap => _$this._cap;
  set cap(LineCap cap) => _$this._cap = cap;

  LineJoin _join;
  LineJoin get join => _$this._join;
  set join(LineJoin join) => _$this._join = join;

  double _miterLimit;
  double get miterLimit => _$this._miterLimit;
  set miterLimit(double miterLimit) => _$this._miterLimit = miterLimit;

  double _roundLimit;
  double get roundLimit => _$this._roundLimit;
  set roundLimit(double roundLimit) => _$this._roundLimit = roundLimit;

  int _color;
  int get color => _$this._color;
  set color(int color) => _$this._color = color;

  ListBuilder<double> _translate;
  ListBuilder<double> get translate =>
      _$this._translate ??= new ListBuilder<double>();
  set translate(ListBuilder<double> translate) => _$this._translate = translate;

  TranslateAnchor _translateAnchor;
  TranslateAnchor get translateAnchor => _$this._translateAnchor;
  set translateAnchor(TranslateAnchor translateAnchor) =>
      _$this._translateAnchor = translateAnchor;

  double _width;
  double get width => _$this._width;
  set width(double width) => _$this._width = width;

  double _gapWidth;
  double get gapWidth => _$this._gapWidth;
  set gapWidth(double gapWidth) => _$this._gapWidth = gapWidth;

  double _offset;
  double get offset => _$this._offset;
  set offset(double offset) => _$this._offset = offset;

  double _blur;
  double get blur => _$this._blur;
  set blur(double blur) => _$this._blur = blur;

  ListBuilder<double> _dasharray;
  ListBuilder<double> get dasharray =>
      _$this._dasharray ??= new ListBuilder<double>();
  set dasharray(ListBuilder<double> dasharray) => _$this._dasharray = dasharray;

  String _pattern;
  String get pattern => _$this._pattern;
  set pattern(String pattern) => _$this._pattern = pattern;

  int _gradient;
  int get gradient => _$this._gradient;
  set gradient(int gradient) => _$this._gradient = gradient;

  TransitionOptionsBuilder _opacityTransition;
  TransitionOptionsBuilder get opacityTransition =>
      _$this._opacityTransition ??= new TransitionOptionsBuilder();
  set opacityTransition(TransitionOptionsBuilder opacityTransition) =>
      _$this._opacityTransition = opacityTransition;

  TransitionOptionsBuilder _colorTransition;
  TransitionOptionsBuilder get colorTransition =>
      _$this._colorTransition ??= new TransitionOptionsBuilder();
  set colorTransition(TransitionOptionsBuilder colorTransition) =>
      _$this._colorTransition = colorTransition;

  TransitionOptionsBuilder _translateTransition;
  TransitionOptionsBuilder get translateTransition =>
      _$this._translateTransition ??= new TransitionOptionsBuilder();
  set translateTransition(TransitionOptionsBuilder translateTransition) =>
      _$this._translateTransition = translateTransition;

  TransitionOptionsBuilder _widthTransition;
  TransitionOptionsBuilder get widthTransition =>
      _$this._widthTransition ??= new TransitionOptionsBuilder();
  set widthTransition(TransitionOptionsBuilder widthTransition) =>
      _$this._widthTransition = widthTransition;

  TransitionOptionsBuilder _gapWidthTransition;
  TransitionOptionsBuilder get gapWidthTransition =>
      _$this._gapWidthTransition ??= new TransitionOptionsBuilder();
  set gapWidthTransition(TransitionOptionsBuilder gapWidthTransition) =>
      _$this._gapWidthTransition = gapWidthTransition;

  TransitionOptionsBuilder _offsetTransition;
  TransitionOptionsBuilder get offsetTransition =>
      _$this._offsetTransition ??= new TransitionOptionsBuilder();
  set offsetTransition(TransitionOptionsBuilder offsetTransition) =>
      _$this._offsetTransition = offsetTransition;

  TransitionOptionsBuilder _blurTransition;
  TransitionOptionsBuilder get blurTransition =>
      _$this._blurTransition ??= new TransitionOptionsBuilder();
  set blurTransition(TransitionOptionsBuilder blurTransition) =>
      _$this._blurTransition = blurTransition;

  TransitionOptionsBuilder _dasharrayTransition;
  TransitionOptionsBuilder get dasharrayTransition =>
      _$this._dasharrayTransition ??= new TransitionOptionsBuilder();
  set dasharrayTransition(TransitionOptionsBuilder dasharrayTransition) =>
      _$this._dasharrayTransition = dasharrayTransition;

  TransitionOptionsBuilder _patternTransition;
  TransitionOptionsBuilder get patternTransition =>
      _$this._patternTransition ??= new TransitionOptionsBuilder();
  set patternTransition(TransitionOptionsBuilder patternTransition) =>
      _$this._patternTransition = patternTransition;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  bool _visible;
  bool get visible => _$this._visible;
  set visible(bool visible) => _$this._visible = visible;

  double _minZoom;
  double get minZoom => _$this._minZoom;
  set minZoom(double minZoom) => _$this._minZoom = minZoom;

  double _maxZoom;
  double get maxZoom => _$this._maxZoom;
  set maxZoom(double maxZoom) => _$this._maxZoom = maxZoom;

  LineLayerModelBuilder();

  LineLayerModelBuilder get _$this {
    if (_$v != null) {
      _sourceId = _$v.sourceId;
      _cap = _$v.cap;
      _join = _$v.join;
      _miterLimit = _$v.miterLimit;
      _roundLimit = _$v.roundLimit;
      _color = _$v.color;
      _translate = _$v.translate?.toBuilder();
      _translateAnchor = _$v.translateAnchor;
      _width = _$v.width;
      _gapWidth = _$v.gapWidth;
      _offset = _$v.offset;
      _blur = _$v.blur;
      _dasharray = _$v.dasharray?.toBuilder();
      _pattern = _$v.pattern;
      _gradient = _$v.gradient;
      _opacityTransition = _$v.opacityTransition?.toBuilder();
      _colorTransition = _$v.colorTransition?.toBuilder();
      _translateTransition = _$v.translateTransition?.toBuilder();
      _widthTransition = _$v.widthTransition?.toBuilder();
      _gapWidthTransition = _$v.gapWidthTransition?.toBuilder();
      _offsetTransition = _$v.offsetTransition?.toBuilder();
      _blurTransition = _$v.blurTransition?.toBuilder();
      _dasharrayTransition = _$v.dasharrayTransition?.toBuilder();
      _patternTransition = _$v.patternTransition?.toBuilder();
      _id = _$v.id;
      _visible = _$v.visible;
      _minZoom = _$v.minZoom;
      _maxZoom = _$v.maxZoom;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant LineLayerModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LineLayerModel;
  }

  @override
  void update(void Function(LineLayerModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LineLayerModel build() {
    _$LineLayerModel _$result;
    try {
      _$result = _$v ??
          new _$LineLayerModel._(
              sourceId: sourceId,
              cap: cap,
              join: join,
              miterLimit: miterLimit,
              roundLimit: roundLimit,
              color: color,
              translate: translate.build(),
              translateAnchor: translateAnchor,
              width: width,
              gapWidth: gapWidth,
              offset: offset,
              blur: blur,
              dasharray: _dasharray?.build(),
              pattern: pattern,
              gradient: gradient,
              opacityTransition: opacityTransition.build(),
              colorTransition: colorTransition.build(),
              translateTransition: translateTransition.build(),
              widthTransition: widthTransition.build(),
              gapWidthTransition: gapWidthTransition.build(),
              offsetTransition: offsetTransition.build(),
              blurTransition: blurTransition.build(),
              dasharrayTransition: dasharrayTransition.build(),
              patternTransition: patternTransition.build(),
              id: id,
              visible: visible,
              minZoom: minZoom,
              maxZoom: maxZoom);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'translate';
        translate.build();

        _$failedField = 'dasharray';
        _dasharray?.build();

        _$failedField = 'opacityTransition';
        opacityTransition.build();
        _$failedField = 'colorTransition';
        colorTransition.build();
        _$failedField = 'translateTransition';
        translateTransition.build();
        _$failedField = 'widthTransition';
        widthTransition.build();
        _$failedField = 'gapWidthTransition';
        gapWidthTransition.build();
        _$failedField = 'offsetTransition';
        offsetTransition.build();
        _$failedField = 'blurTransition';
        blurTransition.build();
        _$failedField = 'dasharrayTransition';
        dasharrayTransition.build();
        _$failedField = 'patternTransition';
        patternTransition.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'LineLayerModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$SymbolLayerModel extends SymbolLayerModel {
  @override
  final String sourceId;
  @override
  final SymbolPlacement symbolPlacement;
  @override
  final double symbolSpacing;
  @override
  final bool symbolAvoidEdges;
  @override
  final SymbolZOrder symbolZOrder;
  @override
  final bool iconAllowOverlap;
  @override
  final bool iconIgnorePlacement;
  @override
  final bool iconOptional;
  @override
  final SymbolAlignment iconRotationAlignment;
  @override
  final double iconSize;
  @override
  final SymbolTextFit iconTextFit;
  @override
  final BuiltList<double> iconTextFitPadding;
  @override
  final String iconImage;
  @override
  final double iconRotate;
  @override
  final double iconPadding;
  @override
  final bool iconKeepUpright;
  @override
  final BuiltList<double> iconOffset;
  @override
  final PositionAnchor iconAnchor;
  @override
  final SymbolAlignment iconPitchAlignment;
  @override
  final SymbolAlignment textPitchAlignment;
  @override
  final SymbolAlignment textRotationAlignment;
  @override
  final BuiltList<FormattedSection> textField;
  @override
  final BuiltList<String> textFont;
  @override
  final double textSize;
  @override
  final double textMaxWidth;
  @override
  final double textLineHeight;
  @override
  final double textLetterSpacing;
  @override
  final SymbolTextJustify textJustify;
  @override
  final double textRadialOffset;
  @override
  final BuiltList<PositionAnchor> textVariableAnchor;
  @override
  final PositionAnchor textAnchor;
  @override
  final double textMaxAngle;
  @override
  final double textRotate;
  @override
  final double textPadding;
  @override
  final bool textKeepUpright;
  @override
  final SymbolTextTransform textTransform;
  @override
  final BuiltList<double> textOffset;
  @override
  final bool textAllowOverlap;
  @override
  final bool textIgnorePlacement;
  @override
  final bool textOptional;
  @override
  final int iconColor;
  @override
  final int iconHaloColor;
  @override
  final double iconHaloWidth;
  @override
  final double iconHaloBlur;
  @override
  final BuiltList<double> iconTranslate;
  @override
  final TranslateAnchor iconTranslateAnchor;
  @override
  final int textColor;
  @override
  final int textHaloColor;
  @override
  final double textHaloWidth;
  @override
  final double textHaloBlur;
  @override
  final BuiltList<double> textTranslate;
  @override
  final TranslateAnchor textTranslateAnchor;
  @override
  final TransitionOptions iconOpacityTransition;
  @override
  final TransitionOptions iconColorTransition;
  @override
  final TransitionOptions iconHaloColorTransition;
  @override
  final TransitionOptions iconHaloWidthTransition;
  @override
  final TransitionOptions iconHaloBlurTransition;
  @override
  final TransitionOptions iconTranslateTransition;
  @override
  final TransitionOptions textOpacityTransition;
  @override
  final TransitionOptions textColorTransition;
  @override
  final TransitionOptions textHaloColorTransition;
  @override
  final TransitionOptions textHaloWidthTransition;
  @override
  final TransitionOptions textHaloBlurTransition;
  @override
  final TransitionOptions textTranslateTransition;
  @override
  final String id;
  @override
  final bool visible;
  @override
  final double minZoom;
  @override
  final double maxZoom;
  Uint8List __data;
  Uint8List __sourceData;

  factory _$SymbolLayerModel(
          [void Function(SymbolLayerModelBuilder) updates]) =>
      (new SymbolLayerModelBuilder()..update(updates)).build();

  _$SymbolLayerModel._(
      {this.sourceId,
      this.symbolPlacement,
      this.symbolSpacing,
      this.symbolAvoidEdges,
      this.symbolZOrder,
      this.iconAllowOverlap,
      this.iconIgnorePlacement,
      this.iconOptional,
      this.iconRotationAlignment,
      this.iconSize,
      this.iconTextFit,
      this.iconTextFitPadding,
      this.iconImage,
      this.iconRotate,
      this.iconPadding,
      this.iconKeepUpright,
      this.iconOffset,
      this.iconAnchor,
      this.iconPitchAlignment,
      this.textPitchAlignment,
      this.textRotationAlignment,
      this.textField,
      this.textFont,
      this.textSize,
      this.textMaxWidth,
      this.textLineHeight,
      this.textLetterSpacing,
      this.textJustify,
      this.textRadialOffset,
      this.textVariableAnchor,
      this.textAnchor,
      this.textMaxAngle,
      this.textRotate,
      this.textPadding,
      this.textKeepUpright,
      this.textTransform,
      this.textOffset,
      this.textAllowOverlap,
      this.textIgnorePlacement,
      this.textOptional,
      this.iconColor,
      this.iconHaloColor,
      this.iconHaloWidth,
      this.iconHaloBlur,
      this.iconTranslate,
      this.iconTranslateAnchor,
      this.textColor,
      this.textHaloColor,
      this.textHaloWidth,
      this.textHaloBlur,
      this.textTranslate,
      this.textTranslateAnchor,
      this.iconOpacityTransition,
      this.iconColorTransition,
      this.iconHaloColorTransition,
      this.iconHaloWidthTransition,
      this.iconHaloBlurTransition,
      this.iconTranslateTransition,
      this.textOpacityTransition,
      this.textColorTransition,
      this.textHaloColorTransition,
      this.textHaloWidthTransition,
      this.textHaloBlurTransition,
      this.textTranslateTransition,
      this.id,
      this.visible,
      this.minZoom,
      this.maxZoom})
      : super._() {
    if (sourceId == null) {
      throw new BuiltValueNullFieldError('SymbolLayerModel', 'sourceId');
    }
    if (symbolPlacement == null) {
      throw new BuiltValueNullFieldError('SymbolLayerModel', 'symbolPlacement');
    }
    if (symbolSpacing == null) {
      throw new BuiltValueNullFieldError('SymbolLayerModel', 'symbolSpacing');
    }
    if (symbolAvoidEdges == null) {
      throw new BuiltValueNullFieldError(
          'SymbolLayerModel', 'symbolAvoidEdges');
    }
    if (symbolZOrder == null) {
      throw new BuiltValueNullFieldError('SymbolLayerModel', 'symbolZOrder');
    }
    if (iconAllowOverlap == null) {
      throw new BuiltValueNullFieldError(
          'SymbolLayerModel', 'iconAllowOverlap');
    }
    if (iconIgnorePlacement == null) {
      throw new BuiltValueNullFieldError(
          'SymbolLayerModel', 'iconIgnorePlacement');
    }
    if (iconOptional == null) {
      throw new BuiltValueNullFieldError('SymbolLayerModel', 'iconOptional');
    }
    if (iconRotationAlignment == null) {
      throw new BuiltValueNullFieldError(
          'SymbolLayerModel', 'iconRotationAlignment');
    }
    if (iconSize == null) {
      throw new BuiltValueNullFieldError('SymbolLayerModel', 'iconSize');
    }
    if (iconTextFit == null) {
      throw new BuiltValueNullFieldError('SymbolLayerModel', 'iconTextFit');
    }
    if (iconTextFitPadding == null) {
      throw new BuiltValueNullFieldError(
          'SymbolLayerModel', 'iconTextFitPadding');
    }
    if (iconRotate == null) {
      throw new BuiltValueNullFieldError('SymbolLayerModel', 'iconRotate');
    }
    if (iconPadding == null) {
      throw new BuiltValueNullFieldError('SymbolLayerModel', 'iconPadding');
    }
    if (iconKeepUpright == null) {
      throw new BuiltValueNullFieldError('SymbolLayerModel', 'iconKeepUpright');
    }
    if (iconOffset == null) {
      throw new BuiltValueNullFieldError('SymbolLayerModel', 'iconOffset');
    }
    if (iconAnchor == null) {
      throw new BuiltValueNullFieldError('SymbolLayerModel', 'iconAnchor');
    }
    if (iconPitchAlignment == null) {
      throw new BuiltValueNullFieldError(
          'SymbolLayerModel', 'iconPitchAlignment');
    }
    if (textPitchAlignment == null) {
      throw new BuiltValueNullFieldError(
          'SymbolLayerModel', 'textPitchAlignment');
    }
    if (textRotationAlignment == null) {
      throw new BuiltValueNullFieldError(
          'SymbolLayerModel', 'textRotationAlignment');
    }
    if (textFont == null) {
      throw new BuiltValueNullFieldError('SymbolLayerModel', 'textFont');
    }
    if (textSize == null) {
      throw new BuiltValueNullFieldError('SymbolLayerModel', 'textSize');
    }
    if (textMaxWidth == null) {
      throw new BuiltValueNullFieldError('SymbolLayerModel', 'textMaxWidth');
    }
    if (textLineHeight == null) {
      throw new BuiltValueNullFieldError('SymbolLayerModel', 'textLineHeight');
    }
    if (textLetterSpacing == null) {
      throw new BuiltValueNullFieldError(
          'SymbolLayerModel', 'textLetterSpacing');
    }
    if (textJustify == null) {
      throw new BuiltValueNullFieldError('SymbolLayerModel', 'textJustify');
    }
    if (textRadialOffset == null) {
      throw new BuiltValueNullFieldError(
          'SymbolLayerModel', 'textRadialOffset');
    }
    if (textAnchor == null) {
      throw new BuiltValueNullFieldError('SymbolLayerModel', 'textAnchor');
    }
    if (textMaxAngle == null) {
      throw new BuiltValueNullFieldError('SymbolLayerModel', 'textMaxAngle');
    }
    if (textRotate == null) {
      throw new BuiltValueNullFieldError('SymbolLayerModel', 'textRotate');
    }
    if (textPadding == null) {
      throw new BuiltValueNullFieldError('SymbolLayerModel', 'textPadding');
    }
    if (textKeepUpright == null) {
      throw new BuiltValueNullFieldError('SymbolLayerModel', 'textKeepUpright');
    }
    if (textTransform == null) {
      throw new BuiltValueNullFieldError('SymbolLayerModel', 'textTransform');
    }
    if (textOffset == null) {
      throw new BuiltValueNullFieldError('SymbolLayerModel', 'textOffset');
    }
    if (textAllowOverlap == null) {
      throw new BuiltValueNullFieldError(
          'SymbolLayerModel', 'textAllowOverlap');
    }
    if (textIgnorePlacement == null) {
      throw new BuiltValueNullFieldError(
          'SymbolLayerModel', 'textIgnorePlacement');
    }
    if (textOptional == null) {
      throw new BuiltValueNullFieldError('SymbolLayerModel', 'textOptional');
    }
    if (iconColor == null) {
      throw new BuiltValueNullFieldError('SymbolLayerModel', 'iconColor');
    }
    if (iconHaloColor == null) {
      throw new BuiltValueNullFieldError('SymbolLayerModel', 'iconHaloColor');
    }
    if (iconHaloWidth == null) {
      throw new BuiltValueNullFieldError('SymbolLayerModel', 'iconHaloWidth');
    }
    if (iconHaloBlur == null) {
      throw new BuiltValueNullFieldError('SymbolLayerModel', 'iconHaloBlur');
    }
    if (iconTranslate == null) {
      throw new BuiltValueNullFieldError('SymbolLayerModel', 'iconTranslate');
    }
    if (iconTranslateAnchor == null) {
      throw new BuiltValueNullFieldError(
          'SymbolLayerModel', 'iconTranslateAnchor');
    }
    if (textColor == null) {
      throw new BuiltValueNullFieldError('SymbolLayerModel', 'textColor');
    }
    if (textHaloColor == null) {
      throw new BuiltValueNullFieldError('SymbolLayerModel', 'textHaloColor');
    }
    if (textHaloWidth == null) {
      throw new BuiltValueNullFieldError('SymbolLayerModel', 'textHaloWidth');
    }
    if (textHaloBlur == null) {
      throw new BuiltValueNullFieldError('SymbolLayerModel', 'textHaloBlur');
    }
    if (textTranslate == null) {
      throw new BuiltValueNullFieldError('SymbolLayerModel', 'textTranslate');
    }
    if (textTranslateAnchor == null) {
      throw new BuiltValueNullFieldError(
          'SymbolLayerModel', 'textTranslateAnchor');
    }
    if (iconOpacityTransition == null) {
      throw new BuiltValueNullFieldError(
          'SymbolLayerModel', 'iconOpacityTransition');
    }
    if (iconColorTransition == null) {
      throw new BuiltValueNullFieldError(
          'SymbolLayerModel', 'iconColorTransition');
    }
    if (iconHaloColorTransition == null) {
      throw new BuiltValueNullFieldError(
          'SymbolLayerModel', 'iconHaloColorTransition');
    }
    if (iconHaloWidthTransition == null) {
      throw new BuiltValueNullFieldError(
          'SymbolLayerModel', 'iconHaloWidthTransition');
    }
    if (iconHaloBlurTransition == null) {
      throw new BuiltValueNullFieldError(
          'SymbolLayerModel', 'iconHaloBlurTransition');
    }
    if (iconTranslateTransition == null) {
      throw new BuiltValueNullFieldError(
          'SymbolLayerModel', 'iconTranslateTransition');
    }
    if (textOpacityTransition == null) {
      throw new BuiltValueNullFieldError(
          'SymbolLayerModel', 'textOpacityTransition');
    }
    if (textColorTransition == null) {
      throw new BuiltValueNullFieldError(
          'SymbolLayerModel', 'textColorTransition');
    }
    if (textHaloColorTransition == null) {
      throw new BuiltValueNullFieldError(
          'SymbolLayerModel', 'textHaloColorTransition');
    }
    if (textHaloWidthTransition == null) {
      throw new BuiltValueNullFieldError(
          'SymbolLayerModel', 'textHaloWidthTransition');
    }
    if (textHaloBlurTransition == null) {
      throw new BuiltValueNullFieldError(
          'SymbolLayerModel', 'textHaloBlurTransition');
    }
    if (textTranslateTransition == null) {
      throw new BuiltValueNullFieldError(
          'SymbolLayerModel', 'textTranslateTransition');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('SymbolLayerModel', 'id');
    }
    if (visible == null) {
      throw new BuiltValueNullFieldError('SymbolLayerModel', 'visible');
    }
    if (minZoom == null) {
      throw new BuiltValueNullFieldError('SymbolLayerModel', 'minZoom');
    }
    if (maxZoom == null) {
      throw new BuiltValueNullFieldError('SymbolLayerModel', 'maxZoom');
    }
  }

  @override
  Uint8List get data => __data ??= super.data;

  @override
  Uint8List get sourceData => __sourceData ??= super.sourceData;

  @override
  SymbolLayerModel rebuild(void Function(SymbolLayerModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SymbolLayerModelBuilder toBuilder() =>
      new SymbolLayerModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SymbolLayerModel &&
        sourceId == other.sourceId &&
        symbolPlacement == other.symbolPlacement &&
        symbolSpacing == other.symbolSpacing &&
        symbolAvoidEdges == other.symbolAvoidEdges &&
        symbolZOrder == other.symbolZOrder &&
        iconAllowOverlap == other.iconAllowOverlap &&
        iconIgnorePlacement == other.iconIgnorePlacement &&
        iconOptional == other.iconOptional &&
        iconRotationAlignment == other.iconRotationAlignment &&
        iconSize == other.iconSize &&
        iconTextFit == other.iconTextFit &&
        iconTextFitPadding == other.iconTextFitPadding &&
        iconImage == other.iconImage &&
        iconRotate == other.iconRotate &&
        iconPadding == other.iconPadding &&
        iconKeepUpright == other.iconKeepUpright &&
        iconOffset == other.iconOffset &&
        iconAnchor == other.iconAnchor &&
        iconPitchAlignment == other.iconPitchAlignment &&
        textPitchAlignment == other.textPitchAlignment &&
        textRotationAlignment == other.textRotationAlignment &&
        textField == other.textField &&
        textFont == other.textFont &&
        textSize == other.textSize &&
        textMaxWidth == other.textMaxWidth &&
        textLineHeight == other.textLineHeight &&
        textLetterSpacing == other.textLetterSpacing &&
        textJustify == other.textJustify &&
        textRadialOffset == other.textRadialOffset &&
        textVariableAnchor == other.textVariableAnchor &&
        textAnchor == other.textAnchor &&
        textMaxAngle == other.textMaxAngle &&
        textRotate == other.textRotate &&
        textPadding == other.textPadding &&
        textKeepUpright == other.textKeepUpright &&
        textTransform == other.textTransform &&
        textOffset == other.textOffset &&
        textAllowOverlap == other.textAllowOverlap &&
        textIgnorePlacement == other.textIgnorePlacement &&
        textOptional == other.textOptional &&
        iconColor == other.iconColor &&
        iconHaloColor == other.iconHaloColor &&
        iconHaloWidth == other.iconHaloWidth &&
        iconHaloBlur == other.iconHaloBlur &&
        iconTranslate == other.iconTranslate &&
        iconTranslateAnchor == other.iconTranslateAnchor &&
        textColor == other.textColor &&
        textHaloColor == other.textHaloColor &&
        textHaloWidth == other.textHaloWidth &&
        textHaloBlur == other.textHaloBlur &&
        textTranslate == other.textTranslate &&
        textTranslateAnchor == other.textTranslateAnchor &&
        iconOpacityTransition == other.iconOpacityTransition &&
        iconColorTransition == other.iconColorTransition &&
        iconHaloColorTransition == other.iconHaloColorTransition &&
        iconHaloWidthTransition == other.iconHaloWidthTransition &&
        iconHaloBlurTransition == other.iconHaloBlurTransition &&
        iconTranslateTransition == other.iconTranslateTransition &&
        textOpacityTransition == other.textOpacityTransition &&
        textColorTransition == other.textColorTransition &&
        textHaloColorTransition == other.textHaloColorTransition &&
        textHaloWidthTransition == other.textHaloWidthTransition &&
        textHaloBlurTransition == other.textHaloBlurTransition &&
        textTranslateTransition == other.textTranslateTransition &&
        id == other.id &&
        visible == other.visible &&
        minZoom == other.minZoom &&
        maxZoom == other.maxZoom;
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
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, sourceId.hashCode), symbolPlacement.hashCode), symbolSpacing.hashCode), symbolAvoidEdges.hashCode), symbolZOrder.hashCode), iconAllowOverlap.hashCode), iconIgnorePlacement.hashCode), iconOptional.hashCode), iconRotationAlignment.hashCode), iconSize.hashCode), iconTextFit.hashCode), iconTextFitPadding.hashCode), iconImage.hashCode), iconRotate.hashCode), iconPadding.hashCode), iconKeepUpright.hashCode), iconOffset.hashCode), iconAnchor.hashCode), iconPitchAlignment.hashCode), textPitchAlignment.hashCode), textRotationAlignment.hashCode), textField.hashCode), textFont.hashCode), textSize.hashCode), textMaxWidth.hashCode), textLineHeight.hashCode), textLetterSpacing.hashCode), textJustify.hashCode), textRadialOffset.hashCode), textVariableAnchor.hashCode), textAnchor.hashCode), textMaxAngle.hashCode), textRotate.hashCode), textPadding.hashCode), textKeepUpright.hashCode), textTransform.hashCode), textOffset.hashCode), textAllowOverlap.hashCode), textIgnorePlacement.hashCode), textOptional.hashCode), iconColor.hashCode), iconHaloColor.hashCode), iconHaloWidth.hashCode), iconHaloBlur.hashCode), iconTranslate.hashCode), iconTranslateAnchor.hashCode), textColor.hashCode), textHaloColor.hashCode), textHaloWidth.hashCode),
                                                                                textHaloBlur.hashCode),
                                                                            textTranslate.hashCode),
                                                                        textTranslateAnchor.hashCode),
                                                                    iconOpacityTransition.hashCode),
                                                                iconColorTransition.hashCode),
                                                            iconHaloColorTransition.hashCode),
                                                        iconHaloWidthTransition.hashCode),
                                                    iconHaloBlurTransition.hashCode),
                                                iconTranslateTransition.hashCode),
                                            textOpacityTransition.hashCode),
                                        textColorTransition.hashCode),
                                    textHaloColorTransition.hashCode),
                                textHaloWidthTransition.hashCode),
                            textHaloBlurTransition.hashCode),
                        textTranslateTransition.hashCode),
                    id.hashCode),
                visible.hashCode),
            minZoom.hashCode),
        maxZoom.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SymbolLayerModel')
          ..add('sourceId', sourceId)
          ..add('symbolPlacement', symbolPlacement)
          ..add('symbolSpacing', symbolSpacing)
          ..add('symbolAvoidEdges', symbolAvoidEdges)
          ..add('symbolZOrder', symbolZOrder)
          ..add('iconAllowOverlap', iconAllowOverlap)
          ..add('iconIgnorePlacement', iconIgnorePlacement)
          ..add('iconOptional', iconOptional)
          ..add('iconRotationAlignment', iconRotationAlignment)
          ..add('iconSize', iconSize)
          ..add('iconTextFit', iconTextFit)
          ..add('iconTextFitPadding', iconTextFitPadding)
          ..add('iconImage', iconImage)
          ..add('iconRotate', iconRotate)
          ..add('iconPadding', iconPadding)
          ..add('iconKeepUpright', iconKeepUpright)
          ..add('iconOffset', iconOffset)
          ..add('iconAnchor', iconAnchor)
          ..add('iconPitchAlignment', iconPitchAlignment)
          ..add('textPitchAlignment', textPitchAlignment)
          ..add('textRotationAlignment', textRotationAlignment)
          ..add('textField', textField)
          ..add('textFont', textFont)
          ..add('textSize', textSize)
          ..add('textMaxWidth', textMaxWidth)
          ..add('textLineHeight', textLineHeight)
          ..add('textLetterSpacing', textLetterSpacing)
          ..add('textJustify', textJustify)
          ..add('textRadialOffset', textRadialOffset)
          ..add('textVariableAnchor', textVariableAnchor)
          ..add('textAnchor', textAnchor)
          ..add('textMaxAngle', textMaxAngle)
          ..add('textRotate', textRotate)
          ..add('textPadding', textPadding)
          ..add('textKeepUpright', textKeepUpright)
          ..add('textTransform', textTransform)
          ..add('textOffset', textOffset)
          ..add('textAllowOverlap', textAllowOverlap)
          ..add('textIgnorePlacement', textIgnorePlacement)
          ..add('textOptional', textOptional)
          ..add('iconColor', iconColor)
          ..add('iconHaloColor', iconHaloColor)
          ..add('iconHaloWidth', iconHaloWidth)
          ..add('iconHaloBlur', iconHaloBlur)
          ..add('iconTranslate', iconTranslate)
          ..add('iconTranslateAnchor', iconTranslateAnchor)
          ..add('textColor', textColor)
          ..add('textHaloColor', textHaloColor)
          ..add('textHaloWidth', textHaloWidth)
          ..add('textHaloBlur', textHaloBlur)
          ..add('textTranslate', textTranslate)
          ..add('textTranslateAnchor', textTranslateAnchor)
          ..add('iconOpacityTransition', iconOpacityTransition)
          ..add('iconColorTransition', iconColorTransition)
          ..add('iconHaloColorTransition', iconHaloColorTransition)
          ..add('iconHaloWidthTransition', iconHaloWidthTransition)
          ..add('iconHaloBlurTransition', iconHaloBlurTransition)
          ..add('iconTranslateTransition', iconTranslateTransition)
          ..add('textOpacityTransition', textOpacityTransition)
          ..add('textColorTransition', textColorTransition)
          ..add('textHaloColorTransition', textHaloColorTransition)
          ..add('textHaloWidthTransition', textHaloWidthTransition)
          ..add('textHaloBlurTransition', textHaloBlurTransition)
          ..add('textTranslateTransition', textTranslateTransition)
          ..add('id', id)
          ..add('visible', visible)
          ..add('minZoom', minZoom)
          ..add('maxZoom', maxZoom))
        .toString();
  }
}

class SymbolLayerModelBuilder
    implements
        Builder<SymbolLayerModel, SymbolLayerModelBuilder>,
        LayerModelBuilder {
  _$SymbolLayerModel _$v;

  String _sourceId;
  String get sourceId => _$this._sourceId;
  set sourceId(String sourceId) => _$this._sourceId = sourceId;

  SymbolPlacement _symbolPlacement;
  SymbolPlacement get symbolPlacement => _$this._symbolPlacement;
  set symbolPlacement(SymbolPlacement symbolPlacement) =>
      _$this._symbolPlacement = symbolPlacement;

  double _symbolSpacing;
  double get symbolSpacing => _$this._symbolSpacing;
  set symbolSpacing(double symbolSpacing) =>
      _$this._symbolSpacing = symbolSpacing;

  bool _symbolAvoidEdges;
  bool get symbolAvoidEdges => _$this._symbolAvoidEdges;
  set symbolAvoidEdges(bool symbolAvoidEdges) =>
      _$this._symbolAvoidEdges = symbolAvoidEdges;

  SymbolZOrder _symbolZOrder;
  SymbolZOrder get symbolZOrder => _$this._symbolZOrder;
  set symbolZOrder(SymbolZOrder symbolZOrder) =>
      _$this._symbolZOrder = symbolZOrder;

  bool _iconAllowOverlap;
  bool get iconAllowOverlap => _$this._iconAllowOverlap;
  set iconAllowOverlap(bool iconAllowOverlap) =>
      _$this._iconAllowOverlap = iconAllowOverlap;

  bool _iconIgnorePlacement;
  bool get iconIgnorePlacement => _$this._iconIgnorePlacement;
  set iconIgnorePlacement(bool iconIgnorePlacement) =>
      _$this._iconIgnorePlacement = iconIgnorePlacement;

  bool _iconOptional;
  bool get iconOptional => _$this._iconOptional;
  set iconOptional(bool iconOptional) => _$this._iconOptional = iconOptional;

  SymbolAlignment _iconRotationAlignment;
  SymbolAlignment get iconRotationAlignment => _$this._iconRotationAlignment;
  set iconRotationAlignment(SymbolAlignment iconRotationAlignment) =>
      _$this._iconRotationAlignment = iconRotationAlignment;

  double _iconSize;
  double get iconSize => _$this._iconSize;
  set iconSize(double iconSize) => _$this._iconSize = iconSize;

  SymbolTextFit _iconTextFit;
  SymbolTextFit get iconTextFit => _$this._iconTextFit;
  set iconTextFit(SymbolTextFit iconTextFit) =>
      _$this._iconTextFit = iconTextFit;

  ListBuilder<double> _iconTextFitPadding;
  ListBuilder<double> get iconTextFitPadding =>
      _$this._iconTextFitPadding ??= new ListBuilder<double>();
  set iconTextFitPadding(ListBuilder<double> iconTextFitPadding) =>
      _$this._iconTextFitPadding = iconTextFitPadding;

  String _iconImage;
  String get iconImage => _$this._iconImage;
  set iconImage(String iconImage) => _$this._iconImage = iconImage;

  double _iconRotate;
  double get iconRotate => _$this._iconRotate;
  set iconRotate(double iconRotate) => _$this._iconRotate = iconRotate;

  double _iconPadding;
  double get iconPadding => _$this._iconPadding;
  set iconPadding(double iconPadding) => _$this._iconPadding = iconPadding;

  bool _iconKeepUpright;
  bool get iconKeepUpright => _$this._iconKeepUpright;
  set iconKeepUpright(bool iconKeepUpright) =>
      _$this._iconKeepUpright = iconKeepUpright;

  ListBuilder<double> _iconOffset;
  ListBuilder<double> get iconOffset =>
      _$this._iconOffset ??= new ListBuilder<double>();
  set iconOffset(ListBuilder<double> iconOffset) =>
      _$this._iconOffset = iconOffset;

  PositionAnchor _iconAnchor;
  PositionAnchor get iconAnchor => _$this._iconAnchor;
  set iconAnchor(PositionAnchor iconAnchor) => _$this._iconAnchor = iconAnchor;

  SymbolAlignment _iconPitchAlignment;
  SymbolAlignment get iconPitchAlignment => _$this._iconPitchAlignment;
  set iconPitchAlignment(SymbolAlignment iconPitchAlignment) =>
      _$this._iconPitchAlignment = iconPitchAlignment;

  SymbolAlignment _textPitchAlignment;
  SymbolAlignment get textPitchAlignment => _$this._textPitchAlignment;
  set textPitchAlignment(SymbolAlignment textPitchAlignment) =>
      _$this._textPitchAlignment = textPitchAlignment;

  SymbolAlignment _textRotationAlignment;
  SymbolAlignment get textRotationAlignment => _$this._textRotationAlignment;
  set textRotationAlignment(SymbolAlignment textRotationAlignment) =>
      _$this._textRotationAlignment = textRotationAlignment;

  ListBuilder<FormattedSection> _textField;
  ListBuilder<FormattedSection> get textField =>
      _$this._textField ??= new ListBuilder<FormattedSection>();
  set textField(ListBuilder<FormattedSection> textField) =>
      _$this._textField = textField;

  ListBuilder<String> _textFont;
  ListBuilder<String> get textFont =>
      _$this._textFont ??= new ListBuilder<String>();
  set textFont(ListBuilder<String> textFont) => _$this._textFont = textFont;

  double _textSize;
  double get textSize => _$this._textSize;
  set textSize(double textSize) => _$this._textSize = textSize;

  double _textMaxWidth;
  double get textMaxWidth => _$this._textMaxWidth;
  set textMaxWidth(double textMaxWidth) => _$this._textMaxWidth = textMaxWidth;

  double _textLineHeight;
  double get textLineHeight => _$this._textLineHeight;
  set textLineHeight(double textLineHeight) =>
      _$this._textLineHeight = textLineHeight;

  double _textLetterSpacing;
  double get textLetterSpacing => _$this._textLetterSpacing;
  set textLetterSpacing(double textLetterSpacing) =>
      _$this._textLetterSpacing = textLetterSpacing;

  SymbolTextJustify _textJustify;
  SymbolTextJustify get textJustify => _$this._textJustify;
  set textJustify(SymbolTextJustify textJustify) =>
      _$this._textJustify = textJustify;

  double _textRadialOffset;
  double get textRadialOffset => _$this._textRadialOffset;
  set textRadialOffset(double textRadialOffset) =>
      _$this._textRadialOffset = textRadialOffset;

  ListBuilder<PositionAnchor> _textVariableAnchor;
  ListBuilder<PositionAnchor> get textVariableAnchor =>
      _$this._textVariableAnchor ??= new ListBuilder<PositionAnchor>();
  set textVariableAnchor(ListBuilder<PositionAnchor> textVariableAnchor) =>
      _$this._textVariableAnchor = textVariableAnchor;

  PositionAnchor _textAnchor;
  PositionAnchor get textAnchor => _$this._textAnchor;
  set textAnchor(PositionAnchor textAnchor) => _$this._textAnchor = textAnchor;

  double _textMaxAngle;
  double get textMaxAngle => _$this._textMaxAngle;
  set textMaxAngle(double textMaxAngle) => _$this._textMaxAngle = textMaxAngle;

  double _textRotate;
  double get textRotate => _$this._textRotate;
  set textRotate(double textRotate) => _$this._textRotate = textRotate;

  double _textPadding;
  double get textPadding => _$this._textPadding;
  set textPadding(double textPadding) => _$this._textPadding = textPadding;

  bool _textKeepUpright;
  bool get textKeepUpright => _$this._textKeepUpright;
  set textKeepUpright(bool textKeepUpright) =>
      _$this._textKeepUpright = textKeepUpright;

  SymbolTextTransform _textTransform;
  SymbolTextTransform get textTransform => _$this._textTransform;
  set textTransform(SymbolTextTransform textTransform) =>
      _$this._textTransform = textTransform;

  ListBuilder<double> _textOffset;
  ListBuilder<double> get textOffset =>
      _$this._textOffset ??= new ListBuilder<double>();
  set textOffset(ListBuilder<double> textOffset) =>
      _$this._textOffset = textOffset;

  bool _textAllowOverlap;
  bool get textAllowOverlap => _$this._textAllowOverlap;
  set textAllowOverlap(bool textAllowOverlap) =>
      _$this._textAllowOverlap = textAllowOverlap;

  bool _textIgnorePlacement;
  bool get textIgnorePlacement => _$this._textIgnorePlacement;
  set textIgnorePlacement(bool textIgnorePlacement) =>
      _$this._textIgnorePlacement = textIgnorePlacement;

  bool _textOptional;
  bool get textOptional => _$this._textOptional;
  set textOptional(bool textOptional) => _$this._textOptional = textOptional;

  int _iconColor;
  int get iconColor => _$this._iconColor;
  set iconColor(int iconColor) => _$this._iconColor = iconColor;

  int _iconHaloColor;
  int get iconHaloColor => _$this._iconHaloColor;
  set iconHaloColor(int iconHaloColor) => _$this._iconHaloColor = iconHaloColor;

  double _iconHaloWidth;
  double get iconHaloWidth => _$this._iconHaloWidth;
  set iconHaloWidth(double iconHaloWidth) =>
      _$this._iconHaloWidth = iconHaloWidth;

  double _iconHaloBlur;
  double get iconHaloBlur => _$this._iconHaloBlur;
  set iconHaloBlur(double iconHaloBlur) => _$this._iconHaloBlur = iconHaloBlur;

  ListBuilder<double> _iconTranslate;
  ListBuilder<double> get iconTranslate =>
      _$this._iconTranslate ??= new ListBuilder<double>();
  set iconTranslate(ListBuilder<double> iconTranslate) =>
      _$this._iconTranslate = iconTranslate;

  TranslateAnchor _iconTranslateAnchor;
  TranslateAnchor get iconTranslateAnchor => _$this._iconTranslateAnchor;
  set iconTranslateAnchor(TranslateAnchor iconTranslateAnchor) =>
      _$this._iconTranslateAnchor = iconTranslateAnchor;

  int _textColor;
  int get textColor => _$this._textColor;
  set textColor(int textColor) => _$this._textColor = textColor;

  int _textHaloColor;
  int get textHaloColor => _$this._textHaloColor;
  set textHaloColor(int textHaloColor) => _$this._textHaloColor = textHaloColor;

  double _textHaloWidth;
  double get textHaloWidth => _$this._textHaloWidth;
  set textHaloWidth(double textHaloWidth) =>
      _$this._textHaloWidth = textHaloWidth;

  double _textHaloBlur;
  double get textHaloBlur => _$this._textHaloBlur;
  set textHaloBlur(double textHaloBlur) => _$this._textHaloBlur = textHaloBlur;

  ListBuilder<double> _textTranslate;
  ListBuilder<double> get textTranslate =>
      _$this._textTranslate ??= new ListBuilder<double>();
  set textTranslate(ListBuilder<double> textTranslate) =>
      _$this._textTranslate = textTranslate;

  TranslateAnchor _textTranslateAnchor;
  TranslateAnchor get textTranslateAnchor => _$this._textTranslateAnchor;
  set textTranslateAnchor(TranslateAnchor textTranslateAnchor) =>
      _$this._textTranslateAnchor = textTranslateAnchor;

  TransitionOptionsBuilder _iconOpacityTransition;
  TransitionOptionsBuilder get iconOpacityTransition =>
      _$this._iconOpacityTransition ??= new TransitionOptionsBuilder();
  set iconOpacityTransition(TransitionOptionsBuilder iconOpacityTransition) =>
      _$this._iconOpacityTransition = iconOpacityTransition;

  TransitionOptionsBuilder _iconColorTransition;
  TransitionOptionsBuilder get iconColorTransition =>
      _$this._iconColorTransition ??= new TransitionOptionsBuilder();
  set iconColorTransition(TransitionOptionsBuilder iconColorTransition) =>
      _$this._iconColorTransition = iconColorTransition;

  TransitionOptionsBuilder _iconHaloColorTransition;
  TransitionOptionsBuilder get iconHaloColorTransition =>
      _$this._iconHaloColorTransition ??= new TransitionOptionsBuilder();
  set iconHaloColorTransition(
          TransitionOptionsBuilder iconHaloColorTransition) =>
      _$this._iconHaloColorTransition = iconHaloColorTransition;

  TransitionOptionsBuilder _iconHaloWidthTransition;
  TransitionOptionsBuilder get iconHaloWidthTransition =>
      _$this._iconHaloWidthTransition ??= new TransitionOptionsBuilder();
  set iconHaloWidthTransition(
          TransitionOptionsBuilder iconHaloWidthTransition) =>
      _$this._iconHaloWidthTransition = iconHaloWidthTransition;

  TransitionOptionsBuilder _iconHaloBlurTransition;
  TransitionOptionsBuilder get iconHaloBlurTransition =>
      _$this._iconHaloBlurTransition ??= new TransitionOptionsBuilder();
  set iconHaloBlurTransition(TransitionOptionsBuilder iconHaloBlurTransition) =>
      _$this._iconHaloBlurTransition = iconHaloBlurTransition;

  TransitionOptionsBuilder _iconTranslateTransition;
  TransitionOptionsBuilder get iconTranslateTransition =>
      _$this._iconTranslateTransition ??= new TransitionOptionsBuilder();
  set iconTranslateTransition(
          TransitionOptionsBuilder iconTranslateTransition) =>
      _$this._iconTranslateTransition = iconTranslateTransition;

  TransitionOptionsBuilder _textOpacityTransition;
  TransitionOptionsBuilder get textOpacityTransition =>
      _$this._textOpacityTransition ??= new TransitionOptionsBuilder();
  set textOpacityTransition(TransitionOptionsBuilder textOpacityTransition) =>
      _$this._textOpacityTransition = textOpacityTransition;

  TransitionOptionsBuilder _textColorTransition;
  TransitionOptionsBuilder get textColorTransition =>
      _$this._textColorTransition ??= new TransitionOptionsBuilder();
  set textColorTransition(TransitionOptionsBuilder textColorTransition) =>
      _$this._textColorTransition = textColorTransition;

  TransitionOptionsBuilder _textHaloColorTransition;
  TransitionOptionsBuilder get textHaloColorTransition =>
      _$this._textHaloColorTransition ??= new TransitionOptionsBuilder();
  set textHaloColorTransition(
          TransitionOptionsBuilder textHaloColorTransition) =>
      _$this._textHaloColorTransition = textHaloColorTransition;

  TransitionOptionsBuilder _textHaloWidthTransition;
  TransitionOptionsBuilder get textHaloWidthTransition =>
      _$this._textHaloWidthTransition ??= new TransitionOptionsBuilder();
  set textHaloWidthTransition(
          TransitionOptionsBuilder textHaloWidthTransition) =>
      _$this._textHaloWidthTransition = textHaloWidthTransition;

  TransitionOptionsBuilder _textHaloBlurTransition;
  TransitionOptionsBuilder get textHaloBlurTransition =>
      _$this._textHaloBlurTransition ??= new TransitionOptionsBuilder();
  set textHaloBlurTransition(TransitionOptionsBuilder textHaloBlurTransition) =>
      _$this._textHaloBlurTransition = textHaloBlurTransition;

  TransitionOptionsBuilder _textTranslateTransition;
  TransitionOptionsBuilder get textTranslateTransition =>
      _$this._textTranslateTransition ??= new TransitionOptionsBuilder();
  set textTranslateTransition(
          TransitionOptionsBuilder textTranslateTransition) =>
      _$this._textTranslateTransition = textTranslateTransition;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  bool _visible;
  bool get visible => _$this._visible;
  set visible(bool visible) => _$this._visible = visible;

  double _minZoom;
  double get minZoom => _$this._minZoom;
  set minZoom(double minZoom) => _$this._minZoom = minZoom;

  double _maxZoom;
  double get maxZoom => _$this._maxZoom;
  set maxZoom(double maxZoom) => _$this._maxZoom = maxZoom;

  SymbolLayerModelBuilder();

  SymbolLayerModelBuilder get _$this {
    if (_$v != null) {
      _sourceId = _$v.sourceId;
      _symbolPlacement = _$v.symbolPlacement;
      _symbolSpacing = _$v.symbolSpacing;
      _symbolAvoidEdges = _$v.symbolAvoidEdges;
      _symbolZOrder = _$v.symbolZOrder;
      _iconAllowOverlap = _$v.iconAllowOverlap;
      _iconIgnorePlacement = _$v.iconIgnorePlacement;
      _iconOptional = _$v.iconOptional;
      _iconRotationAlignment = _$v.iconRotationAlignment;
      _iconSize = _$v.iconSize;
      _iconTextFit = _$v.iconTextFit;
      _iconTextFitPadding = _$v.iconTextFitPadding?.toBuilder();
      _iconImage = _$v.iconImage;
      _iconRotate = _$v.iconRotate;
      _iconPadding = _$v.iconPadding;
      _iconKeepUpright = _$v.iconKeepUpright;
      _iconOffset = _$v.iconOffset?.toBuilder();
      _iconAnchor = _$v.iconAnchor;
      _iconPitchAlignment = _$v.iconPitchAlignment;
      _textPitchAlignment = _$v.textPitchAlignment;
      _textRotationAlignment = _$v.textRotationAlignment;
      _textField = _$v.textField?.toBuilder();
      _textFont = _$v.textFont?.toBuilder();
      _textSize = _$v.textSize;
      _textMaxWidth = _$v.textMaxWidth;
      _textLineHeight = _$v.textLineHeight;
      _textLetterSpacing = _$v.textLetterSpacing;
      _textJustify = _$v.textJustify;
      _textRadialOffset = _$v.textRadialOffset;
      _textVariableAnchor = _$v.textVariableAnchor?.toBuilder();
      _textAnchor = _$v.textAnchor;
      _textMaxAngle = _$v.textMaxAngle;
      _textRotate = _$v.textRotate;
      _textPadding = _$v.textPadding;
      _textKeepUpright = _$v.textKeepUpright;
      _textTransform = _$v.textTransform;
      _textOffset = _$v.textOffset?.toBuilder();
      _textAllowOverlap = _$v.textAllowOverlap;
      _textIgnorePlacement = _$v.textIgnorePlacement;
      _textOptional = _$v.textOptional;
      _iconColor = _$v.iconColor;
      _iconHaloColor = _$v.iconHaloColor;
      _iconHaloWidth = _$v.iconHaloWidth;
      _iconHaloBlur = _$v.iconHaloBlur;
      _iconTranslate = _$v.iconTranslate?.toBuilder();
      _iconTranslateAnchor = _$v.iconTranslateAnchor;
      _textColor = _$v.textColor;
      _textHaloColor = _$v.textHaloColor;
      _textHaloWidth = _$v.textHaloWidth;
      _textHaloBlur = _$v.textHaloBlur;
      _textTranslate = _$v.textTranslate?.toBuilder();
      _textTranslateAnchor = _$v.textTranslateAnchor;
      _iconOpacityTransition = _$v.iconOpacityTransition?.toBuilder();
      _iconColorTransition = _$v.iconColorTransition?.toBuilder();
      _iconHaloColorTransition = _$v.iconHaloColorTransition?.toBuilder();
      _iconHaloWidthTransition = _$v.iconHaloWidthTransition?.toBuilder();
      _iconHaloBlurTransition = _$v.iconHaloBlurTransition?.toBuilder();
      _iconTranslateTransition = _$v.iconTranslateTransition?.toBuilder();
      _textOpacityTransition = _$v.textOpacityTransition?.toBuilder();
      _textColorTransition = _$v.textColorTransition?.toBuilder();
      _textHaloColorTransition = _$v.textHaloColorTransition?.toBuilder();
      _textHaloWidthTransition = _$v.textHaloWidthTransition?.toBuilder();
      _textHaloBlurTransition = _$v.textHaloBlurTransition?.toBuilder();
      _textTranslateTransition = _$v.textTranslateTransition?.toBuilder();
      _id = _$v.id;
      _visible = _$v.visible;
      _minZoom = _$v.minZoom;
      _maxZoom = _$v.maxZoom;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant SymbolLayerModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SymbolLayerModel;
  }

  @override
  void update(void Function(SymbolLayerModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SymbolLayerModel build() {
    _$SymbolLayerModel _$result;
    try {
      _$result = _$v ??
          new _$SymbolLayerModel._(
              sourceId: sourceId,
              symbolPlacement: symbolPlacement,
              symbolSpacing: symbolSpacing,
              symbolAvoidEdges: symbolAvoidEdges,
              symbolZOrder: symbolZOrder,
              iconAllowOverlap: iconAllowOverlap,
              iconIgnorePlacement: iconIgnorePlacement,
              iconOptional: iconOptional,
              iconRotationAlignment: iconRotationAlignment,
              iconSize: iconSize,
              iconTextFit: iconTextFit,
              iconTextFitPadding: iconTextFitPadding.build(),
              iconImage: iconImage,
              iconRotate: iconRotate,
              iconPadding: iconPadding,
              iconKeepUpright: iconKeepUpright,
              iconOffset: iconOffset.build(),
              iconAnchor: iconAnchor,
              iconPitchAlignment: iconPitchAlignment,
              textPitchAlignment: textPitchAlignment,
              textRotationAlignment: textRotationAlignment,
              textField: _textField?.build(),
              textFont: textFont.build(),
              textSize: textSize,
              textMaxWidth: textMaxWidth,
              textLineHeight: textLineHeight,
              textLetterSpacing: textLetterSpacing,
              textJustify: textJustify,
              textRadialOffset: textRadialOffset,
              textVariableAnchor: _textVariableAnchor?.build(),
              textAnchor: textAnchor,
              textMaxAngle: textMaxAngle,
              textRotate: textRotate,
              textPadding: textPadding,
              textKeepUpright: textKeepUpright,
              textTransform: textTransform,
              textOffset: textOffset.build(),
              textAllowOverlap: textAllowOverlap,
              textIgnorePlacement: textIgnorePlacement,
              textOptional: textOptional,
              iconColor: iconColor,
              iconHaloColor: iconHaloColor,
              iconHaloWidth: iconHaloWidth,
              iconHaloBlur: iconHaloBlur,
              iconTranslate: iconTranslate.build(),
              iconTranslateAnchor: iconTranslateAnchor,
              textColor: textColor,
              textHaloColor: textHaloColor,
              textHaloWidth: textHaloWidth,
              textHaloBlur: textHaloBlur,
              textTranslate: textTranslate.build(),
              textTranslateAnchor: textTranslateAnchor,
              iconOpacityTransition: iconOpacityTransition.build(),
              iconColorTransition: iconColorTransition.build(),
              iconHaloColorTransition: iconHaloColorTransition.build(),
              iconHaloWidthTransition: iconHaloWidthTransition.build(),
              iconHaloBlurTransition: iconHaloBlurTransition.build(),
              iconTranslateTransition: iconTranslateTransition.build(),
              textOpacityTransition: textOpacityTransition.build(),
              textColorTransition: textColorTransition.build(),
              textHaloColorTransition: textHaloColorTransition.build(),
              textHaloWidthTransition: textHaloWidthTransition.build(),
              textHaloBlurTransition: textHaloBlurTransition.build(),
              textTranslateTransition: textTranslateTransition.build(),
              id: id,
              visible: visible,
              minZoom: minZoom,
              maxZoom: maxZoom);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'iconTextFitPadding';
        iconTextFitPadding.build();

        _$failedField = 'iconOffset';
        iconOffset.build();

        _$failedField = 'textField';
        _textField?.build();
        _$failedField = 'textFont';
        textFont.build();

        _$failedField = 'textVariableAnchor';
        _textVariableAnchor?.build();

        _$failedField = 'textOffset';
        textOffset.build();

        _$failedField = 'iconTranslate';
        iconTranslate.build();

        _$failedField = 'textTranslate';
        textTranslate.build();

        _$failedField = 'iconOpacityTransition';
        iconOpacityTransition.build();
        _$failedField = 'iconColorTransition';
        iconColorTransition.build();
        _$failedField = 'iconHaloColorTransition';
        iconHaloColorTransition.build();
        _$failedField = 'iconHaloWidthTransition';
        iconHaloWidthTransition.build();
        _$failedField = 'iconHaloBlurTransition';
        iconHaloBlurTransition.build();
        _$failedField = 'iconTranslateTransition';
        iconTranslateTransition.build();
        _$failedField = 'textOpacityTransition';
        textOpacityTransition.build();
        _$failedField = 'textColorTransition';
        textColorTransition.build();
        _$failedField = 'textHaloColorTransition';
        textHaloColorTransition.build();
        _$failedField = 'textHaloWidthTransition';
        textHaloWidthTransition.build();
        _$failedField = 'textHaloBlurTransition';
        textHaloBlurTransition.build();
        _$failedField = 'textTranslateTransition';
        textTranslateTransition.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SymbolLayerModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
