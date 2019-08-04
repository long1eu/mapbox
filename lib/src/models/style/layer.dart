// File created by
// Lung Razvan <long1eu>
// on 2019-08-01

library layer;

import 'dart:typed_data';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:mapbox_gl/src/models/formatted_section.dart';
import 'package:mapbox_gl/src/models/position_anchor.dart';
import 'package:mapbox_gl/src/models/proto/index.dart' as pb;
import 'package:mapbox_gl/src/models/style/line_cap.dart';
import 'package:mapbox_gl/src/models/style/line_join.dart';
import 'package:mapbox_gl/src/models/style/symbol_alignment.dart';
import 'package:mapbox_gl/src/models/style/symbol_placement.dart';
import 'package:mapbox_gl/src/models/style/symbol_text_fit.dart';
import 'package:mapbox_gl/src/models/style/symbol_text_justify.dart';
import 'package:mapbox_gl/src/models/style/symbol_text_transform.dart';
import 'package:mapbox_gl/src/models/style/symbol_z_order.dart';
import 'package:mapbox_gl/src/models/transition_options.dart';
import 'package:mapbox_gl/src/models/translate_anchor.dart';
import 'package:protobuf/protobuf.dart' as pb;

part 'layer.g.dart';

@BuiltValue(instantiable: false)
abstract class LayerModel extends Object {
  String get id;

  bool get visible;

  double get minZoom;

  double get maxZoom;

  pb.GeneratedMessage get proto => null;

  pb.Layer get sourceProto => null;

  @memoized
  Uint8List get data => proto.writeToBuffer();

  @memoized
  Uint8List get sourceData => sourceProto.writeToBuffer();

  LayerModel rebuild(void Function(LayerModelBuilder) updates);

  LayerModelBuilder toBuilder();

  static LayerModel fromProto(pb.Layer proto) {
    switch (proto.whichType()) {
      case pb.Layer_Type.backgroundLayer:
        return BackgroundLayerModel.fromProto(proto.backgroundLayer);
      case pb.Layer_Type.circleLayer:
        return CircleLayerModel.fromProto(proto.circleLayer);
      case pb.Layer_Type.fillLayer:
        return FillLayerModel.fromProto(proto.fillLayer);
      case pb.Layer_Type.fillExtrusionLayer:
        return FillExtrusionLayerModel.fromProto(proto.fillExtrusionLayer);
      case pb.Layer_Type.lineLayer:
        return LineLayerModel.fromProto(proto.lineLayer);
      case pb.Layer_Type.symbolLayer:
        return HeatmapLayerModel.fromProto(proto.heatmapLayer);
      case pb.Layer_Type.hillshadeLayer:
        return HillshadeLayerModel.fromProto(proto.hillshadeLayer);
      case pb.Layer_Type.heatmapLayer:
        return SymbolLayerModel.fromProto(proto.symbolLayer);
      default:
        return null;
    }
  }
}

abstract class BackgroundLayerModel implements LayerModel, Built<BackgroundLayerModel, BackgroundLayerModelBuilder> {
  factory BackgroundLayerModel([void Function(BackgroundLayerModelBuilder) updates]) = _$BackgroundLayerModel;

  factory BackgroundLayerModel.fromProtoData(Uint8List data) {
    return BackgroundLayerModel.fromProto(pb.Layer_Background.fromBuffer(data));
  }

  factory BackgroundLayerModel.fromProto(pb.Layer_Background proto) {
    return _$BackgroundLayerModel((BackgroundLayerModelBuilder b) {
      b
        ..id = proto.id
        ..visible = proto.visible
        ..minZoom = proto.minZoom
        ..maxZoom = proto.maxZoom
        ..color = colorValue_(proto.color)
        ..pattern = proto.hasPattern() ? proto.pattern : null
        ..colorTransition = TransitionOptions.fromProto(proto.colorTransition).toBuilder()
        ..patternTransition = TransitionOptions.fromProto(proto.patternTransition).toBuilder()
        ..opacityTransition = TransitionOptions.fromProto(proto.opacityTransition).toBuilder();
    });
  }

  BackgroundLayerModel._();

  int get color;

  @nullable
  String get pattern;

  TransitionOptions get colorTransition;

  TransitionOptions get patternTransition;

  TransitionOptions get opacityTransition;

  pb.Layer_Background get proto {
    final pb.Layer_Background message = pb.Layer_Background.create()
      ..id = id
      ..visible = visible
      ..minZoom = minZoom
      ..maxZoom = maxZoom
      ..color = color_(color)
      ..pattern = pattern
      ..colorTransition = colorTransition.proto
      ..patternTransition = patternTransition.proto
      ..opacityTransition = opacityTransition.proto;

    if (pattern != null) {
      message.pattern = pattern;
    }
    return message..freeze();
  }

  pb.Layer get sourceProto {
    return pb.Layer.create()
      ..backgroundLayer = proto
      ..freeze();
  }

  @memoized
  Uint8List get data => proto.writeToBuffer();

