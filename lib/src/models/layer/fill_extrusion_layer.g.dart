// GENERATED CODE - DO NOT MODIFY BY HAND

part of fill_extrusion_layer;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FillExtrusionLayerModel> _$fillExtrusionLayerModelSerializer =
    new _$FillExtrusionLayerModelSerializer();

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
    if (object.opacity != null) {
      result
        ..add('opacity')
        ..add(serializers.serialize(object.opacity,
            specifiedType: const FullType(double)));
    }
    if (object.color != null) {
      result
        ..add('color')
        ..add(serializers.serialize(object.color,
            specifiedType: const FullType(int)));
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
    if (object.pattern != null) {
      result
        ..add('pattern')
        ..add(serializers.serialize(object.pattern,
            specifiedType: const FullType(String)));
    }
    if (object.height != null) {
      result
        ..add('height')
        ..add(serializers.serialize(object.height,
            specifiedType: const FullType(double)));
    }
    if (object.base != null) {
      result
        ..add('base')
        ..add(serializers.serialize(object.base,
            specifiedType: const FullType(double)));
    }
    if (object.verticalGradient != null) {
      result
        ..add('verticalGradient')
        ..add(serializers.serialize(object.verticalGradient,
            specifiedType: const FullType(bool)));
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
        case 'opacity':
          result.opacity = serializers.deserialize(value,
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

class _$FillExtrusionLayerModel extends FillExtrusionLayerModel {
  @override
  final String sourceId;
  @override
  final double opacity;
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
      this.maxZoom})
      : super._() {
    if (sourceId == null) {
      throw new BuiltValueNullFieldError('FillExtrusionLayerModel', 'sourceId');
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
                                                                            $jc(
                                                                                0,
                                                                                sourceId
                                                                                    .hashCode),
                                                                            opacity
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

  double _opacity;
  double get opacity => _$this._opacity;
  set opacity(double opacity) => _$this._opacity = opacity;

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
      _opacity = _$v.opacity;
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
              opacity: opacity,
              color: color,
              translate: _translate?.build(),
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
        _translate?.build();

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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
