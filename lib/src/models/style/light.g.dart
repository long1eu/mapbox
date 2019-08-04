// GENERATED CODE - DO NOT MODIFY BY HAND

part of light;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Light> _$lightSerializer = new _$LightSerializer();

class _$LightSerializer implements StructuredSerializer<Light> {
  @override
  final Iterable<Type> types = const [Light, _$Light];
  @override
  final String wireName = 'Light';

  @override
  Iterable<Object> serialize(Serializers serializers, Light object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'anchor',
      serializers.serialize(object.anchor,
          specifiedType: const FullType(TranslateAnchor)),
      'color',
      serializers.serialize(object.color, specifiedType: const FullType(int)),
      'intensity',
      serializers.serialize(object.intensity,
          specifiedType: const FullType(double)),
      'positionTransition',
      serializers.serialize(object.positionTransition,
          specifiedType: const FullType(TransitionOptions)),
      'colorTransition',
      serializers.serialize(object.colorTransition,
          specifiedType: const FullType(TransitionOptions)),
      'intensityTransition',
      serializers.serialize(object.intensityTransition,
          specifiedType: const FullType(TransitionOptions)),
    ];
    if (object.position != null) {
      result
        ..add('position')
        ..add(serializers.serialize(object.position,
            specifiedType: const FullType(Position)));
    }
    return result;
  }

  @override
  Light deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LightBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'anchor':
          result.anchor = serializers.deserialize(value,
                  specifiedType: const FullType(TranslateAnchor))
              as TranslateAnchor;
          break;
        case 'position':
          result.position.replace(serializers.deserialize(value,
              specifiedType: const FullType(Position)) as Position);
          break;
        case 'color':
          result.color = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'intensity':
          result.intensity = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'positionTransition':
          result.positionTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'colorTransition':
          result.colorTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'intensityTransition':
          result.intensityTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
      }
    }

    return result.build();
  }
}

class _$Light extends Light {
  @override
  final TranslateAnchor anchor;
  @override
  final Position position;
  @override
  final int color;
  @override
  final double intensity;
  @override
  final TransitionOptions positionTransition;
  @override
  final TransitionOptions colorTransition;
  @override
  final TransitionOptions intensityTransition;
  Uint8List __data;

  factory _$Light([void Function(LightBuilder) updates]) =>
      (new LightBuilder()..update(updates)).build();

  _$Light._(
      {this.anchor,
      this.position,
      this.color,
      this.intensity,
      this.positionTransition,
      this.colorTransition,
      this.intensityTransition})
      : super._() {
    if (anchor == null) {
      throw new BuiltValueNullFieldError('Light', 'anchor');
    }
    if (color == null) {
      throw new BuiltValueNullFieldError('Light', 'color');
    }
    if (intensity == null) {
      throw new BuiltValueNullFieldError('Light', 'intensity');
    }
    if (positionTransition == null) {
      throw new BuiltValueNullFieldError('Light', 'positionTransition');
    }
    if (colorTransition == null) {
      throw new BuiltValueNullFieldError('Light', 'colorTransition');
    }
    if (intensityTransition == null) {
      throw new BuiltValueNullFieldError('Light', 'intensityTransition');
    }
  }

  @override
  Uint8List get data => __data ??= super.data;

  @override
  Light rebuild(void Function(LightBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LightBuilder toBuilder() => new LightBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Light &&
        anchor == other.anchor &&
        position == other.position &&
        color == other.color &&
        intensity == other.intensity &&
        positionTransition == other.positionTransition &&
        colorTransition == other.colorTransition &&
        intensityTransition == other.intensityTransition;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, anchor.hashCode), position.hashCode),
                        color.hashCode),
                    intensity.hashCode),
                positionTransition.hashCode),
            colorTransition.hashCode),
        intensityTransition.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Light')
          ..add('anchor', anchor)
          ..add('position', position)
          ..add('color', color)
          ..add('intensity', intensity)
          ..add('positionTransition', positionTransition)
          ..add('colorTransition', colorTransition)
          ..add('intensityTransition', intensityTransition))
        .toString();
  }
}

class LightBuilder implements Builder<Light, LightBuilder> {
  _$Light _$v;

  TranslateAnchor _anchor;
  TranslateAnchor get anchor => _$this._anchor;
  set anchor(TranslateAnchor anchor) => _$this._anchor = anchor;

  PositionBuilder _position;
  PositionBuilder get position => _$this._position ??= new PositionBuilder();
  set position(PositionBuilder position) => _$this._position = position;

  int _color;
  int get color => _$this._color;
  set color(int color) => _$this._color = color;

  double _intensity;
  double get intensity => _$this._intensity;
  set intensity(double intensity) => _$this._intensity = intensity;

  TransitionOptionsBuilder _positionTransition;
  TransitionOptionsBuilder get positionTransition =>
      _$this._positionTransition ??= new TransitionOptionsBuilder();
  set positionTransition(TransitionOptionsBuilder positionTransition) =>
      _$this._positionTransition = positionTransition;

  TransitionOptionsBuilder _colorTransition;
  TransitionOptionsBuilder get colorTransition =>
      _$this._colorTransition ??= new TransitionOptionsBuilder();
  set colorTransition(TransitionOptionsBuilder colorTransition) =>
      _$this._colorTransition = colorTransition;

  TransitionOptionsBuilder _intensityTransition;
  TransitionOptionsBuilder get intensityTransition =>
      _$this._intensityTransition ??= new TransitionOptionsBuilder();
  set intensityTransition(TransitionOptionsBuilder intensityTransition) =>
      _$this._intensityTransition = intensityTransition;

  LightBuilder();

  LightBuilder get _$this {
    if (_$v != null) {
      _anchor = _$v.anchor;
      _position = _$v.position?.toBuilder();
      _color = _$v.color;
      _intensity = _$v.intensity;
      _positionTransition = _$v.positionTransition?.toBuilder();
      _colorTransition = _$v.colorTransition?.toBuilder();
      _intensityTransition = _$v.intensityTransition?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Light other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Light;
  }

  @override
  void update(void Function(LightBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Light build() {
    _$Light _$result;
    try {
      _$result = _$v ??
          new _$Light._(
              anchor: anchor,
              position: _position?.build(),
              color: color,
              intensity: intensity,
              positionTransition: positionTransition.build(),
              colorTransition: colorTransition.build(),
              intensityTransition: intensityTransition.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'position';
        _position?.build();

        _$failedField = 'positionTransition';
        positionTransition.build();
        _$failedField = 'colorTransition';
        colorTransition.build();
        _$failedField = 'intensityTransition';
        intensityTransition.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Light', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