  @memoized
  Uint8List get sourceData => sourceProto.writeToBuffer();

  static Serializer<BackgroundLayerModel> get serializer => _$backgroundLayerModelSerializer;
}

abstract class CircleLayerModel implements LayerModel, Built<CircleLayerModel, CircleLayerModelBuilder> {
  factory CircleLayerModel([void Function(CircleLayerModelBuilder) updates]) = _$CircleLayerModel;

  factory CircleLayerModel.fromProtoData(Uint8List data) {
    return CircleLayerModel.fromProto(pb.Layer_Circle.fromBuffer(data));
  }

  factory CircleLayerModel.fromProto(pb.Layer_Circle proto) {
    return _$CircleLayerModel((CircleLayerModelBuilder b) {
      b
        ..id = proto.id
        ..sourceId = proto.sourceId
        ..visible = proto.visible
        ..minZoom = proto.minZoom
        ..maxZoom = proto.maxZoom
        ..radius = proto.radius
        ..color = colorValue_(proto.color)
        ..blur = proto.blur
        ..translate = ListBuilder<double>(proto.translate)
        ..translateAnchor = TranslateAnchor.fromProto(proto.translateAnchor)
        ..pitchScale = TranslateAnchor.fromProto(proto.pitchScale)
        ..pitchAlignment = TranslateAnchor.fromProto(proto.pitchAlignment)
        ..strokeWidth = proto.strokeWidth
        ..strokeColor = colorValue_(proto.strokeColor)
        ..radiusTransition = TransitionOptions.fromProto(proto.radiusTransition).toBuilder()
        ..colorTransition = TransitionOptions.fromProto(proto.colorTransition).toBuilder()
        ..blurTransition = TransitionOptions.fromProto(proto.blurTransition).toBuilder()
        ..opacityTransition = TransitionOptions.fromProto(proto.opacityTransition).toBuilder()
        ..translateTransition = TransitionOptions.fromProto(proto.translateTransition).toBuilder()
        ..strokeWidthTransition = TransitionOptions.fromProto(proto.strokeWidthTransition).toBuilder()
        ..strokeColorTransition = TransitionOptions.fromProto(proto.strokeColorTransition).toBuilder()
        ..strokeOpacityTransition = TransitionOptions.fromProto(proto.strokeOpacityTransition).toBuilder();
    });
  }

  CircleLayerModel._();

  String get sourceId;

  double get radius;

  int get color;

  double get blur;

  BuiltList<double> get translate;

  TranslateAnchor get translateAnchor;

  TranslateAnchor get pitchScale;

  TranslateAnchor get pitchAlignment;

  double get strokeWidth;

  int get strokeColor;

  TransitionOptions get radiusTransition;

  TransitionOptions get colorTransition;

  TransitionOptions get blurTransition;

  TransitionOptions get opacityTransition;

  TransitionOptions get translateTransition;

  TransitionOptions get strokeWidthTransition;

  TransitionOptions get strokeColorTransition;

  TransitionOptions get strokeOpacityTransition;

  pb.Layer_Circle get proto {
    return pb.Layer_Circle.create()
      ..id = id
      ..sourceId = sourceId
      ..visible = visible
      ..minZoom = minZoom
      ..maxZoom = maxZoom
      ..radius = radius
      ..color = color_(color)
      ..blur = blur
      ..translate.addAll(translate)
      ..translateAnchor = translateAnchor.proto
      ..pitchScale = pitchScale.proto
      ..pitchAlignment = pitchAlignment.proto
      ..strokeWidth = strokeWidth
      ..strokeColor = color_(strokeColor)
      ..radiusTransition = radiusTransition.proto
      ..colorTransition = colorTransition.proto
      ..blurTransition = blurTransition.proto
      ..opacityTransition = opacityTransition.proto
      ..translateTransition = translateTransition.proto
      ..strokeWidthTransition = strokeWidthTransition.proto
      ..strokeColorTransition = strokeColorTransition.proto
      ..strokeOpacityTransition = strokeOpacityTransition.proto
      ..freeze();
  }

  pb.Layer get sourceProto {
    return pb.Layer.create()
      ..circleLayer = proto
      ..freeze();
  }

  @memoized
  Uint8List get data => proto.writeToBuffer();

  @memoized
  Uint8List get sourceData => sourceProto.writeToBuffer();

  static Serializer<CircleLayerModel> get serializer => _$circleLayerModelSerializer;
}

