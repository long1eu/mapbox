// GENERATED CODE - DO NOT MODIFY BY HAND

part of line_layer;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LineLayerModel> _$lineLayerModelSerializer =
    new _$LineLayerModelSerializer();

class _$LineLayerModelSerializer
    implements StructuredSerializer<LineLayerModel> {
  @override
  final Iterable<Type> types = const [LineLayerModel, _$LineLayerModel];
  @override
  final String wireName = 'LineLayerModel';

  @override
  Iterable<Object> serialize(Serializers serializers, LineLayerModel object,
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
    if (object.cap != null) {
      result
        ..add('cap')
        ..add(serializers.serialize(object.cap,
            specifiedType: const FullType(LineCap)));
    }
    if (object.join != null) {
      result
        ..add('join')
        ..add(serializers.serialize(object.join,
            specifiedType: const FullType(LineJoin)));
    }
    if (object.miterLimit != null) {
      result
        ..add('miterLimit')
        ..add(serializers.serialize(object.miterLimit,
            specifiedType: const FullType(double)));
    }
    if (object.roundLimit != null) {
      result
        ..add('roundLimit')
        ..add(serializers.serialize(object.roundLimit,
            specifiedType: const FullType(double)));
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
    if (object.width != null) {
      result
        ..add('width')
        ..add(serializers.serialize(object.width,
            specifiedType: const FullType(double)));
    }
    if (object.gapWidth != null) {
      result
        ..add('gapWidth')
        ..add(serializers.serialize(object.gapWidth,
            specifiedType: const FullType(double)));
    }
    if (object.offset != null) {
      result
        ..add('offset')
        ..add(serializers.serialize(object.offset,
            specifiedType: const FullType(double)));
    }
    if (object.blur != null) {
      result
        ..add('blur')
        ..add(serializers.serialize(object.blur,
            specifiedType: const FullType(double)));
    }
    if (object.dasharray != null) {
      result
        ..add('dasharray')
        ..add(serializers.serialize(object.dasharray,
            specifiedType:
                const FullType(BuiltList, const [const FullType(double)])));
    }
    if (object.pattern != null) {
      result
        ..add('pattern')
        ..add(serializers.serialize(object.pattern,
            specifiedType: const FullType(String)));
    }
    if (object.gradient != null) {
      result
        ..add('gradient')
        ..add(serializers.serialize(object.gradient,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  LineLayerModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LineLayerModelBuilder();

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
        case 'cap':
          result.cap = serializers.deserialize(value,
              specifiedType: const FullType(LineCap)) as LineCap;
          break;
        case 'join':
          result.join = serializers.deserialize(value,
              specifiedType: const FullType(LineJoin)) as LineJoin;
          break;
        case 'miterLimit':
          result.miterLimit = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'roundLimit':
          result.roundLimit = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
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
        case 'width':
          result.width = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'gapWidth':
          result.gapWidth = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'offset':
          result.offset = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'blur':
          result.blur = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'dasharray':
          result.dasharray.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(double)]))
              as BuiltList<dynamic>);
          break;
        case 'pattern':
          result.pattern = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'gradient':
          result.gradient = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
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

class _$LineLayerModel extends LineLayerModel {
  @override
  final String sourceId;
  @override
  final LineCap cap;
  @override
  final LineJoin join;
  @override
  final double miterLimit;
  @override
  final double roundLimit;
  @override
  final double opacity;
  @override
  final int color;
  @override
  final BuiltList<double> translate;
  @override
  final TranslateAnchor translateAnchor;
  @override
  final double width;
  @override
  final double gapWidth;
  @override
  final double offset;
  @override
  final double blur;
  @override
  final BuiltList<double> dasharray;
  @override
  final String pattern;
  @override
  final int gradient;
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
  Uint8List __data;
  Uint8List __sourceData;

  factory _$LineLayerModel([void Function(LineLayerModelBuilder) updates]) =>
      (new LineLayerModelBuilder()..update(updates)).build();

  _$LineLayerModel._(
      {this.sourceId,
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
      this.maxZoom})
      : super._() {
    if (sourceId == null) {
      throw new BuiltValueNullFieldError('LineLayerModel', 'sourceId');
    }
    if (opacityTransition == null) {
      throw new BuiltValueNullFieldError('LineLayerModel', 'opacityTransition');
    }
    if (colorTransition == null) {
      throw new BuiltValueNullFieldError('LineLayerModel', 'colorTransition');
    }
    if (translateTransition == null) {
      throw new BuiltValueNullFieldError(
          'LineLayerModel', 'translateTransition');
    }
    if (widthTransition == null) {
      throw new BuiltValueNullFieldError('LineLayerModel', 'widthTransition');
    }
    if (gapWidthTransition == null) {
      throw new BuiltValueNullFieldError(
          'LineLayerModel', 'gapWidthTransition');
    }
    if (offsetTransition == null) {
      throw new BuiltValueNullFieldError('LineLayerModel', 'offsetTransition');
    }
    if (blurTransition == null) {
      throw new BuiltValueNullFieldError('LineLayerModel', 'blurTransition');
    }
    if (dasharrayTransition == null) {
      throw new BuiltValueNullFieldError(
          'LineLayerModel', 'dasharrayTransition');
    }
    if (patternTransition == null) {
      throw new BuiltValueNullFieldError('LineLayerModel', 'patternTransition');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('LineLayerModel', 'id');
    }
    if (visible == null) {
      throw new BuiltValueNullFieldError('LineLayerModel', 'visible');
    }
    if (minZoom == null) {
      throw new BuiltValueNullFieldError('LineLayerModel', 'minZoom');
    }
    if (maxZoom == null) {
      throw new BuiltValueNullFieldError('LineLayerModel', 'maxZoom');
    }
  }

  @override
  Uint8List get data => __data ??= super.data;

  @override
  Uint8List get sourceData => __sourceData ??= super.sourceData;

  @override
  LineLayerModel rebuild(void Function(LineLayerModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LineLayerModelBuilder toBuilder() =>
      new LineLayerModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LineLayerModel &&
        sourceId == other.sourceId &&
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
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, sourceId.hashCode), cap.hashCode), join.hashCode), miterLimit.hashCode), roundLimit.hashCode), opacity.hashCode), color.hashCode), translate.hashCode), translateAnchor.hashCode), width.hashCode),
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
    return (newBuiltValueToStringHelper('LineLayerModel')
          ..add('sourceId', sourceId)
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
          ..add('maxZoom', maxZoom))
        .toString();
  }
}

