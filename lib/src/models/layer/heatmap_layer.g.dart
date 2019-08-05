// GENERATED CODE - DO NOT MODIFY BY HAND

part of heatmap_layer;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HeatmapLayerModel> _$heatmapLayerModelSerializer =
    new _$HeatmapLayerModelSerializer();

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
    if (object.radius != null) {
      result
        ..add('radius')
        ..add(serializers.serialize(object.radius,
            specifiedType: const FullType(double)));
    }
    if (object.weight != null) {
      result
        ..add('weight')
        ..add(serializers.serialize(object.weight,
            specifiedType: const FullType(double)));
    }
    if (object.intensity != null) {
      result
        ..add('intensity')
        ..add(serializers.serialize(object.intensity,
            specifiedType: const FullType(double)));
    }
    if (object.color != null) {
      result
        ..add('color')
        ..add(serializers.serialize(object.color,
            specifiedType: const FullType(int)));
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
        case 'opacity':
          result.opacity = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
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
  final double opacity;
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
      this.opacity,
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
                                                $jc($jc(0, sourceId.hashCode),
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
    return (newBuiltValueToStringHelper('HeatmapLayerModel')
          ..add('sourceId', sourceId)
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

  double _opacity;
  double get opacity => _$this._opacity;
  set opacity(double opacity) => _$this._opacity = opacity;

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
      _opacity = _$v.opacity;
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
              opacity: opacity,
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