abstract class FillExtrusionLayerModel
    implements LayerModel, Built<FillExtrusionLayerModel, FillExtrusionLayerModelBuilder> {
  factory FillExtrusionLayerModel([void Function(FillExtrusionLayerModelBuilder) updates]) = _$FillExtrusionLayerModel;

  factory FillExtrusionLayerModel.fromProtoData(Uint8List data) {
    return FillExtrusionLayerModel.fromProto(pb.Layer_FillExtrusion.fromBuffer(data));
  }

  factory FillExtrusionLayerModel.fromProto(pb.Layer_FillExtrusion proto) {
    return _$FillExtrusionLayerModel((FillExtrusionLayerModelBuilder b) {
      b
        ..id = proto.id
        ..sourceId = proto.sourceId
        ..visible = proto.visible
        ..minZoom = proto.minZoom
        ..maxZoom = proto.maxZoom
        ..color = colorValue_(proto.color)
        ..translate = ListBuilder<double>(proto.translate)
        ..translateAnchor = TranslateAnchor.fromProto(proto.translateAnchor)
        ..pattern = proto.pattern
        ..height = proto.height
        ..base = proto.base
        ..verticalGradient = proto.verticalGradient
        ..opacityTransition = TransitionOptions.fromProto(proto.opacityTransition).toBuilder()
        ..colorTransition = TransitionOptions.fromProto(proto.colorTransition).toBuilder()
        ..translateTransition = TransitionOptions.fromProto(proto.translateTransition).toBuilder()
        ..patternTransition = TransitionOptions.fromProto(proto.patternTransition).toBuilder()
        ..heightTransition = TransitionOptions.fromProto(proto.heightTransition).toBuilder()
        ..baseTransition = TransitionOptions.fromProto(proto.baseTransition).toBuilder();
    });
  }

  FillExtrusionLayerModel._();

  String get sourceId;

  int get color;

  BuiltList<double> get translate;

  TranslateAnchor get translateAnchor;

  @nullable
  String get pattern;

  double get height;

  double get base;

  bool get verticalGradient;

  TransitionOptions get opacityTransition;

  TransitionOptions get colorTransition;

  TransitionOptions get translateTransition;

  TransitionOptions get patternTransition;

  TransitionOptions get heightTransition;

  TransitionOptions get baseTransition;

  pb.Layer_FillExtrusion get proto {
    final pb.Layer_FillExtrusion message = pb.Layer_FillExtrusion.create()
      ..id = id
      ..sourceId = proto.sourceId
      ..visible = visible
      ..minZoom = minZoom
      ..maxZoom = maxZoom
      ..color = color_(color)
      ..translate.addAll(translate)
      ..translateAnchor = translateAnchor.proto
      ..height = height
      ..base = base
      ..verticalGradient = verticalGradient
      ..opacityTransition = opacityTransition.proto
      ..colorTransition = colorTransition.proto
      ..translateTransition = translateTransition.proto
      ..patternTransition = patternTransition.proto
      ..heightTransition = heightTransition.proto
      ..baseTransition = baseTransition.proto;

    if (pattern != null) {
      message.pattern = pattern;
    }
    return message..freeze();
  }

  pb.Layer get sourceProto {
    return pb.Layer.create()
      ..fillExtrusionLayer = proto
      ..freeze();
  }

  @memoized
  Uint8List get data => proto.writeToBuffer();

  @memoized
  Uint8List get sourceData => sourceProto.writeToBuffer();

  static Serializer<FillExtrusionLayerModel> get serializer => _$fillExtrusionLayerModelSerializer;
}

abstract class FillLayerModel implements LayerModel, Built<FillLayerModel, FillLayerModelBuilder> {
  factory FillLayerModel([void Function(FillLayerModelBuilder) updates]) = _$FillLayerModel;

  factory FillLayerModel.fromProtoData(Uint8List data) {
    return FillLayerModel.fromProto(pb.Layer_Fill.fromBuffer(data));
  }

  factory FillLayerModel.fromProto(pb.Layer_Fill proto) {
    return _$FillLayerModel((FillLayerModelBuilder b) {
      b
        ..id = proto.id
        ..sourceId = proto.sourceId
        ..visible = proto.visible
        ..minZoom = proto.minZoom
        ..maxZoom = proto.maxZoom
        ..antialias = proto.antialias
        ..color = colorValue_(proto.color)
        ..outlineColor = proto.hasOutlineColor() ? colorValue_(proto.outlineColor) : null
        ..translate = ListBuilder<double>(proto.translate)
        ..translateAnchor = TranslateAnchor.fromProto(proto.translateAnchor)
        ..pattern = proto.hasPattern() ? proto.pattern : null
        ..opacityTransition = TransitionOptions.fromProto(proto.opacityTransition).toBuilder()
        ..colorTransition = TransitionOptions.fromProto(proto.colorTransition).toBuilder()
        ..outlineColorTransition = TransitionOptions.fromProto(proto.outlineColorTransition).toBuilder()
        ..translateTransition = TransitionOptions.fromProto(proto.translateTransition).toBuilder()
        ..patternTransition = TransitionOptions.fromProto(proto.patternTransition).toBuilder();
    });
  }

  FillLayerModel._();

  String get sourceId;

  bool get antialias;

  int get color;

  @nullable
  int get outlineColor;

  BuiltList<double> get translate;

  TranslateAnchor get translateAnchor;

  @nullable
  String get pattern;

  TransitionOptions get opacityTransition;

