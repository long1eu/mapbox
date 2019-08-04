// GENERATED CODE - DO NOT MODIFY BY HAND

part of transition_options;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TransitionOptions> _$transitionOptionsSerializer =
    new _$TransitionOptionsSerializer();

class _$TransitionOptionsSerializer
    implements StructuredSerializer<TransitionOptions> {
  @override
  final Iterable<Type> types = const [TransitionOptions, _$TransitionOptions];
  @override
  final String wireName = 'TransitionOptions';

  @override
  Iterable<Object> serialize(Serializers serializers, TransitionOptions object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'duration',
      serializers.serialize(object.duration,
          specifiedType: const FullType(Duration)),
      'delay',
      serializers.serialize(object.delay,
          specifiedType: const FullType(Duration)),
      'enablePlacementTransitions',
      serializers.serialize(object.enablePlacementTransitions,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  TransitionOptions deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TransitionOptionsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'duration':
          result.duration = serializers.deserialize(value,
              specifiedType: const FullType(Duration)) as Duration;
          break;
        case 'delay':
          result.delay = serializers.deserialize(value,
              specifiedType: const FullType(Duration)) as Duration;
          break;
        case 'enablePlacementTransitions':
          result.enablePlacementTransitions = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$TransitionOptions extends TransitionOptions {
  @override
  final Duration duration;
  @override
  final Duration delay;
  @override
  final bool enablePlacementTransitions;
  Uint8List __data;

  factory _$TransitionOptions(
          [void Function(TransitionOptionsBuilder) updates]) =>
      (new TransitionOptionsBuilder()..update(updates)).build();

  _$TransitionOptions._(
      {this.duration, this.delay, this.enablePlacementTransitions})
      : super._() {
    if (duration == null) {
      throw new BuiltValueNullFieldError('TransitionOptions', 'duration');
    }
    if (delay == null) {
      throw new BuiltValueNullFieldError('TransitionOptions', 'delay');
    }
    if (enablePlacementTransitions == null) {
      throw new BuiltValueNullFieldError(
          'TransitionOptions', 'enablePlacementTransitions');
    }
  }

  @override
  Uint8List get data => __data ??= super.data;

  @override
  TransitionOptions rebuild(void Function(TransitionOptionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransitionOptionsBuilder toBuilder() =>
      new TransitionOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransitionOptions &&
        duration == other.duration &&
        delay == other.delay &&
        enablePlacementTransitions == other.enablePlacementTransitions;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, duration.hashCode), delay.hashCode),
        enablePlacementTransitions.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TransitionOptions')
          ..add('duration', duration)
          ..add('delay', delay)
          ..add('enablePlacementTransitions', enablePlacementTransitions))
        .toString();
  }
}

class TransitionOptionsBuilder
    implements Builder<TransitionOptions, TransitionOptionsBuilder> {
  _$TransitionOptions _$v;

  Duration _duration;
  Duration get duration => _$this._duration;
  set duration(Duration duration) => _$this._duration = duration;

  Duration _delay;
  Duration get delay => _$this._delay;
  set delay(Duration delay) => _$this._delay = delay;

  bool _enablePlacementTransitions;
  bool get enablePlacementTransitions => _$this._enablePlacementTransitions;
  set enablePlacementTransitions(bool enablePlacementTransitions) =>
      _$this._enablePlacementTransitions = enablePlacementTransitions;

  TransitionOptionsBuilder();

  TransitionOptionsBuilder get _$this {
    if (_$v != null) {
      _duration = _$v.duration;
      _delay = _$v.delay;
      _enablePlacementTransitions = _$v.enablePlacementTransitions;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransitionOptions other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TransitionOptions;
  }

  @override
  void update(void Function(TransitionOptionsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TransitionOptions build() {
    final _$result = _$v ??
        new _$TransitionOptions._(
            duration: duration,
            delay: delay,
            enablePlacementTransitions: enablePlacementTransitions);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
