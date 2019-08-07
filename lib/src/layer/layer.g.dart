// GENERATED CODE - DO NOT MODIFY BY HAND

part of layer;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BackgroundLayer> _$backgroundLayerSerializer =
    new _$BackgroundLayerSerializer();
Serializer<CircleLayer> _$circleLayerSerializer = new _$CircleLayerSerializer();
Serializer<FillLayer> _$fillLayerSerializer = new _$FillLayerSerializer();
Serializer<FillExtrusionLayer> _$fillExtrusionLayerSerializer =
    new _$FillExtrusionLayerSerializer();
Serializer<HeatmapLayer> _$heatmapLayerSerializer =
    new _$HeatmapLayerSerializer();
Serializer<HillshadeLayer> _$hillshadeLayerSerializer =
    new _$HillshadeLayerSerializer();
Serializer<LineLayer> _$lineLayerSerializer = new _$LineLayerSerializer();
Serializer<RasterLayer> _$rasterLayerSerializer = new _$RasterLayerSerializer();
Serializer<SymbolLayer> _$symbolLayerSerializer = new _$SymbolLayerSerializer();

class _$BackgroundLayerSerializer
    implements StructuredSerializer<BackgroundLayer> {
  @override
  final Iterable<Type> types = const [BackgroundLayer, _$BackgroundLayer];
  @override
  final String wireName = 'BackgroundLayer';

  @override
  Iterable<Object> serialize(Serializers serializers, BackgroundLayer object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
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
    if (object.color != null) {
      result
        ..add('color')
        ..add(serializers.serialize(object.color,
            specifiedType: const FullType(Expression)));
    }
    if (object.pattern != null) {
      result
        ..add('pattern')
        ..add(serializers.serialize(object.pattern,
            specifiedType: const FullType(Expression)));
    }
    if (object.opacity != null) {
      result
        ..add('opacity')
        ..add(serializers.serialize(object.opacity,
            specifiedType: const FullType(Expression)));
    }
    return result;
  }

  @override
  BackgroundLayer deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BackgroundLayerBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'color':
          result.color = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'pattern':
          result.pattern = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'opacity':
          result.opacity = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
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

class _$CircleLayerSerializer implements StructuredSerializer<CircleLayer> {
  @override
  final Iterable<Type> types = const [CircleLayer, _$CircleLayer];
  @override
  final String wireName = 'CircleLayer';

  @override
  Iterable<Object> serialize(Serializers serializers, CircleLayer object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'sourceId',
      serializers.serialize(object.sourceId,
          specifiedType: const FullType(String)),
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
    if (object.sourceLayer != null) {
      result
        ..add('sourceLayer')
        ..add(serializers.serialize(object.sourceLayer,
            specifiedType: const FullType(String)));
    }
    if (object.filter != null) {
      result
        ..add('filter')
        ..add(serializers.serialize(object.filter,
            specifiedType: const FullType(Expression)));
    }
    if (object.radius != null) {
      result
        ..add('radius')
        ..add(serializers.serialize(object.radius,
            specifiedType: const FullType(Expression)));
    }
    if (object.opacity != null) {
      result
        ..add('opacity')
        ..add(serializers.serialize(object.opacity,
            specifiedType: const FullType(Expression)));
    }
    if (object.color != null) {
      result
        ..add('color')
        ..add(serializers.serialize(object.color,
            specifiedType: const FullType(Expression)));
    }
    if (object.blur != null) {
      result
        ..add('blur')
        ..add(serializers.serialize(object.blur,
            specifiedType: const FullType(Expression)));
    }
    if (object.translate != null) {
      result
        ..add('translate')
        ..add(serializers.serialize(object.translate,
            specifiedType: const FullType(Expression)));
    }
    if (object.translateAnchor != null) {
      result
        ..add('translateAnchor')
        ..add(serializers.serialize(object.translateAnchor,
            specifiedType: const FullType(Expression)));
    }
    if (object.pitchScale != null) {
      result
        ..add('pitchScale')
        ..add(serializers.serialize(object.pitchScale,
            specifiedType: const FullType(Expression)));
    }
    if (object.pitchAlignment != null) {
      result
        ..add('pitchAlignment')
        ..add(serializers.serialize(object.pitchAlignment,
            specifiedType: const FullType(Expression)));
    }
    if (object.strokeWidth != null) {
      result
        ..add('strokeWidth')
        ..add(serializers.serialize(object.strokeWidth,
            specifiedType: const FullType(Expression)));
    }
    if (object.strokeOpacity != null) {
      result
        ..add('strokeOpacity')
        ..add(serializers.serialize(object.strokeOpacity,
            specifiedType: const FullType(Expression)));
    }
    if (object.strokeColor != null) {
      result
        ..add('strokeColor')
        ..add(serializers.serialize(object.strokeColor,
            specifiedType: const FullType(Expression)));
    }
    return result;
  }

  @override
  CircleLayer deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CircleLayerBuilder();

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
        case 'sourceLayer':
          result.sourceLayer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'filter':
          result.filter = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'radius':
          result.radius = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'opacity':
          result.opacity = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'color':
          result.color = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'blur':
          result.blur = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'translate':
          result.translate = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'translateAnchor':
          result.translateAnchor = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'pitchScale':
          result.pitchScale = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'pitchAlignment':
          result.pitchAlignment = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'strokeWidth':
          result.strokeWidth = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'strokeOpacity':
          result.strokeOpacity = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'strokeColor':
          result.strokeColor = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
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

class _$FillLayerSerializer implements StructuredSerializer<FillLayer> {
  @override
  final Iterable<Type> types = const [FillLayer, _$FillLayer];
  @override
  final String wireName = 'FillLayer';

  @override
  Iterable<Object> serialize(Serializers serializers, FillLayer object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'sourceId',
      serializers.serialize(object.sourceId,
          specifiedType: const FullType(String)),
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
    if (object.sourceLayer != null) {
      result
        ..add('sourceLayer')
        ..add(serializers.serialize(object.sourceLayer,
            specifiedType: const FullType(String)));
    }
    if (object.filter != null) {
      result
        ..add('filter')
        ..add(serializers.serialize(object.filter,
            specifiedType: const FullType(Expression)));
    }
    if (object.antialias != null) {
      result
        ..add('antialias')
        ..add(serializers.serialize(object.antialias,
            specifiedType: const FullType(Expression)));
    }
    if (object.opacity != null) {
      result
        ..add('opacity')
        ..add(serializers.serialize(object.opacity,
            specifiedType: const FullType(Expression)));
    }
    if (object.color != null) {
      result
        ..add('color')
        ..add(serializers.serialize(object.color,
            specifiedType: const FullType(Expression)));
    }
    if (object.outlineColor != null) {
      result
        ..add('outlineColor')
        ..add(serializers.serialize(object.outlineColor,
            specifiedType: const FullType(Expression)));
    }
    if (object.translate != null) {
      result
        ..add('translate')
        ..add(serializers.serialize(object.translate,
            specifiedType: const FullType(Expression)));
    }
    if (object.translateAnchor != null) {
      result
        ..add('translateAnchor')
        ..add(serializers.serialize(object.translateAnchor,
            specifiedType: const FullType(Expression)));
    }
    if (object.pattern != null) {
      result
        ..add('pattern')
        ..add(serializers.serialize(object.pattern,
            specifiedType: const FullType(Expression)));
    }
    return result;
  }

  @override
  FillLayer deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FillLayerBuilder();

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
        case 'sourceLayer':
          result.sourceLayer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'filter':
          result.filter = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'antialias':
          result.antialias = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'opacity':
          result.opacity = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'color':
          result.color = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'outlineColor':
          result.outlineColor = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'translate':
          result.translate = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'translateAnchor':
          result.translateAnchor = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'pattern':
          result.pattern = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
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

class _$FillExtrusionLayerSerializer
    implements StructuredSerializer<FillExtrusionLayer> {
  @override
  final Iterable<Type> types = const [FillExtrusionLayer, _$FillExtrusionLayer];
  @override
  final String wireName = 'FillExtrusionLayer';

  @override
  Iterable<Object> serialize(Serializers serializers, FillExtrusionLayer object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'sourceId',
      serializers.serialize(object.sourceId,
          specifiedType: const FullType(String)),
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
    if (object.sourceLayer != null) {
      result
        ..add('sourceLayer')
        ..add(serializers.serialize(object.sourceLayer,
            specifiedType: const FullType(String)));
    }
    if (object.filter != null) {
      result
        ..add('filter')
        ..add(serializers.serialize(object.filter,
            specifiedType: const FullType(Expression)));
    }
    if (object.opacity != null) {
      result
        ..add('opacity')
        ..add(serializers.serialize(object.opacity,
            specifiedType: const FullType(Expression)));
    }
    if (object.color != null) {
      result
        ..add('color')
        ..add(serializers.serialize(object.color,
            specifiedType: const FullType(Expression)));
    }
    if (object.translate != null) {
      result
        ..add('translate')
        ..add(serializers.serialize(object.translate,
            specifiedType: const FullType(Expression)));
    }
    if (object.translateAnchor != null) {
      result
        ..add('translateAnchor')
        ..add(serializers.serialize(object.translateAnchor,
            specifiedType: const FullType(Expression)));
    }
    if (object.pattern != null) {
      result
        ..add('pattern')
        ..add(serializers.serialize(object.pattern,
            specifiedType: const FullType(Expression)));
    }
    if (object.height != null) {
      result
        ..add('height')
        ..add(serializers.serialize(object.height,
            specifiedType: const FullType(Expression)));
    }
    if (object.base != null) {
      result
        ..add('base')
        ..add(serializers.serialize(object.base,
            specifiedType: const FullType(Expression)));
    }
    if (object.verticalGradient != null) {
      result
        ..add('verticalGradient')
        ..add(serializers.serialize(object.verticalGradient,
            specifiedType: const FullType(Expression)));
    }
    return result;
  }

  @override
  FillExtrusionLayer deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FillExtrusionLayerBuilder();

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
        case 'sourceLayer':
          result.sourceLayer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'filter':
          result.filter = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'opacity':
          result.opacity = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'color':
          result.color = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'translate':
          result.translate = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'translateAnchor':
          result.translateAnchor = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'pattern':
          result.pattern = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'height':
          result.height = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'base':
          result.base = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'verticalGradient':
          result.verticalGradient = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
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

class _$HeatmapLayerSerializer implements StructuredSerializer<HeatmapLayer> {
  @override
  final Iterable<Type> types = const [HeatmapLayer, _$HeatmapLayer];
  @override
  final String wireName = 'HeatmapLayer';

  @override
  Iterable<Object> serialize(Serializers serializers, HeatmapLayer object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'sourceId',
      serializers.serialize(object.sourceId,
          specifiedType: const FullType(String)),
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
    if (object.sourceLayer != null) {
      result
        ..add('sourceLayer')
        ..add(serializers.serialize(object.sourceLayer,
            specifiedType: const FullType(String)));
    }
    if (object.filter != null) {
      result
        ..add('filter')
        ..add(serializers.serialize(object.filter,
            specifiedType: const FullType(Expression)));
    }
    if (object.radius != null) {
      result
        ..add('radius')
        ..add(serializers.serialize(object.radius,
            specifiedType: const FullType(Expression)));
    }
    if (object.weight != null) {
      result
        ..add('weight')
        ..add(serializers.serialize(object.weight,
            specifiedType: const FullType(Expression)));
    }
    if (object.intensity != null) {
      result
        ..add('intensity')
        ..add(serializers.serialize(object.intensity,
            specifiedType: const FullType(Expression)));
    }
    if (object.color != null) {
      result
        ..add('color')
        ..add(serializers.serialize(object.color,
            specifiedType: const FullType(Expression)));
    }
    if (object.opacity != null) {
      result
        ..add('opacity')
        ..add(serializers.serialize(object.opacity,
            specifiedType: const FullType(Expression)));
    }
    return result;
  }

  @override
  HeatmapLayer deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HeatmapLayerBuilder();

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
        case 'sourceLayer':
          result.sourceLayer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'filter':
          result.filter = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'radius':
          result.radius = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'weight':
          result.weight = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'intensity':
          result.intensity = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'color':
          result.color = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'opacity':
          result.opacity = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
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

class _$HillshadeLayerSerializer
    implements StructuredSerializer<HillshadeLayer> {
  @override
  final Iterable<Type> types = const [HillshadeLayer, _$HillshadeLayer];
  @override
  final String wireName = 'HillshadeLayer';

  @override
  Iterable<Object> serialize(Serializers serializers, HillshadeLayer object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'sourceId',
      serializers.serialize(object.sourceId,
          specifiedType: const FullType(String)),
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
    if (object.sourceLayer != null) {
      result
        ..add('sourceLayer')
        ..add(serializers.serialize(object.sourceLayer,
            specifiedType: const FullType(String)));
    }
    if (object.illuminationDirection != null) {
      result
        ..add('illuminationDirection')
        ..add(serializers.serialize(object.illuminationDirection,
            specifiedType: const FullType(Expression)));
    }
    if (object.illuminationAnchor != null) {
      result
        ..add('illuminationAnchor')
        ..add(serializers.serialize(object.illuminationAnchor,
            specifiedType: const FullType(Expression)));
    }
    if (object.exaggeration != null) {
      result
        ..add('exaggeration')
        ..add(serializers.serialize(object.exaggeration,
            specifiedType: const FullType(Expression)));
    }
    if (object.shadowColor != null) {
      result
        ..add('shadowColor')
        ..add(serializers.serialize(object.shadowColor,
            specifiedType: const FullType(Expression)));
    }
    if (object.highlightColor != null) {
      result
        ..add('highlightColor')
        ..add(serializers.serialize(object.highlightColor,
            specifiedType: const FullType(Expression)));
    }
    if (object.accentColor != null) {
      result
        ..add('accentColor')
        ..add(serializers.serialize(object.accentColor,
            specifiedType: const FullType(Expression)));
    }
    return result;
  }

  @override
  HillshadeLayer deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HillshadeLayerBuilder();

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
        case 'sourceLayer':
          result.sourceLayer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'illuminationDirection':
          result.illuminationDirection = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'illuminationAnchor':
          result.illuminationAnchor = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'exaggeration':
          result.exaggeration = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'shadowColor':
          result.shadowColor = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'highlightColor':
          result.highlightColor = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'accentColor':
          result.accentColor = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
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

class _$LineLayerSerializer implements StructuredSerializer<LineLayer> {
  @override
  final Iterable<Type> types = const [LineLayer, _$LineLayer];
  @override
  final String wireName = 'LineLayer';

  @override
  Iterable<Object> serialize(Serializers serializers, LineLayer object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'sourceId',
      serializers.serialize(object.sourceId,
          specifiedType: const FullType(String)),
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
    if (object.sourceLayer != null) {
      result
        ..add('sourceLayer')
        ..add(serializers.serialize(object.sourceLayer,
            specifiedType: const FullType(String)));
    }
    if (object.filter != null) {
      result
        ..add('filter')
        ..add(serializers.serialize(object.filter,
            specifiedType: const FullType(Expression)));
    }
    if (object.cap != null) {
      result
        ..add('cap')
        ..add(serializers.serialize(object.cap,
            specifiedType: const FullType(Expression)));
    }
    if (object.join != null) {
      result
        ..add('join')
        ..add(serializers.serialize(object.join,
            specifiedType: const FullType(Expression)));
    }
    if (object.miterLimit != null) {
      result
        ..add('miterLimit')
        ..add(serializers.serialize(object.miterLimit,
            specifiedType: const FullType(Expression)));
    }
    if (object.roundLimit != null) {
      result
        ..add('roundLimit')
        ..add(serializers.serialize(object.roundLimit,
            specifiedType: const FullType(Expression)));
    }
    if (object.opacity != null) {
      result
        ..add('opacity')
        ..add(serializers.serialize(object.opacity,
            specifiedType: const FullType(Expression)));
    }
    if (object.color != null) {
      result
        ..add('color')
        ..add(serializers.serialize(object.color,
            specifiedType: const FullType(Expression)));
    }
    if (object.translate != null) {
      result
        ..add('translate')
        ..add(serializers.serialize(object.translate,
            specifiedType: const FullType(Expression)));
    }
    if (object.translateAnchor != null) {
      result
        ..add('translateAnchor')
        ..add(serializers.serialize(object.translateAnchor,
            specifiedType: const FullType(Expression)));
    }
    if (object.width != null) {
      result
        ..add('width')
        ..add(serializers.serialize(object.width,
            specifiedType: const FullType(Expression)));
    }
    if (object.gapWidth != null) {
      result
        ..add('gapWidth')
        ..add(serializers.serialize(object.gapWidth,
            specifiedType: const FullType(Expression)));
    }
    if (object.offset != null) {
      result
        ..add('offset')
        ..add(serializers.serialize(object.offset,
            specifiedType: const FullType(Expression)));
    }
    if (object.blur != null) {
      result
        ..add('blur')
        ..add(serializers.serialize(object.blur,
            specifiedType: const FullType(Expression)));
    }
    if (object.dasharray != null) {
      result
        ..add('dasharray')
        ..add(serializers.serialize(object.dasharray,
            specifiedType: const FullType(Expression)));
    }
    if (object.pattern != null) {
      result
        ..add('pattern')
        ..add(serializers.serialize(object.pattern,
            specifiedType: const FullType(Expression)));
    }
    if (object.gradient != null) {
      result
        ..add('gradient')
        ..add(serializers.serialize(object.gradient,
            specifiedType: const FullType(Expression)));
    }
    return result;
  }

  @override
  LineLayer deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LineLayerBuilder();

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
        case 'sourceLayer':
          result.sourceLayer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'filter':
          result.filter = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'cap':
          result.cap = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'join':
          result.join = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'miterLimit':
          result.miterLimit = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'roundLimit':
          result.roundLimit = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'opacity':
          result.opacity = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'color':
          result.color = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'translate':
          result.translate = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'translateAnchor':
          result.translateAnchor = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'width':
          result.width = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'gapWidth':
          result.gapWidth = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'offset':
          result.offset = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'blur':
          result.blur = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'dasharray':
          result.dasharray = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'pattern':
          result.pattern = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'gradient':
          result.gradient = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
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

class _$RasterLayerSerializer implements StructuredSerializer<RasterLayer> {
  @override
  final Iterable<Type> types = const [RasterLayer, _$RasterLayer];
  @override
  final String wireName = 'RasterLayer';

  @override
  Iterable<Object> serialize(Serializers serializers, RasterLayer object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'sourceId',
      serializers.serialize(object.sourceId,
          specifiedType: const FullType(String)),
      'opacityTransition',
      serializers.serialize(object.opacityTransition,
          specifiedType: const FullType(TransitionOptions)),
      'hueRotateTransition',
      serializers.serialize(object.hueRotateTransition,
          specifiedType: const FullType(TransitionOptions)),
      'brightnessMinTransition',
      serializers.serialize(object.brightnessMinTransition,
          specifiedType: const FullType(TransitionOptions)),
      'brightnessMaxTransition',
      serializers.serialize(object.brightnessMaxTransition,
          specifiedType: const FullType(TransitionOptions)),
      'saturationTransition',
      serializers.serialize(object.saturationTransition,
          specifiedType: const FullType(TransitionOptions)),
      'contrastTransition',
      serializers.serialize(object.contrastTransition,
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
    if (object.sourceLayer != null) {
      result
        ..add('sourceLayer')
        ..add(serializers.serialize(object.sourceLayer,
            specifiedType: const FullType(String)));
    }
    if (object.opacity != null) {
      result
        ..add('opacity')
        ..add(serializers.serialize(object.opacity,
            specifiedType: const FullType(Expression)));
    }
    if (object.hueRotate != null) {
      result
        ..add('hueRotate')
        ..add(serializers.serialize(object.hueRotate,
            specifiedType: const FullType(Expression)));
    }
    if (object.brightnessMin != null) {
      result
        ..add('brightnessMin')
        ..add(serializers.serialize(object.brightnessMin,
            specifiedType: const FullType(Expression)));
    }
    if (object.brightnessMax != null) {
      result
        ..add('brightnessMax')
        ..add(serializers.serialize(object.brightnessMax,
            specifiedType: const FullType(Expression)));
    }
    if (object.saturation != null) {
      result
        ..add('saturation')
        ..add(serializers.serialize(object.saturation,
            specifiedType: const FullType(Expression)));
    }
    if (object.contrast != null) {
      result
        ..add('contrast')
        ..add(serializers.serialize(object.contrast,
            specifiedType: const FullType(Expression)));
    }
    if (object.resampling != null) {
      result
        ..add('resampling')
        ..add(serializers.serialize(object.resampling,
            specifiedType: const FullType(Expression)));
    }
    if (object.fadeDuration != null) {
      result
        ..add('fadeDuration')
        ..add(serializers.serialize(object.fadeDuration,
            specifiedType: const FullType(Expression)));
    }
    return result;
  }

  @override
  RasterLayer deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RasterLayerBuilder();

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
        case 'sourceLayer':
          result.sourceLayer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'opacity':
          result.opacity = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'hueRotate':
          result.hueRotate = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'brightnessMin':
          result.brightnessMin = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'brightnessMax':
          result.brightnessMax = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'saturation':
          result.saturation = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'contrast':
          result.contrast = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'resampling':
          result.resampling = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'fadeDuration':
          result.fadeDuration = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'opacityTransition':
          result.opacityTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'hueRotateTransition':
          result.hueRotateTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'brightnessMinTransition':
          result.brightnessMinTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'brightnessMaxTransition':
          result.brightnessMaxTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'saturationTransition':
          result.saturationTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'contrastTransition':
          result.contrastTransition.replace(serializers.deserialize(value,
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

class _$SymbolLayerSerializer implements StructuredSerializer<SymbolLayer> {
  @override
  final Iterable<Type> types = const [SymbolLayer, _$SymbolLayer];
  @override
  final String wireName = 'SymbolLayer';

  @override
  Iterable<Object> serialize(Serializers serializers, SymbolLayer object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'sourceId',
      serializers.serialize(object.sourceId,
          specifiedType: const FullType(String)),
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
    if (object.sourceLayer != null) {
      result
        ..add('sourceLayer')
        ..add(serializers.serialize(object.sourceLayer,
            specifiedType: const FullType(String)));
    }
    if (object.filter != null) {
      result
        ..add('filter')
        ..add(serializers.serialize(object.filter,
            specifiedType: const FullType(Expression)));
    }
    if (object.symbolPlacement != null) {
      result
        ..add('symbolPlacement')
        ..add(serializers.serialize(object.symbolPlacement,
            specifiedType: const FullType(Expression)));
    }
    if (object.symbolSpacing != null) {
      result
        ..add('symbolSpacing')
        ..add(serializers.serialize(object.symbolSpacing,
            specifiedType: const FullType(Expression)));
    }
    if (object.symbolAvoidEdges != null) {
      result
        ..add('symbolAvoidEdges')
        ..add(serializers.serialize(object.symbolAvoidEdges,
            specifiedType: const FullType(Expression)));
    }
    if (object.symbolZOrder != null) {
      result
        ..add('symbolZOrder')
        ..add(serializers.serialize(object.symbolZOrder,
            specifiedType: const FullType(Expression)));
    }
    if (object.iconAllowOverlap != null) {
      result
        ..add('iconAllowOverlap')
        ..add(serializers.serialize(object.iconAllowOverlap,
            specifiedType: const FullType(Expression)));
    }
    if (object.iconIgnorePlacement != null) {
      result
        ..add('iconIgnorePlacement')
        ..add(serializers.serialize(object.iconIgnorePlacement,
            specifiedType: const FullType(Expression)));
    }
    if (object.iconOptional != null) {
      result
        ..add('iconOptional')
        ..add(serializers.serialize(object.iconOptional,
            specifiedType: const FullType(Expression)));
    }
    if (object.iconRotationAlignment != null) {
      result
        ..add('iconRotationAlignment')
        ..add(serializers.serialize(object.iconRotationAlignment,
            specifiedType: const FullType(Expression)));
    }
    if (object.iconSize != null) {
      result
        ..add('iconSize')
        ..add(serializers.serialize(object.iconSize,
            specifiedType: const FullType(Expression)));
    }
    if (object.iconTextFit != null) {
      result
        ..add('iconTextFit')
        ..add(serializers.serialize(object.iconTextFit,
            specifiedType: const FullType(Expression)));
    }
    if (object.iconTextFitPadding != null) {
      result
        ..add('iconTextFitPadding')
        ..add(serializers.serialize(object.iconTextFitPadding,
            specifiedType: const FullType(Expression)));
    }
    if (object.iconImage != null) {
      result
        ..add('iconImage')
        ..add(serializers.serialize(object.iconImage,
            specifiedType: const FullType(Expression)));
    }
    if (object.iconRotate != null) {
      result
        ..add('iconRotate')
        ..add(serializers.serialize(object.iconRotate,
            specifiedType: const FullType(Expression)));
    }
    if (object.iconPadding != null) {
      result
        ..add('iconPadding')
        ..add(serializers.serialize(object.iconPadding,
            specifiedType: const FullType(Expression)));
    }
    if (object.iconKeepUpright != null) {
      result
        ..add('iconKeepUpright')
        ..add(serializers.serialize(object.iconKeepUpright,
            specifiedType: const FullType(Expression)));
    }
    if (object.iconOffset != null) {
      result
        ..add('iconOffset')
        ..add(serializers.serialize(object.iconOffset,
            specifiedType: const FullType(Expression)));
    }
    if (object.iconAnchor != null) {
      result
        ..add('iconAnchor')
        ..add(serializers.serialize(object.iconAnchor,
            specifiedType: const FullType(Expression)));
    }
    if (object.iconPitchAlignment != null) {
      result
        ..add('iconPitchAlignment')
        ..add(serializers.serialize(object.iconPitchAlignment,
            specifiedType: const FullType(Expression)));
    }
    if (object.textPitchAlignment != null) {
      result
        ..add('textPitchAlignment')
        ..add(serializers.serialize(object.textPitchAlignment,
            specifiedType: const FullType(Expression)));
    }
    if (object.textRotationAlignment != null) {
      result
        ..add('textRotationAlignment')
        ..add(serializers.serialize(object.textRotationAlignment,
            specifiedType: const FullType(Expression)));
    }
    if (object.textField != null) {
      result
        ..add('textField')
        ..add(serializers.serialize(object.textField,
            specifiedType: const FullType(Expression)));
    }
    if (object.textFont != null) {
      result
        ..add('textFont')
        ..add(serializers.serialize(object.textFont,
            specifiedType: const FullType(Expression)));
    }
    if (object.textSize != null) {
      result
        ..add('textSize')
        ..add(serializers.serialize(object.textSize,
            specifiedType: const FullType(Expression)));
    }
    if (object.textMaxWidth != null) {
      result
        ..add('textMaxWidth')
        ..add(serializers.serialize(object.textMaxWidth,
            specifiedType: const FullType(Expression)));
    }
    if (object.textLineHeight != null) {
      result
        ..add('textLineHeight')
        ..add(serializers.serialize(object.textLineHeight,
            specifiedType: const FullType(Expression)));
    }
    if (object.textLetterSpacing != null) {
      result
        ..add('textLetterSpacing')
        ..add(serializers.serialize(object.textLetterSpacing,
            specifiedType: const FullType(Expression)));
    }
    if (object.textJustify != null) {
      result
        ..add('textJustify')
        ..add(serializers.serialize(object.textJustify,
            specifiedType: const FullType(Expression)));
    }
    if (object.textRadialOffset != null) {
      result
        ..add('textRadialOffset')
        ..add(serializers.serialize(object.textRadialOffset,
            specifiedType: const FullType(Expression)));
    }
    if (object.textVariableAnchor != null) {
      result
        ..add('textVariableAnchor')
        ..add(serializers.serialize(object.textVariableAnchor,
            specifiedType: const FullType(Expression)));
    }
    if (object.textAnchor != null) {
      result
        ..add('textAnchor')
        ..add(serializers.serialize(object.textAnchor,
            specifiedType: const FullType(Expression)));
    }
    if (object.textMaxAngle != null) {
      result
        ..add('textMaxAngle')
        ..add(serializers.serialize(object.textMaxAngle,
            specifiedType: const FullType(Expression)));
    }
    if (object.textRotate != null) {
      result
        ..add('textRotate')
        ..add(serializers.serialize(object.textRotate,
            specifiedType: const FullType(Expression)));
    }
    if (object.textPadding != null) {
      result
        ..add('textPadding')
        ..add(serializers.serialize(object.textPadding,
            specifiedType: const FullType(Expression)));
    }
    if (object.textKeepUpright != null) {
      result
        ..add('textKeepUpright')
        ..add(serializers.serialize(object.textKeepUpright,
            specifiedType: const FullType(Expression)));
    }
    if (object.textTransform != null) {
      result
        ..add('textTransform')
        ..add(serializers.serialize(object.textTransform,
            specifiedType: const FullType(Expression)));
    }
    if (object.textOffset != null) {
      result
        ..add('textOffset')
        ..add(serializers.serialize(object.textOffset,
            specifiedType: const FullType(Expression)));
    }
    if (object.textAllowOverlap != null) {
      result
        ..add('textAllowOverlap')
        ..add(serializers.serialize(object.textAllowOverlap,
            specifiedType: const FullType(Expression)));
    }
    if (object.textIgnorePlacement != null) {
      result
        ..add('textIgnorePlacement')
        ..add(serializers.serialize(object.textIgnorePlacement,
            specifiedType: const FullType(Expression)));
    }
    if (object.textOptional != null) {
      result
        ..add('textOptional')
        ..add(serializers.serialize(object.textOptional,
            specifiedType: const FullType(Expression)));
    }
    if (object.iconOpacity != null) {
      result
        ..add('iconOpacity')
        ..add(serializers.serialize(object.iconOpacity,
            specifiedType: const FullType(Expression)));
    }
    if (object.iconColor != null) {
      result
        ..add('iconColor')
        ..add(serializers.serialize(object.iconColor,
            specifiedType: const FullType(Expression)));
    }
    if (object.iconHaloColor != null) {
      result
        ..add('iconHaloColor')
        ..add(serializers.serialize(object.iconHaloColor,
            specifiedType: const FullType(Expression)));
    }
    if (object.iconHaloWidth != null) {
      result
        ..add('iconHaloWidth')
        ..add(serializers.serialize(object.iconHaloWidth,
            specifiedType: const FullType(Expression)));
    }
    if (object.iconHaloBlur != null) {
      result
        ..add('iconHaloBlur')
        ..add(serializers.serialize(object.iconHaloBlur,
            specifiedType: const FullType(Expression)));
    }
    if (object.iconTranslate != null) {
      result
        ..add('iconTranslate')
        ..add(serializers.serialize(object.iconTranslate,
            specifiedType: const FullType(Expression)));
    }
    if (object.iconTranslateAnchor != null) {
      result
        ..add('iconTranslateAnchor')
        ..add(serializers.serialize(object.iconTranslateAnchor,
            specifiedType: const FullType(Expression)));
    }
    if (object.textOpacity != null) {
      result
        ..add('textOpacity')
        ..add(serializers.serialize(object.textOpacity,
            specifiedType: const FullType(Expression)));
    }
    if (object.textColor != null) {
      result
        ..add('textColor')
        ..add(serializers.serialize(object.textColor,
            specifiedType: const FullType(Expression)));
    }
    if (object.textHaloColor != null) {
      result
        ..add('textHaloColor')
        ..add(serializers.serialize(object.textHaloColor,
            specifiedType: const FullType(Expression)));
    }
    if (object.textHaloWidth != null) {
      result
        ..add('textHaloWidth')
        ..add(serializers.serialize(object.textHaloWidth,
            specifiedType: const FullType(Expression)));
    }
    if (object.textHaloBlur != null) {
      result
        ..add('textHaloBlur')
        ..add(serializers.serialize(object.textHaloBlur,
            specifiedType: const FullType(Expression)));
    }
    if (object.textTranslate != null) {
      result
        ..add('textTranslate')
        ..add(serializers.serialize(object.textTranslate,
            specifiedType: const FullType(Expression)));
    }
    if (object.textTranslateAnchor != null) {
      result
        ..add('textTranslateAnchor')
        ..add(serializers.serialize(object.textTranslateAnchor,
            specifiedType: const FullType(Expression)));
    }
    return result;
  }

  @override
  SymbolLayer deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SymbolLayerBuilder();

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
        case 'sourceLayer':
          result.sourceLayer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'filter':
          result.filter = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'symbolPlacement':
          result.symbolPlacement = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'symbolSpacing':
          result.symbolSpacing = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'symbolAvoidEdges':
          result.symbolAvoidEdges = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'symbolZOrder':
          result.symbolZOrder = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'iconAllowOverlap':
          result.iconAllowOverlap = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'iconIgnorePlacement':
          result.iconIgnorePlacement = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'iconOptional':
          result.iconOptional = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'iconRotationAlignment':
          result.iconRotationAlignment = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'iconSize':
          result.iconSize = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'iconTextFit':
          result.iconTextFit = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'iconTextFitPadding':
          result.iconTextFitPadding = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'iconImage':
          result.iconImage = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'iconRotate':
          result.iconRotate = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'iconPadding':
          result.iconPadding = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'iconKeepUpright':
          result.iconKeepUpright = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'iconOffset':
          result.iconOffset = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'iconAnchor':
          result.iconAnchor = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'iconPitchAlignment':
          result.iconPitchAlignment = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'textPitchAlignment':
          result.textPitchAlignment = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'textRotationAlignment':
          result.textRotationAlignment = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'textField':
          result.textField = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'textFont':
          result.textFont = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'textSize':
          result.textSize = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'textMaxWidth':
          result.textMaxWidth = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'textLineHeight':
          result.textLineHeight = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'textLetterSpacing':
          result.textLetterSpacing = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'textJustify':
          result.textJustify = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'textRadialOffset':
          result.textRadialOffset = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'textVariableAnchor':
          result.textVariableAnchor = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'textAnchor':
          result.textAnchor = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'textMaxAngle':
          result.textMaxAngle = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'textRotate':
          result.textRotate = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'textPadding':
          result.textPadding = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'textKeepUpright':
          result.textKeepUpright = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'textTransform':
          result.textTransform = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'textOffset':
          result.textOffset = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'textAllowOverlap':
          result.textAllowOverlap = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'textIgnorePlacement':
          result.textIgnorePlacement = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'textOptional':
          result.textOptional = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'iconOpacity':
          result.iconOpacity = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'iconColor':
          result.iconColor = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'iconHaloColor':
          result.iconHaloColor = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'iconHaloWidth':
          result.iconHaloWidth = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'iconHaloBlur':
          result.iconHaloBlur = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'iconTranslate':
          result.iconTranslate = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'iconTranslateAnchor':
          result.iconTranslateAnchor = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'textOpacity':
          result.textOpacity = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'textColor':
          result.textColor = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'textHaloColor':
          result.textHaloColor = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'textHaloWidth':
          result.textHaloWidth = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'textHaloBlur':
          result.textHaloBlur = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'textTranslate':
          result.textTranslate = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
          break;
        case 'textTranslateAnchor':
          result.textTranslateAnchor = serializers.deserialize(value,
              specifiedType: const FullType(Expression)) as Expression;
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

abstract class LayerBuilder {
  void replace(Layer other);
  void update(void Function(LayerBuilder) updates);
  String get id;
  set id(String id);

  bool get visible;
  set visible(bool visible);

  double get minZoom;
  set minZoom(double minZoom);

  double get maxZoom;
  set maxZoom(double maxZoom);

  MethodChannel get channel;
  set channel(MethodChannel channel);
}

class _$BackgroundLayer extends BackgroundLayer {
  @override
  final Expression color;
  @override
  final Expression pattern;
  @override
  final Expression opacity;
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
  @override
  final MethodChannel channel;

  factory _$BackgroundLayer([void Function(BackgroundLayerBuilder) updates]) =>
      (new BackgroundLayerBuilder()..update(updates)).build();

  _$BackgroundLayer._(
      {this.color,
      this.pattern,
      this.opacity,
      this.colorTransition,
      this.patternTransition,
      this.opacityTransition,
      this.id,
      this.visible,
      this.minZoom,
      this.maxZoom,
      this.channel})
      : super._() {
    if (colorTransition == null) {
      throw new BuiltValueNullFieldError('BackgroundLayer', 'colorTransition');
    }
    if (patternTransition == null) {
      throw new BuiltValueNullFieldError(
          'BackgroundLayer', 'patternTransition');
    }
    if (opacityTransition == null) {
      throw new BuiltValueNullFieldError(
          'BackgroundLayer', 'opacityTransition');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('BackgroundLayer', 'id');
    }
    if (visible == null) {
      throw new BuiltValueNullFieldError('BackgroundLayer', 'visible');
    }
    if (minZoom == null) {
      throw new BuiltValueNullFieldError('BackgroundLayer', 'minZoom');
    }
    if (maxZoom == null) {
      throw new BuiltValueNullFieldError('BackgroundLayer', 'maxZoom');
    }
  }

  @override
  BackgroundLayer rebuild(void Function(BackgroundLayerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BackgroundLayerBuilder toBuilder() =>
      new BackgroundLayerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BackgroundLayer &&
        color == other.color &&
        pattern == other.pattern &&
        opacity == other.opacity &&
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
                            $jc(
                                $jc(
                                    $jc($jc(0, color.hashCode),
                                        pattern.hashCode),
                                    opacity.hashCode),
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
    return (newBuiltValueToStringHelper('BackgroundLayer')
          ..add('color', color)
          ..add('pattern', pattern)
          ..add('opacity', opacity)
          ..add('colorTransition', colorTransition)
          ..add('patternTransition', patternTransition)
          ..add('opacityTransition', opacityTransition)
          ..add('id', id)
          ..add('visible', visible)
          ..add('minZoom', minZoom)
          ..add('maxZoom', maxZoom)
          ..add('channel', channel))
        .toString();
  }
}

class BackgroundLayerBuilder
    implements Builder<BackgroundLayer, BackgroundLayerBuilder>, LayerBuilder {
  _$BackgroundLayer _$v;

  Expression _color;
  Expression get color => _$this._color;
  set color(Expression color) => _$this._color = color;

  Expression _pattern;
  Expression get pattern => _$this._pattern;
  set pattern(Expression pattern) => _$this._pattern = pattern;

  Expression _opacity;
  Expression get opacity => _$this._opacity;
  set opacity(Expression opacity) => _$this._opacity = opacity;

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

  MethodChannel _channel;
  MethodChannel get channel => _$this._channel;
  set channel(MethodChannel channel) => _$this._channel = channel;

  BackgroundLayerBuilder();

  BackgroundLayerBuilder get _$this {
    if (_$v != null) {
      _color = _$v.color;
      _pattern = _$v.pattern;
      _opacity = _$v.opacity;
      _colorTransition = _$v.colorTransition?.toBuilder();
      _patternTransition = _$v.patternTransition?.toBuilder();
      _opacityTransition = _$v.opacityTransition?.toBuilder();
      _id = _$v.id;
      _visible = _$v.visible;
      _minZoom = _$v.minZoom;
      _maxZoom = _$v.maxZoom;
      _channel = _$v.channel;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant BackgroundLayer other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BackgroundLayer;
  }

  @override
  void update(void Function(BackgroundLayerBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BackgroundLayer build() {
    _$BackgroundLayer _$result;
    try {
      _$result = _$v ??
          new _$BackgroundLayer._(
              color: color,
              pattern: pattern,
              opacity: opacity,
              colorTransition: colorTransition.build(),
              patternTransition: patternTransition.build(),
              opacityTransition: opacityTransition.build(),
              id: id,
              visible: visible,
              minZoom: minZoom,
              maxZoom: maxZoom,
              channel: channel);
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
            'BackgroundLayer', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CircleLayer extends CircleLayer {
  @override
  final String sourceId;
  @override
  final String sourceLayer;
  @override
  final Expression filter;
  @override
  final Expression radius;
  @override
  final Expression opacity;
  @override
  final Expression color;
  @override
  final Expression blur;
  @override
  final Expression translate;
  @override
  final Expression translateAnchor;
  @override
  final Expression pitchScale;
  @override
  final Expression pitchAlignment;
  @override
  final Expression strokeWidth;
  @override
  final Expression strokeOpacity;
  @override
  final Expression strokeColor;
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
  @override
  final MethodChannel channel;

  factory _$CircleLayer([void Function(CircleLayerBuilder) updates]) =>
      (new CircleLayerBuilder()..update(updates)).build();

  _$CircleLayer._(
      {this.sourceId,
      this.sourceLayer,
      this.filter,
      this.radius,
      this.opacity,
      this.color,
      this.blur,
      this.translate,
      this.translateAnchor,
      this.pitchScale,
      this.pitchAlignment,
      this.strokeWidth,
      this.strokeOpacity,
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
      this.maxZoom,
      this.channel})
      : super._() {
    if (sourceId == null) {
      throw new BuiltValueNullFieldError('CircleLayer', 'sourceId');
    }
    if (radiusTransition == null) {
      throw new BuiltValueNullFieldError('CircleLayer', 'radiusTransition');
    }
    if (colorTransition == null) {
      throw new BuiltValueNullFieldError('CircleLayer', 'colorTransition');
    }
    if (blurTransition == null) {
      throw new BuiltValueNullFieldError('CircleLayer', 'blurTransition');
    }
    if (opacityTransition == null) {
      throw new BuiltValueNullFieldError('CircleLayer', 'opacityTransition');
    }
    if (translateTransition == null) {
      throw new BuiltValueNullFieldError('CircleLayer', 'translateTransition');
    }
    if (strokeWidthTransition == null) {
      throw new BuiltValueNullFieldError(
          'CircleLayer', 'strokeWidthTransition');
    }
    if (strokeColorTransition == null) {
      throw new BuiltValueNullFieldError(
          'CircleLayer', 'strokeColorTransition');
    }
    if (strokeOpacityTransition == null) {
      throw new BuiltValueNullFieldError(
          'CircleLayer', 'strokeOpacityTransition');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('CircleLayer', 'id');
    }
    if (visible == null) {
      throw new BuiltValueNullFieldError('CircleLayer', 'visible');
    }
    if (minZoom == null) {
      throw new BuiltValueNullFieldError('CircleLayer', 'minZoom');
    }
    if (maxZoom == null) {
      throw new BuiltValueNullFieldError('CircleLayer', 'maxZoom');
    }
  }

  @override
  CircleLayer rebuild(void Function(CircleLayerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CircleLayerBuilder toBuilder() => new CircleLayerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CircleLayer &&
        sourceId == other.sourceId &&
        sourceLayer == other.sourceLayer &&
        filter == other.filter &&
        radius == other.radius &&
        opacity == other.opacity &&
        color == other.color &&
        blur == other.blur &&
        translate == other.translate &&
        translateAnchor == other.translateAnchor &&
        pitchScale == other.pitchScale &&
        pitchAlignment == other.pitchAlignment &&
        strokeWidth == other.strokeWidth &&
        strokeOpacity == other.strokeOpacity &&
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
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc(0, sourceId.hashCode), sourceLayer.hashCode), filter.hashCode), radius.hashCode), opacity.hashCode), color.hashCode), blur.hashCode),
                                                                                translate.hashCode),
                                                                            translateAnchor.hashCode),
                                                                        pitchScale.hashCode),
                                                                    pitchAlignment.hashCode),
                                                                strokeWidth.hashCode),
                                                            strokeOpacity.hashCode),
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
    return (newBuiltValueToStringHelper('CircleLayer')
          ..add('sourceId', sourceId)
          ..add('sourceLayer', sourceLayer)
          ..add('filter', filter)
          ..add('radius', radius)
          ..add('opacity', opacity)
          ..add('color', color)
          ..add('blur', blur)
          ..add('translate', translate)
          ..add('translateAnchor', translateAnchor)
          ..add('pitchScale', pitchScale)
          ..add('pitchAlignment', pitchAlignment)
          ..add('strokeWidth', strokeWidth)
          ..add('strokeOpacity', strokeOpacity)
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
          ..add('maxZoom', maxZoom)
          ..add('channel', channel))
        .toString();
  }
}

class CircleLayerBuilder
    implements Builder<CircleLayer, CircleLayerBuilder>, LayerBuilder {
  _$CircleLayer _$v;

  String _sourceId;
  String get sourceId => _$this._sourceId;
  set sourceId(String sourceId) => _$this._sourceId = sourceId;

  String _sourceLayer;
  String get sourceLayer => _$this._sourceLayer;
  set sourceLayer(String sourceLayer) => _$this._sourceLayer = sourceLayer;

  Expression _filter;
  Expression get filter => _$this._filter;
  set filter(Expression filter) => _$this._filter = filter;

  Expression _radius;
  Expression get radius => _$this._radius;
  set radius(Expression radius) => _$this._radius = radius;

  Expression _opacity;
  Expression get opacity => _$this._opacity;
  set opacity(Expression opacity) => _$this._opacity = opacity;

  Expression _color;
  Expression get color => _$this._color;
  set color(Expression color) => _$this._color = color;

  Expression _blur;
  Expression get blur => _$this._blur;
  set blur(Expression blur) => _$this._blur = blur;

  Expression _translate;
  Expression get translate => _$this._translate;
  set translate(Expression translate) => _$this._translate = translate;

  Expression _translateAnchor;
  Expression get translateAnchor => _$this._translateAnchor;
  set translateAnchor(Expression translateAnchor) =>
      _$this._translateAnchor = translateAnchor;

  Expression _pitchScale;
  Expression get pitchScale => _$this._pitchScale;
  set pitchScale(Expression pitchScale) => _$this._pitchScale = pitchScale;

  Expression _pitchAlignment;
  Expression get pitchAlignment => _$this._pitchAlignment;
  set pitchAlignment(Expression pitchAlignment) =>
      _$this._pitchAlignment = pitchAlignment;

  Expression _strokeWidth;
  Expression get strokeWidth => _$this._strokeWidth;
  set strokeWidth(Expression strokeWidth) => _$this._strokeWidth = strokeWidth;

  Expression _strokeOpacity;
  Expression get strokeOpacity => _$this._strokeOpacity;
  set strokeOpacity(Expression strokeOpacity) =>
      _$this._strokeOpacity = strokeOpacity;

  Expression _strokeColor;
  Expression get strokeColor => _$this._strokeColor;
  set strokeColor(Expression strokeColor) => _$this._strokeColor = strokeColor;

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

  MethodChannel _channel;
  MethodChannel get channel => _$this._channel;
  set channel(MethodChannel channel) => _$this._channel = channel;

  CircleLayerBuilder();

  CircleLayerBuilder get _$this {
    if (_$v != null) {
      _sourceId = _$v.sourceId;
      _sourceLayer = _$v.sourceLayer;
      _filter = _$v.filter;
      _radius = _$v.radius;
      _opacity = _$v.opacity;
      _color = _$v.color;
      _blur = _$v.blur;
      _translate = _$v.translate;
      _translateAnchor = _$v.translateAnchor;
      _pitchScale = _$v.pitchScale;
      _pitchAlignment = _$v.pitchAlignment;
      _strokeWidth = _$v.strokeWidth;
      _strokeOpacity = _$v.strokeOpacity;
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
      _channel = _$v.channel;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant CircleLayer other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CircleLayer;
  }

  @override
  void update(void Function(CircleLayerBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CircleLayer build() {
    _$CircleLayer _$result;
    try {
      _$result = _$v ??
          new _$CircleLayer._(
              sourceId: sourceId,
              sourceLayer: sourceLayer,
              filter: filter,
              radius: radius,
              opacity: opacity,
              color: color,
              blur: blur,
              translate: translate,
              translateAnchor: translateAnchor,
              pitchScale: pitchScale,
              pitchAlignment: pitchAlignment,
              strokeWidth: strokeWidth,
              strokeOpacity: strokeOpacity,
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
              maxZoom: maxZoom,
              channel: channel);
    } catch (_) {
      String _$failedField;
      try {
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
            'CircleLayer', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$FillLayer extends FillLayer {
  @override
  final String sourceId;
  @override
  final String sourceLayer;
  @override
  final Expression filter;
  @override
  final Expression antialias;
  @override
  final Expression opacity;
  @override
  final Expression color;
  @override
  final Expression outlineColor;
  @override
  final Expression translate;
  @override
  final Expression translateAnchor;
  @override
  final Expression pattern;
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
  @override
  final MethodChannel channel;

  factory _$FillLayer([void Function(FillLayerBuilder) updates]) =>
      (new FillLayerBuilder()..update(updates)).build();

  _$FillLayer._(
      {this.sourceId,
      this.sourceLayer,
      this.filter,
      this.antialias,
      this.opacity,
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
      this.maxZoom,
      this.channel})
      : super._() {
    if (sourceId == null) {
      throw new BuiltValueNullFieldError('FillLayer', 'sourceId');
    }
    if (opacityTransition == null) {
      throw new BuiltValueNullFieldError('FillLayer', 'opacityTransition');
    }
    if (colorTransition == null) {
      throw new BuiltValueNullFieldError('FillLayer', 'colorTransition');
    }
    if (outlineColorTransition == null) {
      throw new BuiltValueNullFieldError('FillLayer', 'outlineColorTransition');
    }
    if (translateTransition == null) {
      throw new BuiltValueNullFieldError('FillLayer', 'translateTransition');
    }
    if (patternTransition == null) {
      throw new BuiltValueNullFieldError('FillLayer', 'patternTransition');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('FillLayer', 'id');
    }
    if (visible == null) {
      throw new BuiltValueNullFieldError('FillLayer', 'visible');
    }
    if (minZoom == null) {
      throw new BuiltValueNullFieldError('FillLayer', 'minZoom');
    }
    if (maxZoom == null) {
      throw new BuiltValueNullFieldError('FillLayer', 'maxZoom');
    }
  }

  @override
  FillLayer rebuild(void Function(FillLayerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FillLayerBuilder toBuilder() => new FillLayerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FillLayer &&
        sourceId == other.sourceId &&
        sourceLayer == other.sourceLayer &&
        filter == other.filter &&
        antialias == other.antialias &&
        opacity == other.opacity &&
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
                                                                    $jc(
                                                                        $jc(
                                                                            $jc(
                                                                                0,
                                                                                sourceId
                                                                                    .hashCode),
                                                                            sourceLayer
                                                                                .hashCode),
                                                                        filter
                                                                            .hashCode),
                                                                    antialias
                                                                        .hashCode),
                                                                opacity
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
    return (newBuiltValueToStringHelper('FillLayer')
          ..add('sourceId', sourceId)
          ..add('sourceLayer', sourceLayer)
          ..add('filter', filter)
          ..add('antialias', antialias)
          ..add('opacity', opacity)
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
          ..add('maxZoom', maxZoom)
          ..add('channel', channel))
        .toString();
  }
}

class FillLayerBuilder
    implements Builder<FillLayer, FillLayerBuilder>, LayerBuilder {
  _$FillLayer _$v;

  String _sourceId;
  String get sourceId => _$this._sourceId;
  set sourceId(String sourceId) => _$this._sourceId = sourceId;

  String _sourceLayer;
  String get sourceLayer => _$this._sourceLayer;
  set sourceLayer(String sourceLayer) => _$this._sourceLayer = sourceLayer;

  Expression _filter;
  Expression get filter => _$this._filter;
  set filter(Expression filter) => _$this._filter = filter;

  Expression _antialias;
  Expression get antialias => _$this._antialias;
  set antialias(Expression antialias) => _$this._antialias = antialias;

  Expression _opacity;
  Expression get opacity => _$this._opacity;
  set opacity(Expression opacity) => _$this._opacity = opacity;

  Expression _color;
  Expression get color => _$this._color;
  set color(Expression color) => _$this._color = color;

  Expression _outlineColor;
  Expression get outlineColor => _$this._outlineColor;
  set outlineColor(Expression outlineColor) =>
      _$this._outlineColor = outlineColor;

  Expression _translate;
  Expression get translate => _$this._translate;
  set translate(Expression translate) => _$this._translate = translate;

  Expression _translateAnchor;
  Expression get translateAnchor => _$this._translateAnchor;
  set translateAnchor(Expression translateAnchor) =>
      _$this._translateAnchor = translateAnchor;

  Expression _pattern;
  Expression get pattern => _$this._pattern;
  set pattern(Expression pattern) => _$this._pattern = pattern;

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

  MethodChannel _channel;
  MethodChannel get channel => _$this._channel;
  set channel(MethodChannel channel) => _$this._channel = channel;

  FillLayerBuilder();

  FillLayerBuilder get _$this {
    if (_$v != null) {
      _sourceId = _$v.sourceId;
      _sourceLayer = _$v.sourceLayer;
      _filter = _$v.filter;
      _antialias = _$v.antialias;
      _opacity = _$v.opacity;
      _color = _$v.color;
      _outlineColor = _$v.outlineColor;
      _translate = _$v.translate;
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
      _channel = _$v.channel;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant FillLayer other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$FillLayer;
  }

  @override
  void update(void Function(FillLayerBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FillLayer build() {
    _$FillLayer _$result;
    try {
      _$result = _$v ??
          new _$FillLayer._(
              sourceId: sourceId,
              sourceLayer: sourceLayer,
              filter: filter,
              antialias: antialias,
              opacity: opacity,
              color: color,
              outlineColor: outlineColor,
              translate: translate,
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
              maxZoom: maxZoom,
              channel: channel);
    } catch (_) {
      String _$failedField;
      try {
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
            'FillLayer', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$FillExtrusionLayer extends FillExtrusionLayer {
  @override
  final String sourceId;
  @override
  final String sourceLayer;
  @override
  final Expression filter;
  @override
  final Expression opacity;
  @override
  final Expression color;
  @override
  final Expression translate;
  @override
  final Expression translateAnchor;
  @override
  final Expression pattern;
  @override
  final Expression height;
  @override
  final Expression base;
  @override
  final Expression verticalGradient;
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
  @override
  final MethodChannel channel;

  factory _$FillExtrusionLayer(
          [void Function(FillExtrusionLayerBuilder) updates]) =>
      (new FillExtrusionLayerBuilder()..update(updates)).build();

  _$FillExtrusionLayer._(
      {this.sourceId,
      this.sourceLayer,
      this.filter,
      this.opacity,
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
      this.maxZoom,
      this.channel})
      : super._() {
    if (sourceId == null) {
      throw new BuiltValueNullFieldError('FillExtrusionLayer', 'sourceId');
    }
    if (opacityTransition == null) {
      throw new BuiltValueNullFieldError(
          'FillExtrusionLayer', 'opacityTransition');
    }
    if (colorTransition == null) {
      throw new BuiltValueNullFieldError(
          'FillExtrusionLayer', 'colorTransition');
    }
    if (translateTransition == null) {
      throw new BuiltValueNullFieldError(
          'FillExtrusionLayer', 'translateTransition');
    }
    if (patternTransition == null) {
      throw new BuiltValueNullFieldError(
          'FillExtrusionLayer', 'patternTransition');
    }
    if (heightTransition == null) {
      throw new BuiltValueNullFieldError(
          'FillExtrusionLayer', 'heightTransition');
    }
    if (baseTransition == null) {
      throw new BuiltValueNullFieldError(
          'FillExtrusionLayer', 'baseTransition');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('FillExtrusionLayer', 'id');
    }
    if (visible == null) {
      throw new BuiltValueNullFieldError('FillExtrusionLayer', 'visible');
    }
    if (minZoom == null) {
      throw new BuiltValueNullFieldError('FillExtrusionLayer', 'minZoom');
    }
    if (maxZoom == null) {
      throw new BuiltValueNullFieldError('FillExtrusionLayer', 'maxZoom');
    }
  }

  @override
  FillExtrusionLayer rebuild(
          void Function(FillExtrusionLayerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FillExtrusionLayerBuilder toBuilder() =>
      new FillExtrusionLayerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FillExtrusionLayer &&
        sourceId == other.sourceId &&
        sourceLayer == other.sourceLayer &&
        filter == other.filter &&
        opacity == other.opacity &&
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
                                                                            $jc($jc($jc(0, sourceId.hashCode), sourceLayer.hashCode),
                                                                                filter.hashCode),
                                                                            opacity.hashCode),
                                                                        color.hashCode),
                                                                    translate.hashCode),
                                                                translateAnchor.hashCode),
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
    return (newBuiltValueToStringHelper('FillExtrusionLayer')
          ..add('sourceId', sourceId)
          ..add('sourceLayer', sourceLayer)
          ..add('filter', filter)
          ..add('opacity', opacity)
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
          ..add('maxZoom', maxZoom)
          ..add('channel', channel))
        .toString();
  }
}

class FillExtrusionLayerBuilder
    implements
        Builder<FillExtrusionLayer, FillExtrusionLayerBuilder>,
        LayerBuilder {
  _$FillExtrusionLayer _$v;

  String _sourceId;
  String get sourceId => _$this._sourceId;
  set sourceId(String sourceId) => _$this._sourceId = sourceId;

  String _sourceLayer;
  String get sourceLayer => _$this._sourceLayer;
  set sourceLayer(String sourceLayer) => _$this._sourceLayer = sourceLayer;

  Expression _filter;
  Expression get filter => _$this._filter;
  set filter(Expression filter) => _$this._filter = filter;

  Expression _opacity;
  Expression get opacity => _$this._opacity;
  set opacity(Expression opacity) => _$this._opacity = opacity;

  Expression _color;
  Expression get color => _$this._color;
  set color(Expression color) => _$this._color = color;

  Expression _translate;
  Expression get translate => _$this._translate;
  set translate(Expression translate) => _$this._translate = translate;

  Expression _translateAnchor;
  Expression get translateAnchor => _$this._translateAnchor;
  set translateAnchor(Expression translateAnchor) =>
      _$this._translateAnchor = translateAnchor;

  Expression _pattern;
  Expression get pattern => _$this._pattern;
  set pattern(Expression pattern) => _$this._pattern = pattern;

  Expression _height;
  Expression get height => _$this._height;
  set height(Expression height) => _$this._height = height;

  Expression _base;
  Expression get base => _$this._base;
  set base(Expression base) => _$this._base = base;

  Expression _verticalGradient;
  Expression get verticalGradient => _$this._verticalGradient;
  set verticalGradient(Expression verticalGradient) =>
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

  MethodChannel _channel;
  MethodChannel get channel => _$this._channel;
  set channel(MethodChannel channel) => _$this._channel = channel;

  FillExtrusionLayerBuilder();

  FillExtrusionLayerBuilder get _$this {
    if (_$v != null) {
      _sourceId = _$v.sourceId;
      _sourceLayer = _$v.sourceLayer;
      _filter = _$v.filter;
      _opacity = _$v.opacity;
      _color = _$v.color;
      _translate = _$v.translate;
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
      _channel = _$v.channel;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant FillExtrusionLayer other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$FillExtrusionLayer;
  }

  @override
  void update(void Function(FillExtrusionLayerBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FillExtrusionLayer build() {
    _$FillExtrusionLayer _$result;
    try {
      _$result = _$v ??
          new _$FillExtrusionLayer._(
              sourceId: sourceId,
              sourceLayer: sourceLayer,
              filter: filter,
              opacity: opacity,
              color: color,
              translate: translate,
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
              maxZoom: maxZoom,
              channel: channel);
    } catch (_) {
      String _$failedField;
      try {
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
            'FillExtrusionLayer', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$HeatmapLayer extends HeatmapLayer {
  @override
  final String sourceId;
  @override
  final String sourceLayer;
  @override
  final Expression filter;
  @override
  final Expression radius;
  @override
  final Expression weight;
  @override
  final Expression intensity;
  @override
  final Expression color;
  @override
  final Expression opacity;
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
  @override
  final MethodChannel channel;

  factory _$HeatmapLayer([void Function(HeatmapLayerBuilder) updates]) =>
      (new HeatmapLayerBuilder()..update(updates)).build();

  _$HeatmapLayer._(
      {this.sourceId,
      this.sourceLayer,
      this.filter,
      this.radius,
      this.weight,
      this.intensity,
      this.color,
      this.opacity,
      this.radiusTransition,
      this.intensityTransition,
      this.opacityTransition,
      this.id,
      this.visible,
      this.minZoom,
      this.maxZoom,
      this.channel})
      : super._() {
    if (sourceId == null) {
      throw new BuiltValueNullFieldError('HeatmapLayer', 'sourceId');
    }
    if (radiusTransition == null) {
      throw new BuiltValueNullFieldError('HeatmapLayer', 'radiusTransition');
    }
    if (intensityTransition == null) {
      throw new BuiltValueNullFieldError('HeatmapLayer', 'intensityTransition');
    }
    if (opacityTransition == null) {
      throw new BuiltValueNullFieldError('HeatmapLayer', 'opacityTransition');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('HeatmapLayer', 'id');
    }
    if (visible == null) {
      throw new BuiltValueNullFieldError('HeatmapLayer', 'visible');
    }
    if (minZoom == null) {
      throw new BuiltValueNullFieldError('HeatmapLayer', 'minZoom');
    }
    if (maxZoom == null) {
      throw new BuiltValueNullFieldError('HeatmapLayer', 'maxZoom');
    }
  }

  @override
  HeatmapLayer rebuild(void Function(HeatmapLayerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HeatmapLayerBuilder toBuilder() => new HeatmapLayerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HeatmapLayer &&
        sourceId == other.sourceId &&
        sourceLayer == other.sourceLayer &&
        filter == other.filter &&
        radius == other.radius &&
        weight == other.weight &&
        intensity == other.intensity &&
        color == other.color &&
        opacity == other.opacity &&
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
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                0,
                                                                sourceId
                                                                    .hashCode),
                                                            sourceLayer
                                                                .hashCode),
                                                        filter.hashCode),
                                                    radius.hashCode),
                                                weight.hashCode),
                                            intensity.hashCode),
                                        color.hashCode),
                                    opacity.hashCode),
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
    return (newBuiltValueToStringHelper('HeatmapLayer')
          ..add('sourceId', sourceId)
          ..add('sourceLayer', sourceLayer)
          ..add('filter', filter)
          ..add('radius', radius)
          ..add('weight', weight)
          ..add('intensity', intensity)
          ..add('color', color)
          ..add('opacity', opacity)
          ..add('radiusTransition', radiusTransition)
          ..add('intensityTransition', intensityTransition)
          ..add('opacityTransition', opacityTransition)
          ..add('id', id)
          ..add('visible', visible)
          ..add('minZoom', minZoom)
          ..add('maxZoom', maxZoom)
          ..add('channel', channel))
        .toString();
  }
}

class HeatmapLayerBuilder
    implements Builder<HeatmapLayer, HeatmapLayerBuilder>, LayerBuilder {
  _$HeatmapLayer _$v;

  String _sourceId;
  String get sourceId => _$this._sourceId;
  set sourceId(String sourceId) => _$this._sourceId = sourceId;

  String _sourceLayer;
  String get sourceLayer => _$this._sourceLayer;
  set sourceLayer(String sourceLayer) => _$this._sourceLayer = sourceLayer;

  Expression _filter;
  Expression get filter => _$this._filter;
  set filter(Expression filter) => _$this._filter = filter;

  Expression _radius;
  Expression get radius => _$this._radius;
  set radius(Expression radius) => _$this._radius = radius;

  Expression _weight;
  Expression get weight => _$this._weight;
  set weight(Expression weight) => _$this._weight = weight;

  Expression _intensity;
  Expression get intensity => _$this._intensity;
  set intensity(Expression intensity) => _$this._intensity = intensity;

  Expression _color;
  Expression get color => _$this._color;
  set color(Expression color) => _$this._color = color;

  Expression _opacity;
  Expression get opacity => _$this._opacity;
  set opacity(Expression opacity) => _$this._opacity = opacity;

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

  MethodChannel _channel;
  MethodChannel get channel => _$this._channel;
  set channel(MethodChannel channel) => _$this._channel = channel;

  HeatmapLayerBuilder();

  HeatmapLayerBuilder get _$this {
    if (_$v != null) {
      _sourceId = _$v.sourceId;
      _sourceLayer = _$v.sourceLayer;
      _filter = _$v.filter;
      _radius = _$v.radius;
      _weight = _$v.weight;
      _intensity = _$v.intensity;
      _color = _$v.color;
      _opacity = _$v.opacity;
      _radiusTransition = _$v.radiusTransition?.toBuilder();
      _intensityTransition = _$v.intensityTransition?.toBuilder();
      _opacityTransition = _$v.opacityTransition?.toBuilder();
      _id = _$v.id;
      _visible = _$v.visible;
      _minZoom = _$v.minZoom;
      _maxZoom = _$v.maxZoom;
      _channel = _$v.channel;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant HeatmapLayer other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$HeatmapLayer;
  }

  @override
  void update(void Function(HeatmapLayerBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HeatmapLayer build() {
    _$HeatmapLayer _$result;
    try {
      _$result = _$v ??
          new _$HeatmapLayer._(
              sourceId: sourceId,
              sourceLayer: sourceLayer,
              filter: filter,
              radius: radius,
              weight: weight,
              intensity: intensity,
              color: color,
              opacity: opacity,
              radiusTransition: radiusTransition.build(),
              intensityTransition: intensityTransition.build(),
              opacityTransition: opacityTransition.build(),
              id: id,
              visible: visible,
              minZoom: minZoom,
              maxZoom: maxZoom,
              channel: channel);
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
            'HeatmapLayer', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$HillshadeLayer extends HillshadeLayer {
  @override
  final String sourceId;
  @override
  final String sourceLayer;
  @override
  final Expression illuminationDirection;
  @override
  final Expression illuminationAnchor;
  @override
  final Expression exaggeration;
  @override
  final Expression shadowColor;
  @override
  final Expression highlightColor;
  @override
  final Expression accentColor;
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
  @override
  final MethodChannel channel;

  factory _$HillshadeLayer([void Function(HillshadeLayerBuilder) updates]) =>
      (new HillshadeLayerBuilder()..update(updates)).build();

  _$HillshadeLayer._(
      {this.sourceId,
      this.sourceLayer,
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
      this.maxZoom,
      this.channel})
      : super._() {
    if (sourceId == null) {
      throw new BuiltValueNullFieldError('HillshadeLayer', 'sourceId');
    }
    if (exaggerationTransition == null) {
      throw new BuiltValueNullFieldError(
          'HillshadeLayer', 'exaggerationTransition');
    }
    if (shadowColorTransition == null) {
      throw new BuiltValueNullFieldError(
          'HillshadeLayer', 'shadowColorTransition');
    }
    if (highlightColorTransition == null) {
      throw new BuiltValueNullFieldError(
          'HillshadeLayer', 'highlightColorTransition');
    }
    if (accentColorTransition == null) {
      throw new BuiltValueNullFieldError(
          'HillshadeLayer', 'accentColorTransition');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('HillshadeLayer', 'id');
    }
    if (visible == null) {
      throw new BuiltValueNullFieldError('HillshadeLayer', 'visible');
    }
    if (minZoom == null) {
      throw new BuiltValueNullFieldError('HillshadeLayer', 'minZoom');
    }
    if (maxZoom == null) {
      throw new BuiltValueNullFieldError('HillshadeLayer', 'maxZoom');
    }
  }

  @override
  HillshadeLayer rebuild(void Function(HillshadeLayerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HillshadeLayerBuilder toBuilder() =>
      new HillshadeLayerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HillshadeLayer &&
        sourceId == other.sourceId &&
        sourceLayer == other.sourceLayer &&
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
                                                                $jc(
                                                                    0,
                                                                    sourceId
                                                                        .hashCode),
                                                                sourceLayer
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
    return (newBuiltValueToStringHelper('HillshadeLayer')
          ..add('sourceId', sourceId)
          ..add('sourceLayer', sourceLayer)
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
          ..add('maxZoom', maxZoom)
          ..add('channel', channel))
        .toString();
  }
}

class HillshadeLayerBuilder
    implements Builder<HillshadeLayer, HillshadeLayerBuilder>, LayerBuilder {
  _$HillshadeLayer _$v;

  String _sourceId;
  String get sourceId => _$this._sourceId;
  set sourceId(String sourceId) => _$this._sourceId = sourceId;

  String _sourceLayer;
  String get sourceLayer => _$this._sourceLayer;
  set sourceLayer(String sourceLayer) => _$this._sourceLayer = sourceLayer;

  Expression _illuminationDirection;
  Expression get illuminationDirection => _$this._illuminationDirection;
  set illuminationDirection(Expression illuminationDirection) =>
      _$this._illuminationDirection = illuminationDirection;

  Expression _illuminationAnchor;
  Expression get illuminationAnchor => _$this._illuminationAnchor;
  set illuminationAnchor(Expression illuminationAnchor) =>
      _$this._illuminationAnchor = illuminationAnchor;

  Expression _exaggeration;
  Expression get exaggeration => _$this._exaggeration;
  set exaggeration(Expression exaggeration) =>
      _$this._exaggeration = exaggeration;

  Expression _shadowColor;
  Expression get shadowColor => _$this._shadowColor;
  set shadowColor(Expression shadowColor) => _$this._shadowColor = shadowColor;

  Expression _highlightColor;
  Expression get highlightColor => _$this._highlightColor;
  set highlightColor(Expression highlightColor) =>
      _$this._highlightColor = highlightColor;

  Expression _accentColor;
  Expression get accentColor => _$this._accentColor;
  set accentColor(Expression accentColor) => _$this._accentColor = accentColor;

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

  MethodChannel _channel;
  MethodChannel get channel => _$this._channel;
  set channel(MethodChannel channel) => _$this._channel = channel;

  HillshadeLayerBuilder();

  HillshadeLayerBuilder get _$this {
    if (_$v != null) {
      _sourceId = _$v.sourceId;
      _sourceLayer = _$v.sourceLayer;
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
      _channel = _$v.channel;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant HillshadeLayer other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$HillshadeLayer;
  }

  @override
  void update(void Function(HillshadeLayerBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HillshadeLayer build() {
    _$HillshadeLayer _$result;
    try {
      _$result = _$v ??
          new _$HillshadeLayer._(
              sourceId: sourceId,
              sourceLayer: sourceLayer,
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
              maxZoom: maxZoom,
              channel: channel);
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
            'HillshadeLayer', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$LineLayer extends LineLayer {
  @override
  final String sourceId;
  @override
  final String sourceLayer;
  @override
  final Expression filter;
  @override
  final Expression cap;
  @override
  final Expression join;
  @override
  final Expression miterLimit;
  @override
  final Expression roundLimit;
  @override
  final Expression opacity;
  @override
  final Expression color;
  @override
  final Expression translate;
  @override
  final Expression translateAnchor;
  @override
  final Expression width;
  @override
  final Expression gapWidth;
  @override
  final Expression offset;
  @override
  final Expression blur;
  @override
  final Expression dasharray;
  @override
  final Expression pattern;
  @override
  final Expression gradient;
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
  @override
  final MethodChannel channel;

  factory _$LineLayer([void Function(LineLayerBuilder) updates]) =>
      (new LineLayerBuilder()..update(updates)).build();

  _$LineLayer._(
      {this.sourceId,
      this.sourceLayer,
      this.filter,
      this.cap,
      this.join,
      this.miterLimit,
      this.roundLimit,
      this.opacity,
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
      this.maxZoom,
      this.channel})
      : super._() {
    if (sourceId == null) {
      throw new BuiltValueNullFieldError('LineLayer', 'sourceId');
    }
    if (opacityTransition == null) {
      throw new BuiltValueNullFieldError('LineLayer', 'opacityTransition');
    }
    if (colorTransition == null) {
      throw new BuiltValueNullFieldError('LineLayer', 'colorTransition');
    }
    if (translateTransition == null) {
      throw new BuiltValueNullFieldError('LineLayer', 'translateTransition');
    }
    if (widthTransition == null) {
      throw new BuiltValueNullFieldError('LineLayer', 'widthTransition');
    }
    if (gapWidthTransition == null) {
      throw new BuiltValueNullFieldError('LineLayer', 'gapWidthTransition');
    }
    if (offsetTransition == null) {
      throw new BuiltValueNullFieldError('LineLayer', 'offsetTransition');
    }
    if (blurTransition == null) {
      throw new BuiltValueNullFieldError('LineLayer', 'blurTransition');
    }
    if (dasharrayTransition == null) {
      throw new BuiltValueNullFieldError('LineLayer', 'dasharrayTransition');
    }
    if (patternTransition == null) {
      throw new BuiltValueNullFieldError('LineLayer', 'patternTransition');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('LineLayer', 'id');
    }
    if (visible == null) {
      throw new BuiltValueNullFieldError('LineLayer', 'visible');
    }
    if (minZoom == null) {
      throw new BuiltValueNullFieldError('LineLayer', 'minZoom');
    }
    if (maxZoom == null) {
      throw new BuiltValueNullFieldError('LineLayer', 'maxZoom');
    }
  }

  @override
  LineLayer rebuild(void Function(LineLayerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LineLayerBuilder toBuilder() => new LineLayerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LineLayer &&
        sourceId == other.sourceId &&
        sourceLayer == other.sourceLayer &&
        filter == other.filter &&
        cap == other.cap &&
        join == other.join &&
        miterLimit == other.miterLimit &&
        roundLimit == other.roundLimit &&
        opacity == other.opacity &&
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
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, sourceId.hashCode), sourceLayer.hashCode), filter.hashCode), cap.hashCode), join.hashCode), miterLimit.hashCode), roundLimit.hashCode), opacity.hashCode), color.hashCode), translate.hashCode), translateAnchor.hashCode), width.hashCode),
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
    return (newBuiltValueToStringHelper('LineLayer')
          ..add('sourceId', sourceId)
          ..add('sourceLayer', sourceLayer)
          ..add('filter', filter)
          ..add('cap', cap)
          ..add('join', join)
          ..add('miterLimit', miterLimit)
          ..add('roundLimit', roundLimit)
          ..add('opacity', opacity)
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
          ..add('maxZoom', maxZoom)
          ..add('channel', channel))
        .toString();
  }
}

class LineLayerBuilder
    implements Builder<LineLayer, LineLayerBuilder>, LayerBuilder {
  _$LineLayer _$v;

  String _sourceId;
  String get sourceId => _$this._sourceId;
  set sourceId(String sourceId) => _$this._sourceId = sourceId;

  String _sourceLayer;
  String get sourceLayer => _$this._sourceLayer;
  set sourceLayer(String sourceLayer) => _$this._sourceLayer = sourceLayer;

  Expression _filter;
  Expression get filter => _$this._filter;
  set filter(Expression filter) => _$this._filter = filter;

  Expression _cap;
  Expression get cap => _$this._cap;
  set cap(Expression cap) => _$this._cap = cap;

  Expression _join;
  Expression get join => _$this._join;
  set join(Expression join) => _$this._join = join;

  Expression _miterLimit;
  Expression get miterLimit => _$this._miterLimit;
  set miterLimit(Expression miterLimit) => _$this._miterLimit = miterLimit;

  Expression _roundLimit;
  Expression get roundLimit => _$this._roundLimit;
  set roundLimit(Expression roundLimit) => _$this._roundLimit = roundLimit;

  Expression _opacity;
  Expression get opacity => _$this._opacity;
  set opacity(Expression opacity) => _$this._opacity = opacity;

  Expression _color;
  Expression get color => _$this._color;
  set color(Expression color) => _$this._color = color;

  Expression _translate;
  Expression get translate => _$this._translate;
  set translate(Expression translate) => _$this._translate = translate;

  Expression _translateAnchor;
  Expression get translateAnchor => _$this._translateAnchor;
  set translateAnchor(Expression translateAnchor) =>
      _$this._translateAnchor = translateAnchor;

  Expression _width;
  Expression get width => _$this._width;
  set width(Expression width) => _$this._width = width;

  Expression _gapWidth;
  Expression get gapWidth => _$this._gapWidth;
  set gapWidth(Expression gapWidth) => _$this._gapWidth = gapWidth;

  Expression _offset;
  Expression get offset => _$this._offset;
  set offset(Expression offset) => _$this._offset = offset;

  Expression _blur;
  Expression get blur => _$this._blur;
  set blur(Expression blur) => _$this._blur = blur;

  Expression _dasharray;
  Expression get dasharray => _$this._dasharray;
  set dasharray(Expression dasharray) => _$this._dasharray = dasharray;

  Expression _pattern;
  Expression get pattern => _$this._pattern;
  set pattern(Expression pattern) => _$this._pattern = pattern;

  Expression _gradient;
  Expression get gradient => _$this._gradient;
  set gradient(Expression gradient) => _$this._gradient = gradient;

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

  MethodChannel _channel;
  MethodChannel get channel => _$this._channel;
  set channel(MethodChannel channel) => _$this._channel = channel;

  LineLayerBuilder();

  LineLayerBuilder get _$this {
    if (_$v != null) {
      _sourceId = _$v.sourceId;
      _sourceLayer = _$v.sourceLayer;
      _filter = _$v.filter;
      _cap = _$v.cap;
      _join = _$v.join;
      _miterLimit = _$v.miterLimit;
      _roundLimit = _$v.roundLimit;
      _opacity = _$v.opacity;
      _color = _$v.color;
      _translate = _$v.translate;
      _translateAnchor = _$v.translateAnchor;
      _width = _$v.width;
      _gapWidth = _$v.gapWidth;
      _offset = _$v.offset;
      _blur = _$v.blur;
      _dasharray = _$v.dasharray;
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
      _channel = _$v.channel;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant LineLayer other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LineLayer;
  }

  @override
  void update(void Function(LineLayerBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LineLayer build() {
    _$LineLayer _$result;
    try {
      _$result = _$v ??
          new _$LineLayer._(
              sourceId: sourceId,
              sourceLayer: sourceLayer,
              filter: filter,
              cap: cap,
              join: join,
              miterLimit: miterLimit,
              roundLimit: roundLimit,
              opacity: opacity,
              color: color,
              translate: translate,
              translateAnchor: translateAnchor,
              width: width,
              gapWidth: gapWidth,
              offset: offset,
              blur: blur,
              dasharray: dasharray,
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
              maxZoom: maxZoom,
              channel: channel);
    } catch (_) {
      String _$failedField;
      try {
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
            'LineLayer', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$RasterLayer extends RasterLayer {
  @override
  final String sourceId;
  @override
  final String sourceLayer;
  @override
  final Expression opacity;
  @override
  final Expression hueRotate;
  @override
  final Expression brightnessMin;
  @override
  final Expression brightnessMax;
  @override
  final Expression saturation;
  @override
  final Expression contrast;
  @override
  final Expression resampling;
  @override
  final Expression fadeDuration;
  @override
  final TransitionOptions opacityTransition;
  @override
  final TransitionOptions hueRotateTransition;
  @override
  final TransitionOptions brightnessMinTransition;
  @override
  final TransitionOptions brightnessMaxTransition;
  @override
  final TransitionOptions saturationTransition;
  @override
  final TransitionOptions contrastTransition;
  @override
  final String id;
  @override
  final bool visible;
  @override
  final double minZoom;
  @override
  final double maxZoom;
  @override
  final MethodChannel channel;

  factory _$RasterLayer([void Function(RasterLayerBuilder) updates]) =>
      (new RasterLayerBuilder()..update(updates)).build();

  _$RasterLayer._(
      {this.sourceId,
      this.sourceLayer,
      this.opacity,
      this.hueRotate,
      this.brightnessMin,
      this.brightnessMax,
      this.saturation,
      this.contrast,
      this.resampling,
      this.fadeDuration,
      this.opacityTransition,
      this.hueRotateTransition,
      this.brightnessMinTransition,
      this.brightnessMaxTransition,
      this.saturationTransition,
      this.contrastTransition,
      this.id,
      this.visible,
      this.minZoom,
      this.maxZoom,
      this.channel})
      : super._() {
    if (sourceId == null) {
      throw new BuiltValueNullFieldError('RasterLayer', 'sourceId');
    }
    if (opacityTransition == null) {
      throw new BuiltValueNullFieldError('RasterLayer', 'opacityTransition');
    }
    if (hueRotateTransition == null) {
      throw new BuiltValueNullFieldError('RasterLayer', 'hueRotateTransition');
    }
    if (brightnessMinTransition == null) {
      throw new BuiltValueNullFieldError(
          'RasterLayer', 'brightnessMinTransition');
    }
    if (brightnessMaxTransition == null) {
      throw new BuiltValueNullFieldError(
          'RasterLayer', 'brightnessMaxTransition');
    }
    if (saturationTransition == null) {
      throw new BuiltValueNullFieldError('RasterLayer', 'saturationTransition');
    }
    if (contrastTransition == null) {
      throw new BuiltValueNullFieldError('RasterLayer', 'contrastTransition');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('RasterLayer', 'id');
    }
    if (visible == null) {
      throw new BuiltValueNullFieldError('RasterLayer', 'visible');
    }
    if (minZoom == null) {
      throw new BuiltValueNullFieldError('RasterLayer', 'minZoom');
    }
    if (maxZoom == null) {
      throw new BuiltValueNullFieldError('RasterLayer', 'maxZoom');
    }
  }

  @override
  RasterLayer rebuild(void Function(RasterLayerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RasterLayerBuilder toBuilder() => new RasterLayerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RasterLayer &&
        sourceId == other.sourceId &&
        sourceLayer == other.sourceLayer &&
        opacity == other.opacity &&
        hueRotate == other.hueRotate &&
        brightnessMin == other.brightnessMin &&
        brightnessMax == other.brightnessMax &&
        saturation == other.saturation &&
        contrast == other.contrast &&
        resampling == other.resampling &&
        fadeDuration == other.fadeDuration &&
        opacityTransition == other.opacityTransition &&
        hueRotateTransition == other.hueRotateTransition &&
        brightnessMinTransition == other.brightnessMinTransition &&
        brightnessMaxTransition == other.brightnessMaxTransition &&
        saturationTransition == other.saturationTransition &&
        contrastTransition == other.contrastTransition &&
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
                                                                            $jc(
                                                                                $jc(
                                                                                    0,
                                                                                    sourceId
                                                                                        .hashCode),
                                                                                sourceLayer
                                                                                    .hashCode),
                                                                            opacity
                                                                                .hashCode),
                                                                        hueRotate
                                                                            .hashCode),
                                                                    brightnessMin
                                                                        .hashCode),
                                                                brightnessMax
                                                                    .hashCode),
                                                            saturation
                                                                .hashCode),
                                                        contrast.hashCode),
                                                    resampling.hashCode),
                                                fadeDuration.hashCode),
                                            opacityTransition.hashCode),
                                        hueRotateTransition.hashCode),
                                    brightnessMinTransition.hashCode),
                                brightnessMaxTransition.hashCode),
                            saturationTransition.hashCode),
                        contrastTransition.hashCode),
                    id.hashCode),
                visible.hashCode),
            minZoom.hashCode),
        maxZoom.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RasterLayer')
          ..add('sourceId', sourceId)
          ..add('sourceLayer', sourceLayer)
          ..add('opacity', opacity)
          ..add('hueRotate', hueRotate)
          ..add('brightnessMin', brightnessMin)
          ..add('brightnessMax', brightnessMax)
          ..add('saturation', saturation)
          ..add('contrast', contrast)
          ..add('resampling', resampling)
          ..add('fadeDuration', fadeDuration)
          ..add('opacityTransition', opacityTransition)
          ..add('hueRotateTransition', hueRotateTransition)
          ..add('brightnessMinTransition', brightnessMinTransition)
          ..add('brightnessMaxTransition', brightnessMaxTransition)
          ..add('saturationTransition', saturationTransition)
          ..add('contrastTransition', contrastTransition)
          ..add('id', id)
          ..add('visible', visible)
          ..add('minZoom', minZoom)
          ..add('maxZoom', maxZoom)
          ..add('channel', channel))
        .toString();
  }
}

class RasterLayerBuilder
    implements Builder<RasterLayer, RasterLayerBuilder>, LayerBuilder {
  _$RasterLayer _$v;

  String _sourceId;
  String get sourceId => _$this._sourceId;
  set sourceId(String sourceId) => _$this._sourceId = sourceId;

  String _sourceLayer;
  String get sourceLayer => _$this._sourceLayer;
  set sourceLayer(String sourceLayer) => _$this._sourceLayer = sourceLayer;

  Expression _opacity;
  Expression get opacity => _$this._opacity;
  set opacity(Expression opacity) => _$this._opacity = opacity;

  Expression _hueRotate;
  Expression get hueRotate => _$this._hueRotate;
  set hueRotate(Expression hueRotate) => _$this._hueRotate = hueRotate;

  Expression _brightnessMin;
  Expression get brightnessMin => _$this._brightnessMin;
  set brightnessMin(Expression brightnessMin) =>
      _$this._brightnessMin = brightnessMin;

  Expression _brightnessMax;
  Expression get brightnessMax => _$this._brightnessMax;
  set brightnessMax(Expression brightnessMax) =>
      _$this._brightnessMax = brightnessMax;

  Expression _saturation;
  Expression get saturation => _$this._saturation;
  set saturation(Expression saturation) => _$this._saturation = saturation;

  Expression _contrast;
  Expression get contrast => _$this._contrast;
  set contrast(Expression contrast) => _$this._contrast = contrast;

  Expression _resampling;
  Expression get resampling => _$this._resampling;
  set resampling(Expression resampling) => _$this._resampling = resampling;

  Expression _fadeDuration;
  Expression get fadeDuration => _$this._fadeDuration;
  set fadeDuration(Expression fadeDuration) =>
      _$this._fadeDuration = fadeDuration;

  TransitionOptionsBuilder _opacityTransition;
  TransitionOptionsBuilder get opacityTransition =>
      _$this._opacityTransition ??= new TransitionOptionsBuilder();
  set opacityTransition(TransitionOptionsBuilder opacityTransition) =>
      _$this._opacityTransition = opacityTransition;

  TransitionOptionsBuilder _hueRotateTransition;
  TransitionOptionsBuilder get hueRotateTransition =>
      _$this._hueRotateTransition ??= new TransitionOptionsBuilder();
  set hueRotateTransition(TransitionOptionsBuilder hueRotateTransition) =>
      _$this._hueRotateTransition = hueRotateTransition;

  TransitionOptionsBuilder _brightnessMinTransition;
  TransitionOptionsBuilder get brightnessMinTransition =>
      _$this._brightnessMinTransition ??= new TransitionOptionsBuilder();
  set brightnessMinTransition(
          TransitionOptionsBuilder brightnessMinTransition) =>
      _$this._brightnessMinTransition = brightnessMinTransition;

  TransitionOptionsBuilder _brightnessMaxTransition;
  TransitionOptionsBuilder get brightnessMaxTransition =>
      _$this._brightnessMaxTransition ??= new TransitionOptionsBuilder();
  set brightnessMaxTransition(
          TransitionOptionsBuilder brightnessMaxTransition) =>
      _$this._brightnessMaxTransition = brightnessMaxTransition;

  TransitionOptionsBuilder _saturationTransition;
  TransitionOptionsBuilder get saturationTransition =>
      _$this._saturationTransition ??= new TransitionOptionsBuilder();
  set saturationTransition(TransitionOptionsBuilder saturationTransition) =>
      _$this._saturationTransition = saturationTransition;

  TransitionOptionsBuilder _contrastTransition;
  TransitionOptionsBuilder get contrastTransition =>
      _$this._contrastTransition ??= new TransitionOptionsBuilder();
  set contrastTransition(TransitionOptionsBuilder contrastTransition) =>
      _$this._contrastTransition = contrastTransition;

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

  MethodChannel _channel;
  MethodChannel get channel => _$this._channel;
  set channel(MethodChannel channel) => _$this._channel = channel;

  RasterLayerBuilder();

  RasterLayerBuilder get _$this {
    if (_$v != null) {
      _sourceId = _$v.sourceId;
      _sourceLayer = _$v.sourceLayer;
      _opacity = _$v.opacity;
      _hueRotate = _$v.hueRotate;
      _brightnessMin = _$v.brightnessMin;
      _brightnessMax = _$v.brightnessMax;
      _saturation = _$v.saturation;
      _contrast = _$v.contrast;
      _resampling = _$v.resampling;
      _fadeDuration = _$v.fadeDuration;
      _opacityTransition = _$v.opacityTransition?.toBuilder();
      _hueRotateTransition = _$v.hueRotateTransition?.toBuilder();
      _brightnessMinTransition = _$v.brightnessMinTransition?.toBuilder();
      _brightnessMaxTransition = _$v.brightnessMaxTransition?.toBuilder();
      _saturationTransition = _$v.saturationTransition?.toBuilder();
      _contrastTransition = _$v.contrastTransition?.toBuilder();
      _id = _$v.id;
      _visible = _$v.visible;
      _minZoom = _$v.minZoom;
      _maxZoom = _$v.maxZoom;
      _channel = _$v.channel;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant RasterLayer other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RasterLayer;
  }

  @override
  void update(void Function(RasterLayerBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RasterLayer build() {
    _$RasterLayer _$result;
    try {
      _$result = _$v ??
          new _$RasterLayer._(
              sourceId: sourceId,
              sourceLayer: sourceLayer,
              opacity: opacity,
              hueRotate: hueRotate,
              brightnessMin: brightnessMin,
              brightnessMax: brightnessMax,
              saturation: saturation,
              contrast: contrast,
              resampling: resampling,
              fadeDuration: fadeDuration,
              opacityTransition: opacityTransition.build(),
              hueRotateTransition: hueRotateTransition.build(),
              brightnessMinTransition: brightnessMinTransition.build(),
              brightnessMaxTransition: brightnessMaxTransition.build(),
              saturationTransition: saturationTransition.build(),
              contrastTransition: contrastTransition.build(),
              id: id,
              visible: visible,
              minZoom: minZoom,
              maxZoom: maxZoom,
              channel: channel);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'opacityTransition';
        opacityTransition.build();
        _$failedField = 'hueRotateTransition';
        hueRotateTransition.build();
        _$failedField = 'brightnessMinTransition';
        brightnessMinTransition.build();
        _$failedField = 'brightnessMaxTransition';
        brightnessMaxTransition.build();
        _$failedField = 'saturationTransition';
        saturationTransition.build();
        _$failedField = 'contrastTransition';
        contrastTransition.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'RasterLayer', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$SymbolLayer extends SymbolLayer {
  @override
  final String sourceId;
  @override
  final String sourceLayer;
  @override
  final Expression filter;
  @override
  final Expression symbolPlacement;
  @override
  final Expression symbolSpacing;
  @override
  final Expression symbolAvoidEdges;
  @override
  final Expression symbolZOrder;
  @override
  final Expression iconAllowOverlap;
  @override
  final Expression iconIgnorePlacement;
  @override
  final Expression iconOptional;
  @override
  final Expression iconRotationAlignment;
  @override
  final Expression iconSize;
  @override
  final Expression iconTextFit;
  @override
  final Expression iconTextFitPadding;
  @override
  final Expression iconImage;
  @override
  final Expression iconRotate;
  @override
  final Expression iconPadding;
  @override
  final Expression iconKeepUpright;
  @override
  final Expression iconOffset;
  @override
  final Expression iconAnchor;
  @override
  final Expression iconPitchAlignment;
  @override
  final Expression textPitchAlignment;
  @override
  final Expression textRotationAlignment;
  @override
  final Expression textField;
  @override
  final Expression textFont;
  @override
  final Expression textSize;
  @override
  final Expression textMaxWidth;
  @override
  final Expression textLineHeight;
  @override
  final Expression textLetterSpacing;
  @override
  final Expression textJustify;
  @override
  final Expression textRadialOffset;
  @override
  final Expression textVariableAnchor;
  @override
  final Expression textAnchor;
  @override
  final Expression textMaxAngle;
  @override
  final Expression textRotate;
  @override
  final Expression textPadding;
  @override
  final Expression textKeepUpright;
  @override
  final Expression textTransform;
  @override
  final Expression textOffset;
  @override
  final Expression textAllowOverlap;
  @override
  final Expression textIgnorePlacement;
  @override
  final Expression textOptional;
  @override
  final Expression iconOpacity;
  @override
  final Expression iconColor;
  @override
  final Expression iconHaloColor;
  @override
  final Expression iconHaloWidth;
  @override
  final Expression iconHaloBlur;
  @override
  final Expression iconTranslate;
  @override
  final Expression iconTranslateAnchor;
  @override
  final Expression textOpacity;
  @override
  final Expression textColor;
  @override
  final Expression textHaloColor;
  @override
  final Expression textHaloWidth;
  @override
  final Expression textHaloBlur;
  @override
  final Expression textTranslate;
  @override
  final Expression textTranslateAnchor;
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
  @override
  final MethodChannel channel;

  factory _$SymbolLayer([void Function(SymbolLayerBuilder) updates]) =>
      (new SymbolLayerBuilder()..update(updates)).build();

  _$SymbolLayer._(
      {this.sourceId,
      this.sourceLayer,
      this.filter,
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
      this.iconOpacity,
      this.iconColor,
      this.iconHaloColor,
      this.iconHaloWidth,
      this.iconHaloBlur,
      this.iconTranslate,
      this.iconTranslateAnchor,
      this.textOpacity,
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
      this.maxZoom,
      this.channel})
      : super._() {
    if (sourceId == null) {
      throw new BuiltValueNullFieldError('SymbolLayer', 'sourceId');
    }
    if (iconOpacityTransition == null) {
      throw new BuiltValueNullFieldError(
          'SymbolLayer', 'iconOpacityTransition');
    }
    if (iconColorTransition == null) {
      throw new BuiltValueNullFieldError('SymbolLayer', 'iconColorTransition');
    }
    if (iconHaloColorTransition == null) {
      throw new BuiltValueNullFieldError(
          'SymbolLayer', 'iconHaloColorTransition');
    }
    if (iconHaloWidthTransition == null) {
      throw new BuiltValueNullFieldError(
          'SymbolLayer', 'iconHaloWidthTransition');
    }
    if (iconHaloBlurTransition == null) {
      throw new BuiltValueNullFieldError(
          'SymbolLayer', 'iconHaloBlurTransition');
    }
    if (iconTranslateTransition == null) {
      throw new BuiltValueNullFieldError(
          'SymbolLayer', 'iconTranslateTransition');
    }
    if (textOpacityTransition == null) {
      throw new BuiltValueNullFieldError(
          'SymbolLayer', 'textOpacityTransition');
    }
    if (textColorTransition == null) {
      throw new BuiltValueNullFieldError('SymbolLayer', 'textColorTransition');
    }
    if (textHaloColorTransition == null) {
      throw new BuiltValueNullFieldError(
          'SymbolLayer', 'textHaloColorTransition');
    }
    if (textHaloWidthTransition == null) {
      throw new BuiltValueNullFieldError(
          'SymbolLayer', 'textHaloWidthTransition');
    }
    if (textHaloBlurTransition == null) {
      throw new BuiltValueNullFieldError(
          'SymbolLayer', 'textHaloBlurTransition');
    }
    if (textTranslateTransition == null) {
      throw new BuiltValueNullFieldError(
          'SymbolLayer', 'textTranslateTransition');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('SymbolLayer', 'id');
    }
    if (visible == null) {
      throw new BuiltValueNullFieldError('SymbolLayer', 'visible');
    }
    if (minZoom == null) {
      throw new BuiltValueNullFieldError('SymbolLayer', 'minZoom');
    }
    if (maxZoom == null) {
      throw new BuiltValueNullFieldError('SymbolLayer', 'maxZoom');
    }
  }

  @override
  SymbolLayer rebuild(void Function(SymbolLayerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SymbolLayerBuilder toBuilder() => new SymbolLayerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SymbolLayer &&
        sourceId == other.sourceId &&
        sourceLayer == other.sourceLayer &&
        filter == other.filter &&
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
        iconOpacity == other.iconOpacity &&
        iconColor == other.iconColor &&
        iconHaloColor == other.iconHaloColor &&
        iconHaloWidth == other.iconHaloWidth &&
        iconHaloBlur == other.iconHaloBlur &&
        iconTranslate == other.iconTranslate &&
        iconTranslateAnchor == other.iconTranslateAnchor &&
        textOpacity == other.textOpacity &&
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
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, sourceId.hashCode), sourceLayer.hashCode), filter.hashCode), symbolPlacement.hashCode), symbolSpacing.hashCode), symbolAvoidEdges.hashCode), symbolZOrder.hashCode), iconAllowOverlap.hashCode), iconIgnorePlacement.hashCode), iconOptional.hashCode), iconRotationAlignment.hashCode), iconSize.hashCode), iconTextFit.hashCode), iconTextFitPadding.hashCode), iconImage.hashCode), iconRotate.hashCode), iconPadding.hashCode), iconKeepUpright.hashCode), iconOffset.hashCode), iconAnchor.hashCode), iconPitchAlignment.hashCode), textPitchAlignment.hashCode), textRotationAlignment.hashCode), textField.hashCode), textFont.hashCode), textSize.hashCode), textMaxWidth.hashCode), textLineHeight.hashCode), textLetterSpacing.hashCode), textJustify.hashCode), textRadialOffset.hashCode), textVariableAnchor.hashCode), textAnchor.hashCode), textMaxAngle.hashCode), textRotate.hashCode), textPadding.hashCode), textKeepUpright.hashCode), textTransform.hashCode), textOffset.hashCode), textAllowOverlap.hashCode), textIgnorePlacement.hashCode), textOptional.hashCode), iconOpacity.hashCode), iconColor.hashCode), iconHaloColor.hashCode), iconHaloWidth.hashCode), iconHaloBlur.hashCode), iconTranslate.hashCode), iconTranslateAnchor.hashCode), textOpacity.hashCode), textColor.hashCode), textHaloColor.hashCode), textHaloWidth.hashCode),
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
    return (newBuiltValueToStringHelper('SymbolLayer')
          ..add('sourceId', sourceId)
          ..add('sourceLayer', sourceLayer)
          ..add('filter', filter)
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
          ..add('iconOpacity', iconOpacity)
          ..add('iconColor', iconColor)
          ..add('iconHaloColor', iconHaloColor)
          ..add('iconHaloWidth', iconHaloWidth)
          ..add('iconHaloBlur', iconHaloBlur)
          ..add('iconTranslate', iconTranslate)
          ..add('iconTranslateAnchor', iconTranslateAnchor)
          ..add('textOpacity', textOpacity)
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
          ..add('maxZoom', maxZoom)
          ..add('channel', channel))
        .toString();
  }
}