  TransitionOptions get colorTransition;

  TransitionOptions get outlineColorTransition;

  TransitionOptions get translateTransition;

  TransitionOptions get patternTransition;

  pb.Layer_Fill get proto {
    assert(translate.length == 2);
    final pb.Layer_Fill message = pb.Layer_Fill.create()
      ..id = id
      ..sourceId = sourceId
      ..visible = visible
      ..minZoom = minZoom
      ..maxZoom = maxZoom
      ..antialias = antialias
      ..color = color_(color)
      ..translate.addAll(translate)
      ..translateAnchor = translateAnchor.proto
      ..opacityTransition = opacityTransition.proto
      ..colorTransition = colorTransition.proto
      ..outlineColorTransition = outlineColorTransition.proto
      ..translateTransition = translateTransition.proto
      ..patternTransition = patternTransition.proto;

    if (outlineColor != null) {
      message.outlineColor = color_(outlineColor);
    }
    if (pattern != null) {
      message.pattern = pattern;
    }

    return message..freeze();
  }

  pb.Layer get sourceProto {
    return pb.Layer.create()
      ..fillLayer = proto
      ..freeze();
  }

  @memoized
  Uint8List get data => proto.writeToBuffer();

  @memoized
  Uint8List get sourceData => sourceProto.writeToBuffer();

  static Serializer<FillLayerModel> get serializer => _$fillLayerModelSerializer;
}

abstract class HeatmapLayerModel implements LayerModel, Built<HeatmapLayerModel, HeatmapLayerModelBuilder> {
  factory HeatmapLayerModel([void Function(HeatmapLayerModelBuilder) updates]) = _$HeatmapLayerModel;

  factory HeatmapLayerModel.fromProtoData(Uint8List data) {
    return HeatmapLayerModel.fromProto(pb.Layer_Heatmap.fromBuffer(data));
  }

  factory HeatmapLayerModel.fromProto(pb.Layer_Heatmap proto) {
    return _$HeatmapLayerModel((HeatmapLayerModelBuilder b) {
      b
        ..id = proto.id
        ..sourceId = proto.sourceId
        ..visible = proto.visible
        ..minZoom = proto.minZoom
        ..maxZoom = proto.maxZoom
        ..radius = proto.radius
        ..weight = proto.weight
        ..intensity = proto.intensity
        ..color = colorValue_(proto.color)
        ..radiusTransition = TransitionOptions.fromProto(proto.radiusTransition).toBuilder()
        ..intensityTransition = TransitionOptions.fromProto(proto.intensityTransition).toBuilder()
        ..opacityTransition = TransitionOptions.fromProto(proto.opacityTransition).toBuilder();
    });
  }

  HeatmapLayerModel._();

  String get sourceId;

  double get radius;

  double get weight;

  double get intensity;

  int get color;

  TransitionOptions get radiusTransition;

  TransitionOptions get intensityTransition;

  TransitionOptions get opacityTransition;

  pb.Layer_Heatmap get proto {
    return pb.Layer_Heatmap.create()
      ..id = id
      ..sourceId = sourceId
      ..visible = visible
      ..minZoom = minZoom
      ..maxZoom = maxZoom
      ..radius = radius
      ..weight = weight
      ..intensity = intensity
      ..color = color_(color)
      ..radiusTransition = radiusTransition.proto
      ..intensityTransition = intensityTransition.proto
      ..opacityTransition = opacityTransition.proto
      ..freeze();
  }

  pb.Layer get sourceProto {
    return pb.Layer.create()
      ..heatmapLayer = proto
      ..freeze();
  }

  @memoized
  Uint8List get data => proto.writeToBuffer();

  @memoized
  Uint8List get sourceData => sourceProto.writeToBuffer();

  static Serializer<HeatmapLayerModel> get serializer => _$heatmapLayerModelSerializer;
}

abstract class HillshadeLayerModel implements LayerModel, Built<HillshadeLayerModel, HillshadeLayerModelBuilder> {
  factory HillshadeLayerModel([void Function(HillshadeLayerModelBuilder) updates]) = _$HillshadeLayerModel;

  factory HillshadeLayerModel.fromProtoData(Uint8List data) {
    return HillshadeLayerModel.fromProto(pb.Layer_Hillshade.fromBuffer(data));
  }

  factory HillshadeLayerModel.fromProto(pb.Layer_Hillshade proto) {
    return _$HillshadeLayerModel((HillshadeLayerModelBuilder b) {
      b
        ..id = proto.id
        ..sourceId = proto.sourceId
        ..visible = proto.visible
        ..minZoom = proto.minZoom
        ..maxZoom = proto.maxZoom
        ..illuminationDirection = proto.illuminationDirection
        ..illuminationAnchor = TranslateAnchor.fromProto(proto.illuminationAnchor)
        ..exaggeration = proto.exaggeration
        ..shadowColor = colorValue_(proto.shadowColor)
        ..highlightColor = colorValue_(proto.highlightColor)
        ..accentColor = colorValue_(proto.accentColor)
        ..exaggerationTransition = TransitionOptions.fromProto(proto.exaggerationTransition).toBuilder()
        ..shadowColorTransition = TransitionOptions.fromProto(proto.shadowColorTransition).toBuilder()
        ..highlightColorTransition = TransitionOptions.fromProto(proto.highlightColorTransition).toBuilder()
        ..accentColorTransition = TransitionOptions.fromProto(proto.accentColorTransition).toBuilder();
    });
  }

