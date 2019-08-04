// GENERATED CODE - DO NOT MODIFY BY HAND

part of formatted_section;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FormattedSection> _$formattedSectionSerializer =
    new _$FormattedSectionSerializer();

class _$FormattedSectionSerializer
    implements StructuredSerializer<FormattedSection> {
  @override
  final Iterable<Type> types = const [FormattedSection, _$FormattedSection];
  @override
  final String wireName = 'FormattedSection';

  @override
  Iterable<Object> serialize(Serializers serializers, FormattedSection object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'text',
      serializers.serialize(object.text, specifiedType: const FullType(String)),
      'textColor',
      serializers.serialize(object.textColor,
          specifiedType: const FullType(int)),
    ];
    if (object.fontScale != null) {
      result
        ..add('fontScale')
        ..add(serializers.serialize(object.fontScale,
            specifiedType: const FullType(double)));
    }
    if (object.fontStack != null) {
      result
        ..add('fontStack')
        ..add(serializers.serialize(object.fontStack,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  FormattedSection deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FormattedSectionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fontScale':
          result.fontScale = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'fontStack':
          result.fontStack.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<dynamic>);
          break;
        case 'textColor':
          result.textColor = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$FormattedSection extends FormattedSection {
  @override
  final String text;
  @override
  final double fontScale;
  @override
  final BuiltList<String> fontStack;
  @override
  final int textColor;
  Uint8List __data;

  factory _$FormattedSection(
          [void Function(FormattedSectionBuilder) updates]) =>
      (new FormattedSectionBuilder()..update(updates)).build();

  _$FormattedSection._(
      {this.text, this.fontScale, this.fontStack, this.textColor})
      : super._() {
    if (text == null) {
      throw new BuiltValueNullFieldError('FormattedSection', 'text');
    }
    if (textColor == null) {
      throw new BuiltValueNullFieldError('FormattedSection', 'textColor');
    }
  }

  @override
  Uint8List get data => __data ??= super.data;

  @override
  FormattedSection rebuild(void Function(FormattedSectionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FormattedSectionBuilder toBuilder() =>
      new FormattedSectionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FormattedSection &&
        text == other.text &&
        fontScale == other.fontScale &&
        fontStack == other.fontStack &&
        textColor == other.textColor;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, text.hashCode), fontScale.hashCode), fontStack.hashCode),
        textColor.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FormattedSection')
          ..add('text', text)
          ..add('fontScale', fontScale)
          ..add('fontStack', fontStack)
          ..add('textColor', textColor))
        .toString();
  }
}

class FormattedSectionBuilder
    implements Builder<FormattedSection, FormattedSectionBuilder> {
  _$FormattedSection _$v;

  String _text;
  String get text => _$this._text;
  set text(String text) => _$this._text = text;

  double _fontScale;
  double get fontScale => _$this._fontScale;
  set fontScale(double fontScale) => _$this._fontScale = fontScale;

  ListBuilder<String> _fontStack;
  ListBuilder<String> get fontStack =>
      _$this._fontStack ??= new ListBuilder<String>();
  set fontStack(ListBuilder<String> fontStack) => _$this._fontStack = fontStack;

  int _textColor;
  int get textColor => _$this._textColor;
  set textColor(int textColor) => _$this._textColor = textColor;

  FormattedSectionBuilder();

  FormattedSectionBuilder get _$this {
    if (_$v != null) {
      _text = _$v.text;
      _fontScale = _$v.fontScale;
      _fontStack = _$v.fontStack?.toBuilder();
      _textColor = _$v.textColor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FormattedSection other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$FormattedSection;
  }

  @override
  void update(void Function(FormattedSectionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FormattedSection build() {
    _$FormattedSection _$result;
    try {
      _$result = _$v ??
          new _$FormattedSection._(
              text: text,
              fontScale: fontScale,
              fontStack: _fontStack?.build(),
              textColor: textColor);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'fontStack';
        _fontStack?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'FormattedSection', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