class SymbolLayerBuilder
    implements Builder<SymbolLayer, SymbolLayerBuilder>, LayerBuilder {
  _$SymbolLayer _$v;

  String _sourceId;
  String get sourceId => _$this._sourceId;
  set sourceId(String sourceId) => _$this._sourceId = sourceId;

  String _sourceLayer;
  String get sourceLayer => _$this._sourceLayer;
  set sourceLayer(String sourceLayer) => _$this._sourceLayer = sourceLayer;

  Expression _filter;
  Expression get filter => _$this._filter;
  set filter(Expression filter) => _$this._filter = filter;

  Expression _symbolPlacement;
  Expression get symbolPlacement => _$this._symbolPlacement;
  set symbolPlacement(Expression symbolPlacement) =>
      _$this._symbolPlacement = symbolPlacement;

  Expression _symbolSpacing;
  Expression get symbolSpacing => _$this._symbolSpacing;
  set symbolSpacing(Expression symbolSpacing) =>
      _$this._symbolSpacing = symbolSpacing;

  Expression _symbolAvoidEdges;
  Expression get symbolAvoidEdges => _$this._symbolAvoidEdges;
  set symbolAvoidEdges(Expression symbolAvoidEdges) =>
      _$this._symbolAvoidEdges = symbolAvoidEdges;

  Expression _symbolZOrder;
  Expression get symbolZOrder => _$this._symbolZOrder;
  set symbolZOrder(Expression symbolZOrder) =>
      _$this._symbolZOrder = symbolZOrder;

  Expression _iconAllowOverlap;
  Expression get iconAllowOverlap => _$this._iconAllowOverlap;
  set iconAllowOverlap(Expression iconAllowOverlap) =>
      _$this._iconAllowOverlap = iconAllowOverlap;

  Expression _iconIgnorePlacement;
  Expression get iconIgnorePlacement => _$this._iconIgnorePlacement;
  set iconIgnorePlacement(Expression iconIgnorePlacement) =>
      _$this._iconIgnorePlacement = iconIgnorePlacement;

  Expression _iconOptional;
  Expression get iconOptional => _$this._iconOptional;
  set iconOptional(Expression iconOptional) =>
      _$this._iconOptional = iconOptional;

  Expression _iconRotationAlignment;
  Expression get iconRotationAlignment => _$this._iconRotationAlignment;
  set iconRotationAlignment(Expression iconRotationAlignment) =>
      _$this._iconRotationAlignment = iconRotationAlignment;

  Expression _iconSize;
  Expression get iconSize => _$this._iconSize;
  set iconSize(Expression iconSize) => _$this._iconSize = iconSize;

  Expression _iconTextFit;
  Expression get iconTextFit => _$this._iconTextFit;
  set iconTextFit(Expression iconTextFit) => _$this._iconTextFit = iconTextFit;

  Expression _iconTextFitPadding;
  Expression get iconTextFitPadding => _$this._iconTextFitPadding;
  set iconTextFitPadding(Expression iconTextFitPadding) =>
      _$this._iconTextFitPadding = iconTextFitPadding;

  Expression _iconImage;
  Expression get iconImage => _$this._iconImage;
  set iconImage(Expression iconImage) => _$this._iconImage = iconImage;

  Expression _iconRotate;
  Expression get iconRotate => _$this._iconRotate;
  set iconRotate(Expression iconRotate) => _$this._iconRotate = iconRotate;

  Expression _iconPadding;
  Expression get iconPadding => _$this._iconPadding;
  set iconPadding(Expression iconPadding) => _$this._iconPadding = iconPadding;

  Expression _iconKeepUpright;
  Expression get iconKeepUpright => _$this._iconKeepUpright;
  set iconKeepUpright(Expression iconKeepUpright) =>
      _$this._iconKeepUpright = iconKeepUpright;

  Expression _iconOffset;
  Expression get iconOffset => _$this._iconOffset;
  set iconOffset(Expression iconOffset) => _$this._iconOffset = iconOffset;

  Expression _iconAnchor;
  Expression get iconAnchor => _$this._iconAnchor;
  set iconAnchor(Expression iconAnchor) => _$this._iconAnchor = iconAnchor;

  Expression _iconPitchAlignment;
  Expression get iconPitchAlignment => _$this._iconPitchAlignment;
  set iconPitchAlignment(Expression iconPitchAlignment) =>
      _$this._iconPitchAlignment = iconPitchAlignment;

  Expression _textPitchAlignment;
  Expression get textPitchAlignment => _$this._textPitchAlignment;
  set textPitchAlignment(Expression textPitchAlignment) =>
      _$this._textPitchAlignment = textPitchAlignment;

  Expression _textRotationAlignment;
  Expression get textRotationAlignment => _$this._textRotationAlignment;
  set textRotationAlignment(Expression textRotationAlignment) =>
      _$this._textRotationAlignment = textRotationAlignment;

  Expression _textField;
  Expression get textField => _$this._textField;
  set textField(Expression textField) => _$this._textField = textField;

  Expression _textFont;
  Expression get textFont => _$this._textFont;
  set textFont(Expression textFont) => _$this._textFont = textFont;

  Expression _textSize;
  Expression get textSize => _$this._textSize;
  set textSize(Expression textSize) => _$this._textSize = textSize;

  Expression _textMaxWidth;
  Expression get textMaxWidth => _$this._textMaxWidth;
  set textMaxWidth(Expression textMaxWidth) =>
      _$this._textMaxWidth = textMaxWidth;

  Expression _textLineHeight;
  Expression get textLineHeight => _$this._textLineHeight;
  set textLineHeight(Expression textLineHeight) =>
      _$this._textLineHeight = textLineHeight;

  Expression _textLetterSpacing;
  Expression get textLetterSpacing => _$this._textLetterSpacing;
  set textLetterSpacing(Expression textLetterSpacing) =>
      _$this._textLetterSpacing = textLetterSpacing;

  Expression _textJustify;
  Expression get textJustify => _$this._textJustify;
  set textJustify(Expression textJustify) => _$this._textJustify = textJustify;

  Expression _textRadialOffset;
  Expression get textRadialOffset => _$this._textRadialOffset;
  set textRadialOffset(Expression textRadialOffset) =>
      _$this._textRadialOffset = textRadialOffset;

  Expression _textVariableAnchor;
  Expression get textVariableAnchor => _$this._textVariableAnchor;
  set textVariableAnchor(Expression textVariableAnchor) =>
      _$this._textVariableAnchor = textVariableAnchor;

  Expression _textAnchor;
  Expression get textAnchor => _$this._textAnchor;
  set textAnchor(Expression textAnchor) => _$this._textAnchor = textAnchor;

  Expression _textMaxAngle;
  Expression get textMaxAngle => _$this._textMaxAngle;
  set textMaxAngle(Expression textMaxAngle) =>
      _$this._textMaxAngle = textMaxAngle;

  Expression _textRotate;
  Expression get textRotate => _$this._textRotate;
  set textRotate(Expression textRotate) => _$this._textRotate = textRotate;

  Expression _textPadding;
  Expression get textPadding => _$this._textPadding;
  set textPadding(Expression textPadding) => _$this._textPadding = textPadding;

  Expression _textKeepUpright;
  Expression get textKeepUpright => _$this._textKeepUpright;
  set textKeepUpright(Expression textKeepUpright) =>
      _$this._textKeepUpright = textKeepUpright;

  Expression _textTransform;
  Expression get textTransform => _$this._textTransform;
  set textTransform(Expression textTransform) =>
      _$this._textTransform = textTransform;

  Expression _textOffset;
  Expression get textOffset => _$this._textOffset;
  set textOffset(Expression textOffset) => _$this._textOffset = textOffset;

  Expression _textAllowOverlap;
  Expression get textAllowOverlap => _$this._textAllowOverlap;
  set textAllowOverlap(Expression textAllowOverlap) =>
      _$this._textAllowOverlap = textAllowOverlap;

  Expression _textIgnorePlacement;
  Expression get textIgnorePlacement => _$this._textIgnorePlacement;
  set textIgnorePlacement(Expression textIgnorePlacement) =>
      _$this._textIgnorePlacement = textIgnorePlacement;

  Expression _textOptional;
  Expression get textOptional => _$this._textOptional;
  set textOptional(Expression textOptional) =>
      _$this._textOptional = textOptional;

  Expression _iconOpacity;
  Expression get iconOpacity => _$this._iconOpacity;
  set iconOpacity(Expression iconOpacity) => _$this._iconOpacity = iconOpacity;

  Expression _iconColor;
  Expression get iconColor => _$this._iconColor;
  set iconColor(Expression iconColor) => _$this._iconColor = iconColor;

  Expression _iconHaloColor;
  Expression get iconHaloColor => _$this._iconHaloColor;
  set iconHaloColor(Expression iconHaloColor) =>
      _$this._iconHaloColor = iconHaloColor;

  Expression _iconHaloWidth;
  Expression get iconHaloWidth => _$this._iconHaloWidth;
  set iconHaloWidth(Expression iconHaloWidth) =>
      _$this._iconHaloWidth = iconHaloWidth;

  Expression _iconHaloBlur;
  Expression get iconHaloBlur => _$this._iconHaloBlur;
  set iconHaloBlur(Expression iconHaloBlur) =>
      _$this._iconHaloBlur = iconHaloBlur;

  Expression _iconTranslate;
  Expression get iconTranslate => _$this._iconTranslate;
  set iconTranslate(Expression iconTranslate) =>
      _$this._iconTranslate = iconTranslate;

  Expression _iconTranslateAnchor;
  Expression get iconTranslateAnchor => _$this._iconTranslateAnchor;
  set iconTranslateAnchor(Expression iconTranslateAnchor) =>
      _$this._iconTranslateAnchor = iconTranslateAnchor;

  Expression _textOpacity;
  Expression get textOpacity => _$this._textOpacity;
  set textOpacity(Expression textOpacity) => _$this._textOpacity = textOpacity;

  Expression _textColor;
  Expression get textColor => _$this._textColor;
  set textColor(Expression textColor) => _$this._textColor = textColor;

  Expression _textHaloColor;
  Expression get textHaloColor => _$this._textHaloColor;
  set textHaloColor(Expression textHaloColor) =>
      _$this._textHaloColor = textHaloColor;

  Expression _textHaloWidth;
  Expression get textHaloWidth => _$this._textHaloWidth;
  set textHaloWidth(Expression textHaloWidth) =>
      _$this._textHaloWidth = textHaloWidth;

  Expression _textHaloBlur;
  Expression get textHaloBlur => _$this._textHaloBlur;
  set textHaloBlur(Expression textHaloBlur) =>
      _$this._textHaloBlur = textHaloBlur;

  Expression _textTranslate;
  Expression get textTranslate => _$this._textTranslate;
  set textTranslate(Expression textTranslate) =>
      _$this._textTranslate = textTranslate;

  Expression _textTranslateAnchor;
  Expression get textTranslateAnchor => _$this._textTranslateAnchor;
  set textTranslateAnchor(Expression textTranslateAnchor) =>
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

  MethodChannel _channel;
  MethodChannel get channel => _$this._channel;
  set channel(MethodChannel channel) => _$this._channel = channel;

  SymbolLayerBuilder();

  SymbolLayerBuilder get _$this {
    if (_$v != null) {
      _sourceId = _$v.sourceId;
      _sourceLayer = _$v.sourceLayer;
      _filter = _$v.filter;
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
      _iconTextFitPadding = _$v.iconTextFitPadding;
      _iconImage = _$v.iconImage;
      _iconRotate = _$v.iconRotate;
      _iconPadding = _$v.iconPadding;
      _iconKeepUpright = _$v.iconKeepUpright;
      _iconOffset = _$v.iconOffset;
      _iconAnchor = _$v.iconAnchor;
      _iconPitchAlignment = _$v.iconPitchAlignment;
      _textPitchAlignment = _$v.textPitchAlignment;
      _textRotationAlignment = _$v.textRotationAlignment;
      _textField = _$v.textField;
      _textFont = _$v.textFont;
      _textSize = _$v.textSize;
      _textMaxWidth = _$v.textMaxWidth;
      _textLineHeight = _$v.textLineHeight;
      _textLetterSpacing = _$v.textLetterSpacing;
      _textJustify = _$v.textJustify;
      _textRadialOffset = _$v.textRadialOffset;
      _textVariableAnchor = _$v.textVariableAnchor;
      _textAnchor = _$v.textAnchor;
      _textMaxAngle = _$v.textMaxAngle;
      _textRotate = _$v.textRotate;
      _textPadding = _$v.textPadding;
      _textKeepUpright = _$v.textKeepUpright;
      _textTransform = _$v.textTransform;
      _textOffset = _$v.textOffset;
      _textAllowOverlap = _$v.textAllowOverlap;
      _textIgnorePlacement = _$v.textIgnorePlacement;
      _textOptional = _$v.textOptional;
      _iconOpacity = _$v.iconOpacity;
      _iconColor = _$v.iconColor;
      _iconHaloColor = _$v.iconHaloColor;
      _iconHaloWidth = _$v.iconHaloWidth;
      _iconHaloBlur = _$v.iconHaloBlur;
      _iconTranslate = _$v.iconTranslate;
      _iconTranslateAnchor = _$v.iconTranslateAnchor;
      _textOpacity = _$v.textOpacity;
      _textColor = _$v.textColor;
      _textHaloColor = _$v.textHaloColor;
      _textHaloWidth = _$v.textHaloWidth;
      _textHaloBlur = _$v.textHaloBlur;
      _textTranslate = _$v.textTranslate;
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
      _channel = _$v.channel;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant SymbolLayer other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SymbolLayer;
  }

  @override
  void update(void Function(SymbolLayerBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SymbolLayer build() {
    _$SymbolLayer _$result;
    try {
      _$result = _$v ??
          new _$SymbolLayer._(
              sourceId: sourceId,
              sourceLayer: sourceLayer,
              filter: filter,
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
              iconTextFitPadding: iconTextFitPadding,
              iconImage: iconImage,
              iconRotate: iconRotate,
              iconPadding: iconPadding,
              iconKeepUpright: iconKeepUpright,
              iconOffset: iconOffset,
              iconAnchor: iconAnchor,
              iconPitchAlignment: iconPitchAlignment,
              textPitchAlignment: textPitchAlignment,
              textRotationAlignment: textRotationAlignment,
              textField: textField,
              textFont: textFont,
              textSize: textSize,
              textMaxWidth: textMaxWidth,
              textLineHeight: textLineHeight,
              textLetterSpacing: textLetterSpacing,
              textJustify: textJustify,
              textRadialOffset: textRadialOffset,
              textVariableAnchor: textVariableAnchor,
              textAnchor: textAnchor,
              textMaxAngle: textMaxAngle,
              textRotate: textRotate,
              textPadding: textPadding,
              textKeepUpright: textKeepUpright,
              textTransform: textTransform,
              textOffset: textOffset,
              textAllowOverlap: textAllowOverlap,
              textIgnorePlacement: textIgnorePlacement,
              textOptional: textOptional,
              iconOpacity: iconOpacity,
              iconColor: iconColor,
              iconHaloColor: iconHaloColor,
              iconHaloWidth: iconHaloWidth,
              iconHaloBlur: iconHaloBlur,
              iconTranslate: iconTranslate,
              iconTranslateAnchor: iconTranslateAnchor,
              textOpacity: textOpacity,
              textColor: textColor,
              textHaloColor: textHaloColor,
              textHaloWidth: textHaloWidth,
              textHaloBlur: textHaloBlur,
              textTranslate: textTranslate,
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
              maxZoom: maxZoom,
              channel: channel);
    } catch (_) {
      String _$failedField;
      try {
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
            'SymbolLayer', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