  HillshadeLayerModel._();

  String get sourceId;

  double get illuminationDirection;

  TranslateAnchor get illuminationAnchor;

  double get exaggeration;

  int get shadowColor;

  int get highlightColor;

  int get accentColor;

  TransitionOptions get exaggerationTransition;

  TransitionOptions get shadowColorTransition;

  TransitionOptions get highlightColorTransition;

  TransitionOptions get accentColorTransition;

  pb.Layer_Hillshade get proto {
    return pb.Layer_Hillshade.create()
      ..id = id
      ..sourceId = sourceId
      ..visible = visible
      ..minZoom = minZoom
      ..maxZoom = maxZoom
      ..illuminationDirection = illuminationDirection
      ..illuminationAnchor = illuminationAnchor.proto
      ..exaggeration = exaggeration
      ..shadowColor = color_(shadowColor)
      ..highlightColor = color_(highlightColor)
      ..accentColor = color_(accentColor)
      ..exaggerationTransition = exaggerationTransition.proto
      ..shadowColorTransition = shadowColorTransition.proto
      ..highlightColorTransition = highlightColorTransition.proto
      ..accentColorTransition = accentColorTransition.proto
      ..freeze();
  }

  pb.Layer get sourceProto {
    return pb.Layer.create()
      ..hillshadeLayer = proto
      ..freeze();
  }

  @memoized
  Uint8List get data => proto.writeToBuffer();

  @memoized
  Uint8List get sourceData => sourceProto.writeToBuffer();

  static Serializer<HillshadeLayerModel> get serializer => _$hillshadeLayerModelSerializer;
}

abstract class LineLayerModel implements LayerModel, Built<LineLayerModel, LineLayerModelBuilder> {
  factory LineLayerModel([void Function(LineLayerModelBuilder) updates]) = _$LineLayerModel;

  factory LineLayerModel.fromProtoData(Uint8List data) {
    return LineLayerModel.fromProto(pb.Layer_Line.fromBuffer(data));
  }

  factory LineLayerModel.fromProto(pb.Layer_Line proto) {
    return _$LineLayerModel((LineLayerModelBuilder b) {
      b
        ..id = proto.id
        ..sourceId = proto.sourceId
        ..visible = proto.visible
        ..minZoom = proto.minZoom
        ..maxZoom = proto.maxZoom
        ..cap = LineCap.fromProto(proto.cap)
        ..join = LineJoin.fromProto(proto.join)
        ..miterLimit = proto.miterLimit
        ..roundLimit = proto.roundLimit
        ..color = colorValue_(proto.color)
        ..translate = ListBuilder<double>(proto.translate)
        ..translateAnchor = TranslateAnchor.fromProto(proto.translateAnchor)
        ..width = proto.width
        ..gapWidth = proto.gapWidth
        ..offset = proto.offset
        ..blur = proto.blur
        ..dasharray = proto.dasharray.isNotEmpty ? ListBuilder<double>(proto.dasharray) : null
        ..pattern = proto.hasPattern() ? proto.pattern : null
        ..gradient = proto.hasGradient() ? proto.gradient : null
        ..opacityTransition = TransitionOptions.fromProto(proto.opacityTransition).toBuilder()
        ..colorTransition = TransitionOptions.fromProto(proto.colorTransition).toBuilder()
        ..translateTransition = TransitionOptions.fromProto(proto.translateTransition).toBuilder()
        ..widthTransition = TransitionOptions.fromProto(proto.widthTransition).toBuilder()
        ..gapWidthTransition = TransitionOptions.fromProto(proto.gapWidthTransition).toBuilder()
        ..offsetTransition = TransitionOptions.fromProto(proto.offsetTransition).toBuilder()
        ..blurTransition = TransitionOptions.fromProto(proto.blurTransition).toBuilder()
        ..dasharrayTransition = TransitionOptions.fromProto(proto.dasharrayTransition).toBuilder()
        ..patternTransition = TransitionOptions.fromProto(proto.patternTransition).toBuilder();
    });
  }

  LineLayerModel._();

  String get sourceId;

  LineCap get cap;

  LineJoin get join;

  double get miterLimit;

  double get roundLimit;

  int get color;

  BuiltList<double> get translate;

  TranslateAnchor get translateAnchor;

  double get width;

  double get gapWidth;

  double get offset;

  double get blur;

  @nullable
  BuiltList<double> get dasharray;

  @nullable
  String get pattern;

  @nullable
  int get gradient;