class LineLayerModelBuilder
    implements
        Builder<LineLayerModel, LineLayerModelBuilder>,
        LayerModelBuilder {
  _$LineLayerModel _$v;

  String _sourceId;
  String get sourceId => _$this._sourceId;
  set sourceId(String sourceId) => _$this._sourceId = sourceId;

  LineCap _cap;
  LineCap get cap => _$this._cap;
  set cap(LineCap cap) => _$this._cap = cap;

  LineJoin _join;
  LineJoin get join => _$this._join;
  set join(LineJoin join) => _$this._join = join;

  double _miterLimit;
  double get miterLimit => _$this._miterLimit;
  set miterLimit(double miterLimit) => _$this._miterLimit = miterLimit;

  double _roundLimit;
  double get roundLimit => _$this._roundLimit;
  set roundLimit(double roundLimit) => _$this._roundLimit = roundLimit;

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

  double _width;
  double get width => _$this._width;
  set width(double width) => _$this._width = width;

  double _gapWidth;
  double get gapWidth => _$this._gapWidth;
  set gapWidth(double gapWidth) => _$this._gapWidth = gapWidth;

  double _offset;
  double get offset => _$this._offset;
  set offset(double offset) => _$this._offset = offset;

  double _blur;
  double get blur => _$this._blur;
  set blur(double blur) => _$this._blur = blur;

  ListBuilder<double> _dasharray;
  ListBuilder<double> get dasharray =>
      _$this._dasharray ??= new ListBuilder<double>();
  set dasharray(ListBuilder<double> dasharray) => _$this._dasharray = dasharray;

  String _pattern;
  String get pattern => _$this._pattern;
  set pattern(String pattern) => _$this._pattern = pattern;

  int _gradient;
  int get gradient => _$this._gradient;
  set gradient(int gradient) => _$this._gradient = gradient;

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

  LineLayerModelBuilder();

  LineLayerModelBuilder get _$this {
    if (_$v != null) {
      _sourceId = _$v.sourceId;
      _cap = _$v.cap;
      _join = _$v.join;
      _miterLimit = _$v.miterLimit;
      _roundLimit = _$v.roundLimit;
      _opacity = _$v.opacity;
      _color = _$v.color;
      _translate = _$v.translate?.toBuilder();
      _translateAnchor = _$v.translateAnchor;
      _width = _$v.width;
      _gapWidth = _$v.gapWidth;
      _offset = _$v.offset;
      _blur = _$v.blur;
      _dasharray = _$v.dasharray?.toBuilder();
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
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant LineLayerModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LineLayerModel;
  }

  @override
  void update(void Function(LineLayerModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LineLayerModel build() {
    _$LineLayerModel _$result;
    try {
      _$result = _$v ??
          new _$LineLayerModel._(
              sourceId: sourceId,
              cap: cap,
              join: join,
              miterLimit: miterLimit,
              roundLimit: roundLimit,
              opacity: opacity,
              color: color,
              translate: _translate?.build(),
              translateAnchor: translateAnchor,
              width: width,
              gapWidth: gapWidth,
              offset: offset,
              blur: blur,
              dasharray: _dasharray?.build(),
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
              maxZoom: maxZoom);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'translate';
        _translate?.build();

        _$failedField = 'dasharray';
        _dasharray?.build();

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
            'LineLayerModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
