// GENERATED CODE - DO NOT MODIFY BY HAND

part of fill_layer;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FillLayerModel> _$fillLayerModelSerializer =
    new _$FillLayerModelSerializer();

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
    if (object.antialias != null) {
      result
        ..add('antialias')
        ..add(serializers.serialize(object.antialias,
            specifiedType: const FullType(bool)));
    }
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
    if (object.outlineColor != null) {
      result
        ..add('outlineColor')
        ..add(serializers.serialize(object.outlineColor,
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
        case 'opacity':
          result.opacity = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
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

class _$FillLayerModel extends FillLayerModel {
  @override
  final String sourceId;
  @override
  final bool antialias;
  @override
  final double opacity;
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
      this.maxZoom})
      : super._() {
    if (sourceId == null) {
      throw new BuiltValueNullFieldError('FillLayerModel', 'sourceId');
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
                                                                        0,
                                                                        sourceId
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
    return (newBuiltValueToStringHelper('FillLayerModel')
          ..add('sourceId', sourceId)
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

  double _opacity;
  double get opacity => _$this._opacity;
  set opacity(double opacity) => _$this._opacity = opacity;

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
      _opacity = _$v.opacity;
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
              opacity: opacity,
              color: color,
              outlineColor: outlineColor,
              translate: _translate?.build(),
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
        _translate?.build();

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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
