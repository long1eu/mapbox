// File created by
// Lung Razvan <long1eu>
// on 2019-08-12

import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_driver/driver_extension.dart';
import 'package:flutter_mapbox_gl/flutter_mapbox_gl.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final Completer<String> completer = Completer<String>();
  enableFlutterDriverExtension(handler: (_) => completer.future);
  tearDownAll(() => completer.complete(null));

  const String layerId = 'layer-id';
  const String sourceId = 'source-id';
  final MethodChannel channel = MethodChannel('com.tophap/mapbox_gl');

  group('BackgroundLayer', () {
    final BackgroundLayer layer =
        BackgroundLayer(id: layerId, pattern: 'pattern');

    test('echo', () async {
      final Uint8List data =
          await channel.invokeMethod('echo#layer', layer.dataSource);
      final BackgroundLayer result = Layer.fromProtoData(data);

      expect(result, layer);
    });

    test('update', () async {
      final BackgroundLayer update = layer.copyWith(
        visible: false,
        minZoom: 5.0,
        maxZoom: 15.0,
        color: Colors.green,
        pattern: 'nrettap',
        opacity: 0.5,
        colorTransition:
            TransitionOptions(duration: Duration(milliseconds: 150)),
        patternTransition:
            TransitionOptions(duration: Duration(milliseconds: 150)),
        opacityTransition:
            TransitionOptions(duration: Duration(milliseconds: 150)),
      );
      final Uint8List data = await channel
          .invokeMethod('update#layer', [layer.dataSource, update.dataSource]);
      final BackgroundLayer result = Layer.fromProtoData(data);

      expect(result, update);
    });
  });

  group('CircleLayer', () {
    final CircleLayer layer = CircleLayer(
      id: layerId,
      sourceId: sourceId,
      pitchScale: TranslateAnchor.viewport,
      pitchAlignment: TranslateAnchor.viewport,
    );

    test('echo', () async {
      final Uint8List data =
          await channel.invokeMethod('echo#layer', layer.dataSource);
      final CircleLayer result = Layer.fromProtoData(data);

      expect(result, layer);
    });

    test('update', () async {
      final CircleLayer update = layer.copyWith(
        visible: false,
        minZoom: 5.0,
        maxZoom: 15.0,
        sourceLayer: 'sourceLayer',
        filter: all([
          eq(has('point_count'), true),
          gte(
            toNumber(get("point_count")),
            literal$(Colors.purple.value),
          )
        ]),
        radius: 4.3,
        color: Colors.amber,
        blur: .1,
        opacity: .8,
        translate: Offset(4.5, 4.5),
        translateAnchor: TranslateAnchor.viewport,
        pitchScale: TranslateAnchor.map,
        pitchAlignment: TranslateAnchor.map,
        strokeWidth: 2.1,
        strokeColor: Colors.deepOrangeAccent,
        strokeOpacity: 0.9,
        radiusTransition:
            TransitionOptions(duration: Duration(milliseconds: 150)),
        colorTransition:
            TransitionOptions(duration: Duration(milliseconds: 150)),
        blurTransition:
            TransitionOptions(duration: Duration(milliseconds: 150)),
        opacityTransition:
            TransitionOptions(duration: Duration(milliseconds: 150)),
        translateTransition:
            TransitionOptions(duration: Duration(milliseconds: 150)),
        strokeWidthTransition:
            TransitionOptions(duration: Duration(milliseconds: 150)),
        strokeColorTransition:
            TransitionOptions(duration: Duration(milliseconds: 150)),
        strokeOpacityTransition:
            TransitionOptions(duration: Duration(milliseconds: 150)),
      );

      final Uint8List data = await channel
          .invokeMethod('update#layer', [layer.dataSource, update.dataSource]);
      final CircleLayer result = Layer.fromProtoData(data);

      expect(result, update);
    });
  });

  group('FillLayer', () {
    final FillLayer layer = FillLayer(
      id: layerId,
      sourceId: sourceId,
      outlineColor: Colors.red,
      translate: Offset(0.1, 0.2),
      pattern: 'pattern',
    );

    test('echo', () async {
      final Uint8List data =
          await channel.invokeMethod('echo#layer', layer.dataSource);
      final FillLayer result = Layer.fromProtoData(data);

      expect(result, layer);
    });

    test('update', () async {
      final FillLayer update = layer.copyWith(
        sourceLayer: 'sourceLayer',
        visible: false,
        minZoom: 5.0,
        maxZoom: 15.0,
        filter: all([
          eq(has('point_count'), true),
          gte(
            toNumber(get("point_count")),
            literal$(Colors.purple.value),
          )
        ]),
        antialias: false,
        opacity: 0.8,
        color: Colors.blue,
        outlineColor: Colors.greenAccent,
        translate: Offset(4.2, 6.5),
        translateAnchor: TranslateAnchor.viewport,
        pattern: 'nrettap',
        opacityTransition:
            TransitionOptions(duration: Duration(milliseconds: 150)),
        colorTransition:
            TransitionOptions(duration: Duration(milliseconds: 150)),
        outlineColorTransition:
            TransitionOptions(duration: Duration(milliseconds: 150)),
        translateTransition:
            TransitionOptions(duration: Duration(milliseconds: 150)),
        patternTransition:
            TransitionOptions(duration: Duration(milliseconds: 150)),
      );

      final Uint8List data = await channel
          .invokeMethod('update#layer', [layer.dataSource, update.dataSource]);
      final FillLayer result = Layer.fromProtoData(data);

      assert(result == update);
    });
  });

  group('FillExtrusionLayer', () {
    final FillExtrusionLayer layer = FillExtrusionLayer(
      id: layerId,
      sourceId: sourceId,
      pattern: 'pattern',
    );

    test('echo', () async {
      final Uint8List data =
          await channel.invokeMethod('echo#layer', layer.dataSource);
      final FillExtrusionLayer result = Layer.fromProtoData(data);

      expect(result, layer);
    });

    test('update', () async {
      final FillExtrusionLayer update = layer.copyWith(
        visible: false,
        minZoom: 5.0,
        maxZoom: 15.0,
        sourceLayer: 'sourceLayer',
        filter: all([
          eq(has('point_count'), true),
          gte(
            toNumber(get("point_count")),
            literal$(Colors.purple.value),
          )
        ]),
        opacity: .9,
        color: Colors.amber,
        translate: Offset(7.2, 1.2),
        translateAnchor: TranslateAnchor.viewport,
        pattern: 'nrettap',
        height: 1.2,
        base: 1.2,
        verticalGradient: false,
        opacityTransition:
            TransitionOptions(duration: Duration(milliseconds: 150)),
        colorTransition:
            TransitionOptions(duration: Duration(milliseconds: 150)),
        translateTransition:
            TransitionOptions(duration: Duration(milliseconds: 150)),
        patternTransition:
            TransitionOptions(duration: Duration(milliseconds: 150)),
        heightTransition:
            TransitionOptions(duration: Duration(milliseconds: 150)),
        baseTransition:
            TransitionOptions(duration: Duration(milliseconds: 150)),
      );

      final Uint8List data = await channel
          .invokeMethod('update#layer', [layer.dataSource, update.dataSource]);
      final FillExtrusionLayer result = Layer.fromProtoData(data);

      expect(result, update);
    });
  });

  group('HeatmapLayer', () {
    final HeatmapLayer layer = HeatmapLayer(
      id: layerId,
      sourceId: sourceId,
      color: Colors.green,
    );

    test('echo', () async {
      final Uint8List data =
          await channel.invokeMethod('echo#layer', layer.dataSource);
      final HeatmapLayer result = Layer.fromProtoData(data);

      expect(result, layer);
    });

    test('update', () async {
      final HeatmapLayer update = layer.copyWith(
        visible: false,
        minZoom: 5.0,
        maxZoom: 15.0,
        sourceLayer: 'sourceLayer',
        filter: all([
          eq(has('point_count'), true),
          gte(
            toNumber(get("point_count")),
            literal$(Colors.purple.value),
          )
        ]),
        radius: 3.2,
        weight: 1.5,
        intensity: .5,
        color: Colors.blueAccent,
        opacity: .8,
        radiusTransition:
            TransitionOptions(duration: Duration(milliseconds: 150)),
        intensityTransition:
            TransitionOptions(duration: Duration(milliseconds: 150)),
        opacityTransition:
            TransitionOptions(duration: Duration(milliseconds: 150)),
      );

      final Uint8List data = await channel
          .invokeMethod('update#layer', [layer.dataSource, update.dataSource]);
      final HeatmapLayer result = Layer.fromProtoData(data);

      expect(result, update);
    });
  });

  group('HillshadeLayer', () {
    final HillshadeLayer layer =
        HillshadeLayer(id: layerId, sourceId: sourceId);

    test('echo', () async {
      final Uint8List data =
          await channel.invokeMethod('echo#layer', layer.dataSource);
      final HillshadeLayer result = Layer.fromProtoData(data);

      expect(result, layer);
    });

    test('update', () async {
      final HillshadeLayer update = layer.copyWith(
        visible: false,
        minZoom: 5.0,
        maxZoom: 15.0,
        sourceLayer: 'sourceLayer',
        illuminationDirection: 250.0,
        illuminationAnchor: TranslateAnchor.map,
        exaggeration: 0.6,
        shadowColor: Colors.purple,
        highlightColor: Colors.green,
        accentColor: Colors.deepPurple,
        exaggerationTransition:
            TransitionOptions(duration: Duration(milliseconds: 150)),
        shadowColorTransition:
            TransitionOptions(duration: Duration(milliseconds: 150)),
        highlightColorTransition:
            TransitionOptions(duration: Duration(milliseconds: 150)),
        accentColorTransition:
            TransitionOptions(duration: Duration(milliseconds: 150)),
      );

      final Uint8List data = await channel
          .invokeMethod('update#layer', [layer.dataSource, update.dataSource]);
      final HillshadeLayer result = Layer.fromProtoData(data);

      expect(result.id, update.id);
      expect(result.sourceId, update.sourceId);
      expect(result.visible, update.visible);
      expect(result.minZoom, update.minZoom);
      expect(result.maxZoom, update.maxZoom);
      // todo report that iOS SDK doesn't support setting the sourceLayer
      // expect(result.sourceLayer, update.sourceLayer);
      expect(result.illuminationDirection, update.illuminationDirection);
      expect(result.illuminationAnchor, update.illuminationAnchor);
      expect(result.exaggeration, update.exaggeration);
      expect(result.shadowColor, update.shadowColor);
      expect(result.highlightColor, update.highlightColor);
      expect(result.accentColor, update.accentColor);
      expect(result.exaggerationTransition, update.exaggerationTransition);
      expect(result.shadowColorTransition, update.shadowColorTransition);
      expect(result.highlightColorTransition, update.highlightColorTransition);
      expect(result.accentColorTransition, update.accentColorTransition);
    });
  });

  group('LineLayer', () {
    final LineLayer layer = LineLayer(
      id: layerId,
      sourceId: sourceId,
      color: Colors.green,
      dasharray: [0, 1, 2.3, 4.5],
      pattern: 'pattern',
      gradient: Colors.greenAccent,
    );

    test('echo', () async {
      final Uint8List data =
          await channel.invokeMethod('echo#layer', layer.dataSource);
      final LineLayer result = Layer.fromProtoData(data);

      expect(result, layer);
    });

    test('update', () async {
      final LineLayer update = layer.copyWith(
        visible: false,
        minZoom: 5.0,
        maxZoom: 15.0,
        sourceLayer: 'sourceLayer',
        filter: all([
          eq(has('point_count'), true),
          gte(
            toNumber(get("point_count")),
            literal$(Colors.purple.value),
          )
        ]),
        cap: LineCap.square,
        join: LineJoin.round,
        miterLimit: 2.5,
        roundLimit: 1.15,
        opacity: .9,
        color: const Color(0xFF005500),
        translate: const Offset(1.5, 1.7),
        translateAnchor: TranslateAnchor.viewport,
        width: 1.7,
        gapWidth: 0.4,
        offset: 0.4,
        blur: 0.4,
        dasharray: [0.2, 15, 2.55, 4.45],
        pattern: 'nrettap',
        gradient: Colors.redAccent,
        opacityTransition:
            TransitionOptions(duration: Duration(milliseconds: 150)),
        colorTransition:
            TransitionOptions(duration: Duration(milliseconds: 150)),
        translateTransition:
            TransitionOptions(duration: Duration(milliseconds: 150)),
        widthTransition:
            TransitionOptions(duration: Duration(milliseconds: 150)),
        gapWidthTransition:
            TransitionOptions(duration: Duration(milliseconds: 150)),
        offsetTransition:
            TransitionOptions(duration: Duration(milliseconds: 150)),
        blurTransition:
            TransitionOptions(duration: Duration(milliseconds: 150)),
        dasharrayTransition:
            TransitionOptions(duration: Duration(milliseconds: 150)),
        patternTransition:
            TransitionOptions(duration: Duration(milliseconds: 150)),
      );

      final Uint8List data = await channel
          .invokeMethod('update#layer', [layer.dataSource, update.dataSource]);
      final LineLayer result = Layer.fromProtoData(data);

      expect(result, update);
    });
  });

  group('RasterLayer', () {
    final RasterLayer layer = RasterLayer(id: layerId, sourceId: sourceId);

    test('echo', () async {
      final Uint8List data =
          await channel.invokeMethod('echo#layer', layer.dataSource);
      final RasterLayer result = Layer.fromProtoData(data);

      expect(result, layer);
    });

    test('update', () async {
      final RasterLayer update = layer.copyWith(
        visible: false,
        minZoom: 5.0,
        maxZoom: 15.0,
        sourceLayer: 'sourceLayer',
        opacity: .9,
        hueRotate: 0.5,
        brightnessMin: 0.1,
        brightnessMax: .9,
        saturation: 0.5,
        contrast: 0.5,
        resampling: Resampling.nearest,
        fadeDuration: const Duration(milliseconds: 150),
        opacityTransition:
            TransitionOptions(duration: Duration(milliseconds: 150)),
        hueRotateTransition:
            TransitionOptions(duration: Duration(milliseconds: 150)),
        brightnessMinTransition:
            TransitionOptions(duration: Duration(milliseconds: 150)),
        brightnessMaxTransition:
            TransitionOptions(duration: Duration(milliseconds: 150)),
        saturationTransition:
            TransitionOptions(duration: Duration(milliseconds: 150)),
        contrastTransition:
            TransitionOptions(duration: Duration(milliseconds: 150)),
      );

      final Uint8List data = await channel
          .invokeMethod('update#layer', [layer.dataSource, update.dataSource]);
      final RasterLayer result = Layer.fromProtoData(data);

      expect(result.id, update.id);
      expect(result.sourceId, update.sourceId);
      expect(result.visible, update.visible);
      expect(result.minZoom, update.minZoom);
      expect(result.maxZoom, update.maxZoom);
      // todo report that iOS SDK doesn't support setting the sourceLayer
      // expect(result.sourceLayer, update.sourceLayer);
      expect(result.opacity, update.opacity);
      expect(result.hueRotate, update.hueRotate);
      expect(result.brightnessMin, update.brightnessMin);
      expect(result.brightnessMax, update.brightnessMax);
      expect(result.saturation, update.saturation);
      expect(result.contrast, update.contrast);
      expect(result.resampling, update.resampling);
      expect(result.fadeDuration, update.fadeDuration);
      expect(result.opacityTransition, update.opacityTransition);
      expect(result.hueRotateTransition, update.hueRotateTransition);
      expect(result.brightnessMinTransition, update.brightnessMinTransition);
      expect(result.brightnessMaxTransition, update.brightnessMaxTransition);
      expect(result.saturationTransition, update.saturationTransition);
      expect(result.contrastTransition, update.contrastTransition);
    });
  });

  group('SymbolLayer', () {
    final SymbolLayer layer = SymbolLayer(
      id: layerId,
      sourceId: sourceId,
      iconTextFit: SymbolTextFit.width,
      iconImage: 'iconImage',
      textField: <FormattedSection>[
        FormattedSection(
          text: 'text1',
          fontScale: 1.5,
          fontStack: <String>[
            'Times New Roman',
          ],
          textColor: Colors.purple.value,
        ),
      ],
      textVariableAnchor: <PositionAnchor>[
        PositionAnchor.center,
        PositionAnchor.left,
        PositionAnchor.right,
        PositionAnchor.top,
        PositionAnchor.bottom,
        PositionAnchor.topLeft,
        PositionAnchor.topRight,
        PositionAnchor.bottomLeft,
        PositionAnchor.bottomRight,
      ],
    );

    test('echo', () async {
      final Uint8List data =
          await channel.invokeMethod('echo#layer', layer.dataSource);
      final SymbolLayer result = Layer.fromProtoData(data);

      expect(result.id, layer.id);
      expect(result.sourceId, layer.sourceId);
      expect(result.visible, layer.visible);
      expect(result.minZoom, layer.minZoom);
      expect(result.maxZoom, layer.maxZoom);
      expect(result.sourceLayer, layer.sourceLayer);
      expect(result.filter, layer.filter);
      expect(result.symbolPlacement, layer.symbolPlacement);
      expect(result.symbolSpacing, layer.symbolSpacing);
      expect(result.symbolAvoidEdges, layer.symbolAvoidEdges);
      expect(result.symbolZOrder, layer.symbolZOrder);
      expect(result.iconAllowOverlap, layer.iconAllowOverlap);
      expect(result.iconIgnorePlacement, layer.iconIgnorePlacement);
      expect(result.iconOptional, layer.iconOptional);
      expect(result.iconRotationAlignment, layer.iconRotationAlignment);
      expect(result.iconSize, layer.iconSize);
      expect(result.iconTextFit, layer.iconTextFit);
      expect(result.iconTextFitPadding, layer.iconTextFitPadding);
      expect(result.iconImage, layer.iconImage);
      expect(result.iconRotate, layer.iconRotate);
      expect(result.iconPadding, layer.iconPadding);
      expect(result.iconKeepUpright, layer.iconKeepUpright);
      expect(result.iconOffset, layer.iconOffset);
      expect(result.iconAnchor, layer.iconAnchor);
      expect(result.iconPitchAlignment, layer.iconPitchAlignment);
      expect(result.textPitchAlignment, layer.textPitchAlignment);
      expect(result.textRotationAlignment, layer.textRotationAlignment);
      // todo report that iOS SDK doesn't export the whole format only the text
      // expect(result.textField, layer.textField);
      expect(result.textFont, layer.textFont);
      expect(result.textSize, layer.textSize);
      expect(result.textMaxWidth, layer.textMaxWidth);
      expect(result.textLineHeight, layer.textLineHeight);
      expect(result.textLetterSpacing, layer.textLetterSpacing);
      expect(result.textJustify, layer.textJustify);
      expect(result.textRadialOffset, layer.textRadialOffset);
      expect(result.textVariableAnchor, layer.textVariableAnchor);
      expect(result.textAnchor, layer.textAnchor);
      expect(result.textMaxAngle, layer.textMaxAngle);
      expect(result.textRotate, layer.textRotate);
      expect(result.textPadding, layer.textPadding);
      expect(result.textKeepUpright, layer.textKeepUpright);
      expect(result.textTransform, layer.textTransform);
      expect(result.textOffset, layer.textOffset);
      expect(result.textAllowOverlap, layer.textAllowOverlap);
      expect(result.textIgnorePlacement, layer.textIgnorePlacement);
      expect(result.textOptional, layer.textOptional);
      expect(result.iconOpacity, layer.iconOpacity);
      expect(result.iconColor, layer.iconColor);
      expect(result.iconHaloColor, layer.iconHaloColor);
      expect(result.iconHaloWidth, layer.iconHaloWidth);
      expect(result.iconHaloBlur, layer.iconHaloBlur);
      expect(result.iconTranslate, layer.iconTranslate);
      expect(result.iconTranslateAnchor, layer.iconTranslateAnchor);
      expect(result.textOpacity, layer.textOpacity);
      expect(result.textColor, layer.textColor);
      expect(result.textHaloColor, layer.textHaloColor);
      expect(result.textHaloWidth, layer.textHaloWidth);
      expect(result.textHaloBlur, layer.textHaloBlur);
      expect(result.textTranslate, layer.textTranslate);
      expect(result.textTranslateAnchor, layer.textTranslateAnchor);
      expect(result.iconOpacityTransition, layer.iconOpacityTransition);
      expect(result.iconColorTransition, layer.iconColorTransition);
      expect(result.iconHaloColorTransition, layer.iconHaloColorTransition);
      expect(result.iconHaloWidthTransition, layer.iconHaloWidthTransition);
      expect(result.iconHaloBlurTransition, layer.iconHaloBlurTransition);
      expect(result.iconTranslateTransition, layer.iconTranslateTransition);
      expect(result.textOpacityTransition, layer.textOpacityTransition);
      expect(result.textColorTransition, layer.textColorTransition);
      expect(result.textHaloColorTransition, layer.textHaloColorTransition);
      expect(result.textHaloWidthTransition, layer.textHaloWidthTransition);
      expect(result.textHaloBlurTransition, layer.textHaloBlurTransition);
      expect(result.textTranslateTransition, layer.textTranslateTransition);
    });

    test('update', () async {
      final SymbolLayer update = layer.copyWith(
        visible: false,
        minZoom: 5.0,
        maxZoom: 15.0,
        sourceLayer: 'sourceLayer',
        filter: all([
          eq(has('point_count'), true),
          gte(
            toNumber(get("point_count")),
            literal$(Colors.purple.value),
          )
        ]),
        symbolPlacement: SymbolPlacement.line,
        symbolSpacing: 200.0,
        symbolAvoidEdges: true,
        symbolZOrder: SymbolZOrder.source,
        iconAllowOverlap: true,
        iconIgnorePlacement: true,
        iconOptional: true,
        iconRotationAlignment: SymbolAlignment.viewport,
        iconSize: 1.5,
        iconTextFit: SymbolTextFit.both,
        iconTextFitPadding: EdgeInsets.all(4.0),
        iconImage: 'image',
        iconRotate: 0.4,
        iconPadding: 2.1,
        iconKeepUpright: true,
        iconOffset: Offset(1.4, 45.5),
        iconAnchor: PositionAnchor.bottom,
        iconPitchAlignment: SymbolAlignment.map,
        textPitchAlignment: SymbolAlignment.map,
        textRotationAlignment: SymbolAlignment.map,
        textField: [FormattedSection(text: 'text')],
        textFont: const <String>[
          'Regular Sans Open',
          'Arial Unicode MS Regular'
        ],
        textSize: 18.0,
        textMaxWidth: 10.5,
        textLineHeight: 1.2,
        textLetterSpacing: 0.5,
        textJustify: SymbolTextJustify.center,
        textRadialOffset: 0.5,
        textVariableAnchor: [
          PositionAnchor.right,
        ],
        textAnchor: PositionAnchor.right,
        textMaxAngle: 45.5,
        textRotate: 0.5,
        textPadding: 2.5,
        textKeepUpright: false,
        textTransform: SymbolTextTransform.uppercase,
        textOffset: Offset(4.8, 8.5),
        textAllowOverlap: true,
        textIgnorePlacement: true,
        textOptional: true,
        iconOpacity: 1.4,
        iconColor: const Color(0xFF440044),
        iconHaloColor: const Color(0x45000044),
        iconHaloWidth: 0.4,
        iconHaloBlur: 0.4,
        iconTranslate: Offset(4.5, 9.6),
        iconTranslateAnchor: TranslateAnchor.viewport,
        textOpacity: .9,
        textColor: const Color(0xFF000000),
        textHaloColor: const Color(0x00000000),
        textHaloWidth: 0.4,
        textHaloBlur: 0.4,
        textTranslate: Offset(4.5, 9.6),
        textTranslateAnchor: TranslateAnchor.viewport,
        iconOpacityTransition:
            TransitionOptions(duration: Duration(milliseconds: 150)),
        iconColorTransition:
            TransitionOptions(duration: Duration(milliseconds: 150)),
        iconHaloColorTransition:
            TransitionOptions(duration: Duration(milliseconds: 150)),
        iconHaloWidthTransition:
            TransitionOptions(duration: Duration(milliseconds: 150)),
        iconHaloBlurTransition:
            TransitionOptions(duration: Duration(milliseconds: 150)),
        iconTranslateTransition:
            TransitionOptions(duration: Duration(milliseconds: 150)),
        textOpacityTransition:
            TransitionOptions(duration: Duration(milliseconds: 150)),
        textColorTransition:
            TransitionOptions(duration: Duration(milliseconds: 150)),
        textHaloColorTransition:
            TransitionOptions(duration: Duration(milliseconds: 150)),
        textHaloWidthTransition:
            TransitionOptions(duration: Duration(milliseconds: 150)),
        textHaloBlurTransition:
            TransitionOptions(duration: Duration(milliseconds: 150)),
        textTranslateTransition:
            TransitionOptions(duration: Duration(milliseconds: 150)),
      );

      final Uint8List data = await channel
          .invokeMethod('update#layer', [layer.dataSource, update.dataSource]);
      final SymbolLayer result = Layer.fromProtoData(data);

      expect(result.id, update.id);
      expect(result.sourceId, update.sourceId);
      expect(result.visible, update.visible);
      expect(result.minZoom, update.minZoom);
      expect(result.maxZoom, update.maxZoom);
      expect(result.sourceLayer, update.sourceLayer);
      expect(result.filter, update.filter);
      expect(result.symbolPlacement, update.symbolPlacement);
      expect(result.symbolSpacing, update.symbolSpacing);
      expect(result.symbolAvoidEdges, update.symbolAvoidEdges);
      expect(result.symbolZOrder, update.symbolZOrder);
      expect(result.iconAllowOverlap, update.iconAllowOverlap);
      expect(result.iconIgnorePlacement, update.iconIgnorePlacement);
      expect(result.iconOptional, update.iconOptional);
      expect(result.iconRotationAlignment, update.iconRotationAlignment);
      expect(result.iconSize, update.iconSize);
      expect(result.iconTextFit, update.iconTextFit);
      expect(result.iconTextFitPadding, update.iconTextFitPadding);
      expect(result.iconImage, update.iconImage);
      expect(result.iconRotate, update.iconRotate);
      expect(result.iconPadding, update.iconPadding);
      expect(result.iconKeepUpright, update.iconKeepUpright);
      expect(result.iconOffset, update.iconOffset);
      expect(result.iconAnchor, update.iconAnchor);
      expect(result.iconPitchAlignment, update.iconPitchAlignment);
      expect(result.textPitchAlignment, update.textPitchAlignment);
      expect(result.textRotationAlignment, update.textRotationAlignment);
      // todo report that iOS SDK doesn't export the whole format only the text
      // expect(result.textField, update.textField);
      expect(result.textFont, update.textFont);
      expect(result.textSize, update.textSize);
      expect(result.textMaxWidth, update.textMaxWidth);
      expect(result.textLineHeight, update.textLineHeight);
      expect(result.textLetterSpacing, update.textLetterSpacing);
      expect(result.textJustify, update.textJustify);
      expect(result.textRadialOffset, update.textRadialOffset);
      expect(result.textVariableAnchor, update.textVariableAnchor);
      expect(result.textAnchor, update.textAnchor);
      expect(result.textMaxAngle, update.textMaxAngle);
      expect(result.textRotate, update.textRotate);
      expect(result.textPadding, update.textPadding);
      expect(result.textKeepUpright, update.textKeepUpright);
      expect(result.textTransform, update.textTransform);
      expect(result.textOffset, update.textOffset);
      expect(result.textAllowOverlap, update.textAllowOverlap);
      expect(result.textIgnorePlacement, update.textIgnorePlacement);
      expect(result.textOptional, update.textOptional);
      expect(result.iconOpacity, update.iconOpacity);
      expect(result.iconColor, update.iconColor);
      expect(result.iconHaloColor, update.iconHaloColor);
      expect(result.iconHaloWidth, update.iconHaloWidth);
      expect(result.iconHaloBlur, update.iconHaloBlur);
      expect(result.iconTranslate, update.iconTranslate);
      expect(result.iconTranslateAnchor, update.iconTranslateAnchor);
      expect(result.textOpacity, update.textOpacity);
      expect(result.textColor, update.textColor);
      expect(result.textHaloColor, update.textHaloColor);
      expect(result.textHaloWidth, update.textHaloWidth);
      expect(result.textHaloBlur, update.textHaloBlur);
      expect(result.textTranslate, update.textTranslate);
      expect(result.textTranslateAnchor, update.textTranslateAnchor);
      expect(result.iconOpacityTransition, update.iconOpacityTransition);
      expect(result.iconColorTransition, update.iconColorTransition);
      expect(result.iconHaloColorTransition, update.iconHaloColorTransition);
      expect(result.iconHaloWidthTransition, update.iconHaloWidthTransition);
      expect(result.iconHaloBlurTransition, update.iconHaloBlurTransition);
      expect(result.iconTranslateTransition, update.iconTranslateTransition);
      expect(result.textOpacityTransition, update.textOpacityTransition);
      expect(result.textColorTransition, update.textColorTransition);
      expect(result.textHaloColorTransition, update.textHaloColorTransition);
      expect(result.textHaloWidthTransition, update.textHaloWidthTransition);
      expect(result.textHaloBlurTransition, update.textHaloBlurTransition);
      expect(result.textTranslateTransition, update.textTranslateTransition);
    });
  });
}
