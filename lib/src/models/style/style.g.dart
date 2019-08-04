// GENERATED CODE - DO NOT MODIFY BY HAND

part of style;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StyleModel> _$styleModelSerializer = new _$StyleModelSerializer();

class _$StyleModelSerializer implements StructuredSerializer<StyleModel> {
  @override
  final Iterable<Type> types = const [StyleModel, _$StyleModel];
  @override
  final String wireName = 'StyleModel';

  @override
  Iterable<Object> serialize(Serializers serializers, StyleModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'uri',
      serializers.serialize(object.uri, specifiedType: const FullType(String)),
      'json',
      serializers.serialize(object.json, specifiedType: const FullType(String)),
      'sources',
      serializers.serialize(object.sources,
          specifiedType:
              const FullType(BuiltList, const [const FullType(SourceModel)])),
      'layers',
      serializers.serialize(object.layers,
          specifiedType:
              const FullType(BuiltList, const [const FullType(LayerModel)])),
      'transition',
      serializers.serialize(object.transition,
          specifiedType: const FullType(TransitionOptions)),
    ];
    if (object.light != null) {
      result
        ..add('light')
        ..add(serializers.serialize(object.light,
            specifiedType: const FullType(Light)));
    }
    return result;
  }

  @override
  StyleModel deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StyleModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'uri':
          result.uri = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'json':
          result.json = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sources':
          result.sources.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(SourceModel)]))
              as BuiltList<dynamic>);
          break;
        case 'layers':
          result.layers.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(LayerModel)]))
              as BuiltList<dynamic>);
          break;
        case 'transition':
          result.transition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'light':
          result.light.replace(serializers.deserialize(value,
              specifiedType: const FullType(Light)) as Light);
          break;
      }
    }

    return result.build();
  }
}

class _$StyleModel extends StyleModel {
  @override
  final String uri;
  @override
  final String json;
  @override
  final BuiltList<SourceModel> sources;
  @override
  final BuiltList<LayerModel> layers;
  @override
  final TransitionOptions transition;
  @override
  final Light light;
  Uint8List __data;

  factory _$StyleModel([void Function(StyleModelBuilder) updates]) =>
      (new StyleModelBuilder()..update(updates)).build();

  _$StyleModel._(
      {this.uri,
      this.json,
      this.sources,
      this.layers,
      this.transition,
      this.light})
      : super._() {
    if (uri == null) {
      throw new BuiltValueNullFieldError('StyleModel', 'uri');
    }
    if (json == null) {
      throw new BuiltValueNullFieldError('StyleModel', 'json');
    }
    if (sources == null) {
      throw new BuiltValueNullFieldError('StyleModel', 'sources');
    }
    if (layers == null) {
      throw new BuiltValueNullFieldError('StyleModel', 'layers');
    }
    if (transition == null) {
      throw new BuiltValueNullFieldError('StyleModel', 'transition');
    }
  }

  @override
  Uint8List get data => __data ??= super.data;

  @override
  StyleModel rebuild(void Function(StyleModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StyleModelBuilder toBuilder() => new StyleModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StyleModel &&
        uri == other.uri &&
        json == other.json &&
        sources == other.sources &&
        layers == other.layers &&
        transition == other.transition &&
        light == other.light;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, uri.hashCode), json.hashCode), sources.hashCode),
                layers.hashCode),
            transition.hashCode),
        light.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('StyleModel')
          ..add('uri', uri)
          ..add('json', json)
          ..add('sources', sources)
          ..add('layers', layers)
          ..add('transition', transition)
          ..add('light', light))
        .toString();
  }
}

class StyleModelBuilder implements Builder<StyleModel, StyleModelBuilder> {
  _$StyleModel _$v;

  String _uri;
  String get uri => _$this._uri;
  set uri(String uri) => _$this._uri = uri;

  String _json;
  String get json => _$this._json;
  set json(String json) => _$this._json = json;

  ListBuilder<SourceModel> _sources;
  ListBuilder<SourceModel> get sources =>
      _$this._sources ??= new ListBuilder<SourceModel>();
  set sources(ListBuilder<SourceModel> sources) => _$this._sources = sources;

  ListBuilder<LayerModel> _layers;
  ListBuilder<LayerModel> get layers =>
      _$this._layers ??= new ListBuilder<LayerModel>();
  set layers(ListBuilder<LayerModel> layers) => _$this._layers = layers;

  TransitionOptionsBuilder _transition;
  TransitionOptionsBuilder get transition =>
      _$this._transition ??= new TransitionOptionsBuilder();
  set transition(TransitionOptionsBuilder transition) =>
      _$this._transition = transition;

  LightBuilder _light;
  LightBuilder get light => _$this._light ??= new LightBuilder();
  set light(LightBuilder light) => _$this._light = light;

  StyleModelBuilder();

  StyleModelBuilder get _$this {
    if (_$v != null) {
      _uri = _$v.uri;
      _json = _$v.json;
      _sources = _$v.sources?.toBuilder();
      _layers = _$v.layers?.toBuilder();
      _transition = _$v.transition?.toBuilder();
      _light = _$v.light?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StyleModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$StyleModel;
  }

  @override
  void update(void Function(StyleModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$StyleModel build() {
    _$StyleModel _$result;
    try {
      _$result = _$v ??
          new _$StyleModel._(
              uri: uri,
              json: json,
              sources: sources.build(),
              layers: layers.build(),
              transition: transition.build(),
              light: _light?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'sources';
        sources.build();
        _$failedField = 'layers';
        layers.build();
        _$failedField = 'transition';
        transition.build();
        _$failedField = 'light';
        _light?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'StyleModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