  TransitionOptions get opacityTransition;

  TransitionOptions get colorTransition;

  TransitionOptions get translateTransition;

  TransitionOptions get widthTransition;

  TransitionOptions get gapWidthTransition;

  TransitionOptions get offsetTransition;

  TransitionOptions get blurTransition;

  TransitionOptions get dasharrayTransition;

  TransitionOptions get patternTransition;

  pb.Layer_Line get proto {
    final pb.Layer_Line message = pb.Layer_Line.create()
      ..id = id
      ..sourceId = sourceId
      ..visible = visible
      ..minZoom = minZoom
      ..maxZoom = maxZoom
      ..cap = cap.proto
      ..join = join.proto
      ..miterLimit = miterLimit
      ..roundLimit = roundLimit
      ..color = color_(color)
      ..translate.addAll(translate)
      ..translateAnchor = translateAnchor.proto
      ..width = width
      ..gapWidth = gapWidth
      ..offset = offset
      ..blur = blur
      ..opacityTransition = opacityTransition.proto
      ..colorTransition = colorTransition.proto
      ..translateTransition = translateTransition.proto
      ..widthTransition = widthTransition.proto
      ..gapWidthTransition = gapWidthTransition.proto
      ..offsetTransition = offsetTransition.proto
      ..blurTransition = blurTransition.proto
      ..dasharrayTransition = dasharrayTransition.proto
      ..patternTransition = patternTransition.proto;

    if (dasharray != null) {
      assert(dasharray.every((it) => it > 0));
      message.dasharray.addAll(dasharray);
    }
    if (pattern != null) {
      message.pattern = pattern;
    }
    if (gradient != null) {
      message.gradient = gradient;
    }

    return message..freeze();
  }

  pb.Layer get sourceProto {
    return pb.Layer.create()
      ..lineLayer = proto
      ..freeze();
  }

  @memoized
  Uint8List get data => proto.writeToBuffer();

  @memoized
  Uint8List get sourceData => sourceProto.writeToBuffer();

  static Serializer<LineLayerModel> get serializer => _$lineLayerModelSerializer;
}

abstract class SymbolLayerModel implements LayerModel, Built<SymbolLayerModel, SymbolLayerModelBuilder> {
  factory SymbolLayerModel([void Function(SymbolLayerModelBuilder) updates]) = _$SymbolLayerModel;

  factory SymbolLayerModel.fromProtoData(Uint8List data) {
    return SymbolLayerModel.fromProto(pb.Layer_Symbol.fromBuffer(data));
  }

