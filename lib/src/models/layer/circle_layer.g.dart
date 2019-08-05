// GENERATED CODE - DO NOT MODIFY BY HAND

part of circle_layer;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CircleLayerModel> _$circleLayerModelSerializer =
    new _$CircleLayerModelSerializer();

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
    if (object.radius != null) {
      result
        ..add('radius')
        ..add(serializers.serialize(object.radius,
            specifiedType: const FullType(double)));
    }
    if (object.color != null) {
      result
        ..add('color')
        ..add(serializers.serialize(object.color,
            specifiedType: const FullType(int)));
    }
    if (object.blur != null) {
      result
        ..add('blur')
        ..add(serializers.serialize(object.blur,
            specifiedType: const FullType(double)));
    }
    if (object.opacity != null) {
      result
        ..add('opacity')
        ..add(serializers.serialize(object.opacity,
            specifiedType: const FullType(double)));
    }
    if (object.translate != null) {
      result
        ..add('translate')
        ..add(serializers.serialize(object.translate,
            specifiedType:
                const FullType(BuiltList, const [const FullType(double)])));
    }
    if (object.translateAnchor != null) {
      result
        ..add('translateAnchor')
        ..add(serializers.serialize(object.translateAnchor,
            specifiedType: const FullType(TranslateAnchor)));
    }
    if (object.pitchScale != null) {
      result
        ..add('pitchScale')
        ..add(serializers.serialize(object.pitchScale,
            specifiedType: const FullType(TranslateAnchor)));
    }
    if (object.pitchAlignment != null) {
      result
        ..add('pitchAlignment')
        ..add(serializers.serialize(object.pitchAlignment,
            specifiedType: const FullType(TranslateAnchor)));
    }
    if (object.strokeWidth != null) {
      result
        ..add('strokeWidth')
        ..add(serializers.serialize(object.strokeWidth,
            specifiedType: const FullType(double)));
    }
    if (object.strokeColor != null) {
      result
        ..add('strokeColor')
        ..add(serializers.serialize(object.strokeColor,
            specifiedType: const FullType(int)));
    }
    if (object.strokeOpacity != null) {
      result
        ..add('strokeOpacity')
        ..add(serializers.serialize(object.strokeOpacity,
            specifiedType: const FullType(double)));
    }
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
        case 'opacity':
          result.opacity = serializers.deserialize(value,
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
        case 'strokeOpacity':
          result.strokeOpacity = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
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
  final double opacity;
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
  final double strokeOpacity;
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
      this.opacity,
      this.translate,
      this.translateAnchor,
      this.pitchScale,
      this.pitchAlignment,
      this.strokeWidth,
      this.strokeColor,
      this.strokeOpacity,
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
        opacity == other.opacity &&
        translate == other.translate &&
        translateAnchor == other.translateAnchor &&
        pitchScale == other.pitchScale &&
        pitchAlignment == other.pitchAlignment &&
        strokeWidth == other.strokeWidth &&
        strokeColor == other.strokeColor &&
        strokeOpacity == other.strokeOpacity &&
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
                                                                            $jc($jc($jc($jc($jc($jc(0, sourceId.hashCode), radius.hashCode), color.hashCode), blur.hashCode), opacity.hashCode),
                                                                                translate.hashCode),
                                                                            translateAnchor.hashCode),
                                                                        pitchScale.hashCode),
                                                                    pitchAlignment.hashCode),
                                                                strokeWidth.hashCode),
                                                            strokeColor.hashCode),
                                                        strokeOpacity.hashCode),
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
          ..add('opacity', opacity)
          ..add('translate', translate)
          ..add('translateAnchor', translateAnchor)
          ..add('pitchScale', pitchScale)
          ..add('pitchAlignment', pitchAlignment)
          ..add('strokeWidth', strokeWidth)
          ..add('strokeColor', strokeColor)
          ..add('strokeOpacity', strokeOpacity)
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

  double _opacity;
  double get opacity => _$this._opacity;
  set opacity(double opacity) => _$this._opacity = opacity;

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

  double _strokeOpacity;
  double get strokeOpacity => _$this._strokeOpacity;
  set strokeOpacity(double strokeOpacity) =>
      _$this._strokeOpacity = strokeOpacity;

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
      _opacity = _$v.opacity;
      _translate = _$v.translate?.toBuilder();
      _translateAnchor = _$v.translateAnchor;
      _pitchScale = _$v.pitchScale;
      _pitchAlignment = _$v.pitchAlignment;
      _strokeWidth = _$v.strokeWidth;
      _strokeColor = _$v.strokeColor;
      _strokeOpacity = _$v.strokeOpacity;
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
              opacity: opacity,
              translate: _translate?.build(),
              translateAnchor: translateAnchor,
              pitchScale: pitchScale,
              pitchAlignment: pitchAlignment,
              strokeWidth: strokeWidth,
              strokeColor: strokeColor,
              strokeOpacity: strokeOpacity,
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
        _translate?.build();

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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
