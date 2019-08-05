// GENERATED CODE - DO NOT MODIFY BY HAND

part of hillshade_layer;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HillshadeLayerModel> _$hillshadeLayerModelSerializer =
    new _$HillshadeLayerModelSerializer();

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
    if (object.sourceId != null) {
      result
        ..add('sourceId')
        ..add(serializers.serialize(object.sourceId,
            specifiedType: const FullType(String)));
    }
    if (object.illuminationDirection != null) {
      result
        ..add('illuminationDirection')
        ..add(serializers.serialize(object.illuminationDirection,
            specifiedType: const FullType(double)));
    }
    if (object.illuminationAnchor != null) {
      result
        ..add('illuminationAnchor')
        ..add(serializers.serialize(object.illuminationAnchor,
            specifiedType: const FullType(TranslateAnchor)));
    }
    if (object.exaggeration != null) {
      result
        ..add('exaggeration')
        ..add(serializers.serialize(object.exaggeration,
            specifiedType: const FullType(double)));
    }
    if (object.shadowColor != null) {
      result
        ..add('shadowColor')
        ..add(serializers.serialize(object.shadowColor,
            specifiedType: const FullType(int)));
    }
    if (object.highlightColor != null) {
      result
        ..add('highlightColor')
        ..add(serializers.serialize(object.highlightColor,
            specifiedType: const FullType(int)));
    }
    if (object.accentColor != null) {
      result
        ..add('accentColor')
        ..add(serializers.serialize(object.accentColor,
            specifiedType: const FullType(int)));
    }
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