  factory SymbolLayerModel.fromProto(pb.Layer_Symbol proto) {
    return _$SymbolLayerModel((SymbolLayerModelBuilder b) {
      b
        ..id = proto.id
        ..sourceId = proto.sourceId
        ..visible = proto.visible
        ..minZoom = proto.minZoom
        ..maxZoom = proto.maxZoom
        ..symbolPlacement = SymbolPlacement.fromProto(proto.symbolPlacement)
        ..symbolSpacing = proto.symbolSpacing
        ..symbolAvoidEdges = proto.symbolAvoidEdges
        ..symbolZOrder = SymbolZOrder.fromProto(proto.symbolZOrder)
        ..iconAllowOverlap = proto.iconAllowOverlap
        ..iconIgnorePlacement = proto.iconIgnorePlacement
        ..iconOptional = proto.iconOptional
        ..iconRotationAlignment = SymbolAlignment.fromProto(proto.iconRotationAlignment)
        ..iconSize = proto.iconSize
        ..iconTextFit = SymbolTextFit.fromProto(proto.iconTextFit)
        ..iconTextFitPadding = ListBuilder<double>(proto.iconTextFitPadding)
        ..iconImage = proto.iconImage
        ..iconRotate = proto.iconRotate
        ..iconPadding = proto.iconPadding
        ..iconKeepUpright = proto.iconKeepUpright
        ..iconOffset = ListBuilder<double>(proto.iconOffset)
        ..iconAnchor = PositionAnchor.fromProto(proto.iconAnchor)
        ..iconPitchAlignment = SymbolAlignment.fromProto(proto.iconPitchAlignment)
        ..textPitchAlignment = SymbolAlignment.fromProto(proto.textPitchAlignment)
        ..textRotationAlignment = SymbolAlignment.fromProto(proto.textRotationAlignment)
        ..textField = proto.textField.isNotEmpty
            ? ListBuilder<FormattedSection>(proto.textField.map((it) => FormattedSection.fromProto(it)))
            : null
        ..textFont = ListBuilder<String>(proto.textFont)
        ..textSize = proto.textSize
        ..textMaxWidth = proto.textMaxWidth
        ..textLineHeight = proto.textLineHeight
        ..textLetterSpacing = proto.textLetterSpacing
        ..textJustify = SymbolTextJustify.fromProto(proto.textJustify)
        ..textRadialOffset = proto.textRadialOffset
        ..textVariableAnchor = proto.textVariableAnchor.isNotEmpty
            ? ListBuilder<PositionAnchor>(proto.textVariableAnchor.map((it) => PositionAnchor.fromProto(it)))
            : null
        ..textAnchor = PositionAnchor.fromProto(proto.textAnchor)
        ..textMaxAngle = proto.textMaxAngle
        ..textRotate = proto.textRotate
        ..textPadding = proto.textPadding
        ..textKeepUpright = proto.textKeepUpright
        ..textTransform = SymbolTextTransform.fromProto(proto.textTransform)
        ..textOffset = ListBuilder<double>(proto.textOffset)
        ..textAllowOverlap = proto.textAllowOverlap
        ..textIgnorePlacement = proto.textIgnorePlacement
        ..textOptional = proto.textOptional
        ..iconColor = colorValue_(proto.iconColor)
        ..iconHaloColor = colorValue_(proto.iconHaloColor)
        ..iconHaloWidth = proto.iconHaloWidth
        ..iconHaloBlur = proto.iconHaloBlur
        ..iconTranslate = ListBuilder<double>(proto.iconTranslate)
        ..iconTranslateAnchor = TranslateAnchor.fromProto(proto.iconTranslateAnchor)
        ..textColor = colorValue_(proto.textColor)
        ..textHaloColor = colorValue_(proto.textHaloColor)
        ..textHaloWidth = proto.textHaloWidth
        ..textHaloBlur = proto.textHaloBlur
        ..textTranslate = ListBuilder<double>(proto.textTranslate)
        ..textTranslateAnchor = TranslateAnchor.fromProto(proto.textTranslateAnchor)
        ..iconOpacityTransition = TransitionOptions.fromProto(proto.iconOpacityTransition).toBuilder()
        ..iconColorTransition = TransitionOptions.fromProto(proto.iconColorTransition).toBuilder()
        ..iconHaloColorTransition = TransitionOptions.fromProto(proto.iconHaloColorTransition).toBuilder()
        ..iconHaloWidthTransition = TransitionOptions.fromProto(proto.iconHaloWidthTransition).toBuilder()
        ..iconHaloBlurTransition = TransitionOptions.fromProto(proto.iconHaloBlurTransition).toBuilder()
        ..iconTranslateTransition = TransitionOptions.fromProto(proto.iconTranslateTransition).toBuilder()
        ..textOpacityTransition = TransitionOptions.fromProto(proto.textOpacityTransition).toBuilder()
        ..textColorTransition = TransitionOptions.fromProto(proto.textColorTransition).toBuilder()
        ..textHaloColorTransition = TransitionOptions.fromProto(proto.textHaloColorTransition).toBuilder()
        ..textHaloWidthTransition = TransitionOptions.fromProto(proto.textHaloWidthTransition).toBuilder()
        ..textHaloBlurTransition = TransitionOptions.fromProto(proto.textHaloBlurTransition).toBuilder()
        ..textTranslateTransition = TransitionOptions.fromProto(proto.textTranslateTransition).toBuilder();
    });
  }

  SymbolLayerModel._();

  String get sourceId;

  SymbolPlacement get symbolPlacement;

  double get symbolSpacing;

  bool get symbolAvoidEdges;

  SymbolZOrder get symbolZOrder;

  bool get iconAllowOverlap;

  bool get iconIgnorePlacement;

  bool get iconOptional;

  SymbolAlignment get iconRotationAlignment;

  double get iconSize;

  SymbolTextFit get iconTextFit;

  BuiltList<double> get iconTextFitPadding;

  @nullable
  String get iconImage;

  double get iconRotate;

  double get iconPadding;

  bool get iconKeepUpright;

  BuiltList<double> get iconOffset;

  PositionAnchor get iconAnchor;

  SymbolAlignment get iconPitchAlignment;

  SymbolAlignment get textPitchAlignment;

  SymbolAlignment get textRotationAlignment;

  @nullable
  BuiltList<FormattedSection> get textField;

  BuiltList<String> get textFont;

  double get textSize;

  double get textMaxWidth;

  double get textLineHeight;

  double get textLetterSpacing;

  SymbolTextJustify get textJustify;

  double get textRadialOffset;

  @nullable
  BuiltList<PositionAnchor> get textVariableAnchor;

  PositionAnchor get textAnchor;

  double get textMaxAngle;

  double get textRotate;

  double get textPadding;

  bool get textKeepUpright;

  SymbolTextTransform get textTransform;

  BuiltList<double> get textOffset;

  bool get textAllowOverlap;

  bool get textIgnorePlacement;

  bool get textOptional;

  int get iconColor;

  int get iconHaloColor;

  double get iconHaloWidth;

  double get iconHaloBlur;

  BuiltList<double> get iconTranslate;

  TranslateAnchor get iconTranslateAnchor;

  int get textColor;

  int get textHaloColor;

  double get textHaloWidth;

  double get textHaloBlur;

  BuiltList<double> get textTranslate;

  TranslateAnchor get textTranslateAnchor;

