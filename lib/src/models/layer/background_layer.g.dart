// GENERATED CODE - DO NOT MODIFY BY HAND

part of background_layer;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BackgroundLayerModel> _$backgroundLayerModelSerializer =
    new _$BackgroundLayerModelSerializer();

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
            specifiedType: const FullType(int)));
    }
    if (object.pattern != null) {
      result
        ..add('pattern')
        ..add(serializers.serialize(object.pattern,
            specifiedType: const FullType(String)));
    }
    if (object.opacity != null) {
      result
        ..add('opacity')
        ..add(serializers.serialize(object.opacity,
            specifiedType: const FullType(double)));
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
        case 'opacity':
          result.opacity = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
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

class _$BackgroundLayerModel extends BackgroundLayerModel {
  @override
  final int color;
  @override
  final String pattern;
  @override
  final double opacity;
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
      this.opacity,
      this.colorTransition,
      this.patternTransition,
      this.opacityTransition,
      this.id,
      this.visible,
      this.minZoom,
      this.maxZoom})
      : super._() {
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
    return (newBuiltValueToStringHelper('BackgroundLayerModel')
          ..add('color', color)
          ..add('pattern', pattern)
          ..add('opacity', opacity)
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

  double _opacity;
  double get opacity => _$this._opacity;
  set opacity(double opacity) => _$this._opacity = opacity;

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
      _opacity = _$v.opacity;
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
              opacity: opacity,
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
