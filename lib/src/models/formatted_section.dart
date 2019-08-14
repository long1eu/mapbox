// File created by
// Lung Razvan <long1eu>
// on 2019-08-01

library formatted_section;

import 'dart:typed_data';
import 'dart:ui';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_mapbox_gl/flutter_mapbox_gl.dart';
import 'package:flutter_mapbox_gl/src/models/proto/index.dart' as pb;
import 'package:meta/meta.dart';

part 'formatted_section.g.dart';

abstract class FormattedSection
    implements Built<FormattedSection, FormattedSectionBuilder> {
  factory FormattedSection({
    @required String text,
    double fontScale,
    List<String> fontStack,
    int textColor = 0xFF000000,
  }) {
    assert(text != null && text.isNotEmpty);
    assert(textColor != null);

    return _$FormattedSection((FormattedSectionBuilder b) {
      b
        ..text = text
        ..fontScale = fontScale
        ..fontStack = fontStack != null ? ListBuilder<String>(fontStack) : null
        ..textColor = textColor;
    });
  }

  factory FormattedSection.fromProtoData(Uint8List data) {
    return FormattedSection.fromProto(pb.FormattedSection.fromBuffer(data));
  }

  factory FormattedSection.fromProto(pb.FormattedSection proto) {
    return _$FormattedSection((FormattedSectionBuilder b) {
      b
        ..text = proto.text
        ..fontScale = proto.hasFontScale() ? proto.fontScale.value : null
        ..fontStack = ListBuilder<String>(proto.fontStack)
        ..textColor = colorValue_(proto.textColor);
    });
  }

  FormattedSection._();

  String get text;

  @nullable
  double get fontScale;

  @nullable
  BuiltList<String> get fontStack;

  int get textColor;

  Color get textColorValue => Color(textColor);

  pb.FormattedSection get proto {
    final pb.FormattedSection message = pb.FormattedSection.create()
      ..text = text
      ..textColor = color_(textColor);

    if (fontScale != null) {
      message.fontScale = (pb.DoubleValue()
        ..value = fontScale
        ..freeze());
    }
    if (fontStack != null) {
      message.fontStack.addAll(fontStack);
    }

    return message..freeze();
  }

  @memoized
  Uint8List get data => proto.writeToBuffer();

  static Serializer<FormattedSection> get serializer =>
      _$formattedSectionSerializer;

  FormatEntry get expression {
    return formatEntry(
      text,
      [
        if (fontScale != null) formatFontScale(fontScale),
        if (fontStack != null)
          formatFontStackExpresion(literalList(fontStack.toList())),
        formatTextColor(textColor),
      ],
    );
  }
}