  TransitionOptions get iconOpacityTransition;

  TransitionOptions get iconColorTransition;

  TransitionOptions get iconHaloColorTransition;

  TransitionOptions get iconHaloWidthTransition;

  TransitionOptions get iconHaloBlurTransition;

  TransitionOptions get iconTranslateTransition;

  TransitionOptions get textOpacityTransition;

  TransitionOptions get textColorTransition;

  TransitionOptions get textHaloColorTransition;

  TransitionOptions get textHaloWidthTransition;

  TransitionOptions get textHaloBlurTransition;

  TransitionOptions get textTranslateTransition;

  pb.Layer_Symbol get proto {
    assert(iconTextFitPadding.length == 4);
    assert(iconOffset.length == 2);
    assert(textOffset.length == 2);
    assert(iconTranslate.length == 2);
    assert(textTranslate.length == 2);

    final pb.Layer_Symbol message = pb.Layer_Symbol.create()
      ..id = id
      ..sourceId = sourceId
      ..visible = visible
      ..minZoom = minZoom
      ..maxZoom = maxZoom
      ..symbolPlacement = symbolPlacement.proto
      ..symbolSpacing = symbolSpacing
      ..symbolAvoidEdges = symbolAvoidEdges
      ..symbolZOrder = symbolZOrder.proto
      ..iconAllowOverlap = iconAllowOverlap
      ..iconIgnorePlacement = iconIgnorePlacement
      ..iconOptional = iconOptional
      ..iconRotationAlignment = iconRotationAlignment.proto
      ..iconSize = iconSize
      ..iconTextFit = iconTextFit.proto
      ..iconTextFitPadding.addAll(iconTextFitPadding)
      ..iconRotate = iconRotate
      ..iconPadding = iconPadding
      ..iconKeepUpright = iconKeepUpright
      ..iconOffset.addAll(iconOffset)
      ..iconAnchor = iconAnchor.proto
      ..iconPitchAlignment = iconPitchAlignment.proto
      ..textPitchAlignment = textPitchAlignment.proto
      ..textRotationAlignment = textRotationAlignment.proto
      ..textFont.addAll(textFont)
      ..textSize = textSize
      ..textMaxWidth = textMaxWidth
      ..textLineHeight = textLineHeight
      ..textLetterSpacing = textLetterSpacing
      ..textJustify = textJustify.proto
      ..textRadialOffset = textRadialOffset
      ..textAnchor = textAnchor.proto
      ..textMaxAngle = textMaxAngle
      ..textRotate = textRotate
      ..textPadding = textPadding
      ..textKeepUpright = textKeepUpright
      ..textTransform = textTransform.proto
      ..textOffset.addAll(textOffset)
      ..textAllowOverlap = textAllowOverlap
      ..textIgnorePlacement = textIgnorePlacement
      ..textOptional = textOptional
      ..iconColor = color_(iconColor)
      ..iconHaloColor = color_(iconHaloColor)
      ..iconHaloWidth = iconHaloWidth
      ..iconHaloBlur = iconHaloBlur
      ..iconTranslate.addAll(iconTranslate)
      ..iconTranslateAnchor = iconTranslateAnchor.proto
      ..textColor = color_(textColor)
      ..textHaloColor = color_(textHaloColor)
      ..textHaloWidth = textHaloWidth
      ..textHaloBlur = textHaloBlur
      ..textTranslate.addAll(textTranslate)
      ..textTranslateAnchor = textTranslateAnchor.proto
      ..iconOpacityTransition = iconOpacityTransition.proto
      ..iconColorTransition = iconColorTransition.proto
      ..iconHaloColorTransition = iconHaloColorTransition.proto
      ..iconHaloWidthTransition = iconHaloWidthTransition.proto
      ..iconHaloBlurTransition = iconHaloBlurTransition.proto
      ..iconTranslateTransition = iconTranslateTransition.proto
      ..textOpacityTransition = textOpacityTransition.proto
      ..textColorTransition = textColorTransition.proto
      ..textHaloColorTransition = textHaloColorTransition.proto
      ..textHaloWidthTransition = textHaloWidthTransition.proto
      ..textHaloBlurTransition = textHaloBlurTransition.proto
      ..textTranslateTransition = textTranslateTransition.proto;

    if (iconImage != null) {
      message.iconImage = iconImage;
    }
    if (textField != null) {
      message.textField.addAll(textField.map((it) => it.proto));
    }
    if (textVariableAnchor != null) {
      message.textVariableAnchor.addAll(textVariableAnchor.map((it) => it.proto));
    }

    return message..freeze();
  }

  pb.Layer get sourceProto {
    return pb.Layer.create()
      ..symbolLayer = proto
      ..freeze();
  }

  @memoized
  Uint8List get data => proto.writeToBuffer();

  @memoized
  Uint8List get sourceData => sourceProto.writeToBuffer();

  static Serializer<SymbolLayerModel> get serializer => _$symbolLayerModelSerializer;
}
