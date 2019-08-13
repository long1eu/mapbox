import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mapbox_gl/flutter_mapbox_gl.dart';
import 'package:mapbox_gl_example/src/page.dart';
import 'package:mapbox_gl_example/src/pages/add_wms_source_page.dart';
import 'package:mapbox_gl_example/src/pages/adjust_layer_opacity.dart';
import 'package:mapbox_gl_example/src/pages/animated_marker.dart';
import 'package:mapbox_gl_example/src/pages/geojson_layer_in_stack_page.dart';
import 'package:mapbox_gl_example/src/pages/hillshade_layer_page.dart';
import 'package:mapbox_gl_example/src/pages/image_source_time_lapse_page.dart';
import 'package:mapbox_gl_example/src/pages/move_camera.dart';
import 'package:mapbox_gl_example/src/pages/scrolling_map.dart';
import 'package:mapbox_gl_example/src/pages/space_station_location.dart';
import 'package:mapbox_gl_example/src/pages/style_from_file_page.dart';
import 'package:mapbox_gl_example/src/pages/vector_source.dart';

final List<Page> _allPages = <Page>[
  StyleFromFilePage(),
  HillshadeLayerPage(),
  GeoJsonLayerInStackPage(),
  VectorSourcePage(),
  AddWmsSourcePage(),
  ImageSourceTimeLapsePage(),
  AdjustLayerOpacityPage(),
  AnimatedMarkerPage(),
  SpaceStationLocation(),
  //ColorSwitcher(),
  MoveCameraPage(),
  ScrollingMapPage(),
];

class MapsDemo extends StatelessWidget {
  void _pushPage(BuildContext context, Page page) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (_) {
          return Scaffold(
            appBar: AppBar(title: Text(page.title)),
            body: page,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MapboxMaps examples')),
      body: ListView.builder(
        itemCount: _allPages.length,
        itemBuilder: (_, int index) {
          final Page page = _allPages[index];
          return ListTile(
            leading: page.leading,
            title: Text(page.title),
            subtitle: page.info.isNotEmpty ? Text(page.info) : null,
            onTap: () => _pushPage(context, page),
          );
        },
      ),
    );
  }
}

void main() async {
  const String layerId = 'layer-id';
  const String sourceId = 'source-id';
  final MethodChannel channel = MethodChannel('com.tophap/mapbox_gl');

  final BackgroundLayer background = BackgroundLayer(id: layerId, pattern: 'pattern');
  Uint8List data = await channel.invokeMethod('echo#layer', background.dataSource);
  assert(Layer.fromProtoData(data) == background);

  final CircleLayer circle = CircleLayer(
    id: layerId,
    sourceId: sourceId,
    pitchScale: TranslateAnchor.viewport,
    pitchAlignment: TranslateAnchor.viewport,
  );
  data = await channel.invokeMethod('echo#layer', circle.dataSource);
  assert(Layer.fromProtoData(data) == circle);

  final FillLayer fill = FillLayer(
    id: layerId,
    sourceId: sourceId,
    outlineColor: Colors.red,
    translate: Offset(0.1, 0.2),
    pattern: 'pattern',
  );
  data = await channel.invokeMethod('echo#layer', fill.dataSource);
  assert(Layer.fromProtoData(data) == fill);

  final FillExtrusionLayer fillExtrusion = FillExtrusionLayer(
    id: layerId,
    sourceId: sourceId,
    pattern: 'pattern',
  );
  data = await channel.invokeMethod('echo#layer', fillExtrusion.dataSource);
  assert(Layer.fromProtoData(data) == fillExtrusion);

  final HeatmapLayer heatmap = HeatmapLayer(
    id: layerId,
    sourceId: sourceId,
    color: Colors.green,
  );
  data = await channel.invokeMethod('echo#layer', heatmap.dataSource);
  assert(Layer.fromProtoData(data) == heatmap);

  final HillshadeLayer hillshade = HillshadeLayer(id: layerId, sourceId: sourceId);
  data = await channel.invokeMethod('echo#layer', hillshade.dataSource);
  assert(Layer.fromProtoData(data) == hillshade);

  final LineLayer line = LineLayer(
    id: layerId,
    sourceId: sourceId,
    color: Colors.green,
    dasharray: [0, 1, 2.3, 4.5],
    pattern: 'pattern',
    gradient: Colors.greenAccent,
  );
  data = await channel.invokeMethod('echo#layer', line.dataSource);
  assert(Layer.fromProtoData(data) == line);

  final RasterLayer raster = RasterLayer(id: layerId, sourceId: sourceId);
  data = await channel.invokeMethod('echo#layer', raster.dataSource);
  assert(Layer.fromProtoData(data) == raster);

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
  data = await channel.invokeMethod('echo#layer', layer.dataSource);
  SymbolLayer result = Layer.fromProtoData(data);

  if (result.id != layer.id) print('id: ${result.id}/${layer.id}');
  if (result.sourceId != layer.sourceId) print('sourceId: ${result.sourceId}/${layer.sourceId}');
  if (result.visible != layer.visible) print('visible: ${result.visible}/${layer.visible}');
  if (result.minZoom != layer.minZoom) print('minZoom: ${result.minZoom}/${layer.minZoom}');
  if (result.maxZoom != layer.maxZoom) print('maxZoom: ${result.maxZoom}/${layer.maxZoom}');
  if (result.sourceLayer != layer.sourceLayer) print('sourceLayer: ${result.sourceLayer}/${layer.sourceLayer}');
  if (result.filter != layer.filter) print('filter: ${result.filter}/${layer.filter}');
  if (result.symbolPlacement != layer.symbolPlacement) print('symbolPlacement: ${result.symbolPlacement}/${layer.symbolPlacement}');
  if (result.symbolSpacing != layer.symbolSpacing) print('symbolSpacing: ${result.symbolSpacing}/${layer.symbolSpacing}');
  if (result.symbolAvoidEdges != layer.symbolAvoidEdges) print('symbolAvoidEdges: ${result.symbolAvoidEdges}/${layer.symbolAvoidEdges}');
  if (result.symbolZOrder != layer.symbolZOrder) print('symbolZOrder: ${result.symbolZOrder}/${layer.symbolZOrder}');
  if (result.iconAllowOverlap != layer.iconAllowOverlap) print('iconAllowOverlap: ${result.iconAllowOverlap}/${layer.iconAllowOverlap}');
  if (result.iconIgnorePlacement != layer.iconIgnorePlacement) print('iconIgnorePlacement: ${result.iconIgnorePlacement}/${layer.iconIgnorePlacement}');
  if (result.iconOptional != layer.iconOptional) print('iconOptional: ${result.iconOptional}/${layer.iconOptional}');
  if (result.iconRotationAlignment != layer.iconRotationAlignment) print('iconRotationAlignment: ${result.iconRotationAlignment}/${layer.iconRotationAlignment}');
  if (result.iconSize != layer.iconSize) print('iconSize: ${result.iconSize}/${layer.iconSize}');
  if (result.iconTextFit != layer.iconTextFit) print('iconTextFit: ${result.iconTextFit}/${layer.iconTextFit}');
  if (result.iconTextFitPadding != layer.iconTextFitPadding) print('iconTextFitPadding: ${result.iconTextFitPadding}/${layer.iconTextFitPadding}');
  if (result.iconImage != layer.iconImage) print('iconImage: ${result.iconImage}/${layer.iconImage}');
  if (result.iconRotate != layer.iconRotate) print('iconRotate: ${result.iconRotate}/${layer.iconRotate}');
  if (result.iconPadding != layer.iconPadding) print('iconPadding: ${result.iconPadding}/${layer.iconPadding}');
  if (result.iconKeepUpright != layer.iconKeepUpright) print('iconKeepUpright: ${result.iconKeepUpright}/${layer.iconKeepUpright}');
  if (result.iconOffset != layer.iconOffset) print('iconOffset: ${result.iconOffset}/${layer.iconOffset}');
  if (result.iconAnchor != layer.iconAnchor) print('iconAnchor: ${result.iconAnchor}/${layer.iconAnchor}');
  if (result.iconPitchAlignment != layer.iconPitchAlignment) print('iconPitchAlignment: ${result.iconPitchAlignment}/${layer.iconPitchAlignment}');
  if (result.textPitchAlignment != layer.textPitchAlignment) print('textPitchAlignment: ${result.textPitchAlignment}/${layer.textPitchAlignment}');
  if (result.textRotationAlignment != layer.textRotationAlignment) print('textRotationAlignment: ${result.textRotationAlignment}/${layer.textRotationAlignment}');
  if (result.textField != layer.textField) print('textField: ${result.textField}/${layer.textField}');
  if (result.textFont != layer.textFont) print('textFont: ${result.textFont}/${layer.textFont}');
  if (result.textSize != layer.textSize) print('textSize: ${result.textSize}/${layer.textSize}');
  if (result.textMaxWidth != layer.textMaxWidth) print('textMaxWidth: ${result.textMaxWidth}/${layer.textMaxWidth}');
  if (result.textLineHeight != layer.textLineHeight) print('textLineHeight: ${result.textLineHeight}/${layer.textLineHeight}');
  if (result.textLetterSpacing != layer.textLetterSpacing) print('textLetterSpacing: ${result.textLetterSpacing}/${layer.textLetterSpacing}');
  if (result.textJustify != layer.textJustify) print('textJustify: ${result.textJustify}/${layer.textJustify}');
  if (result.textRadialOffset != layer.textRadialOffset) print('textRadialOffset: ${result.textRadialOffset}/${layer.textRadialOffset}');
  if (result.textVariableAnchor != layer.textVariableAnchor) print('textVariableAnchor: ${result.textVariableAnchor}/${layer.textVariableAnchor}');
  if (result.textAnchor != layer.textAnchor) print('textAnchor: ${result.textAnchor}/${layer.textAnchor}');
  if (result.textMaxAngle != layer.textMaxAngle) print('textMaxAngle: ${result.textMaxAngle}/${layer.textMaxAngle}');
  if (result.textRotate != layer.textRotate) print('textRotate: ${result.textRotate}/${layer.textRotate}');
  if (result.textPadding != layer.textPadding) print('textPadding: ${result.textPadding}/${layer.textPadding}');
  if (result.textKeepUpright != layer.textKeepUpright) print('textKeepUpright: ${result.textKeepUpright}/${layer.textKeepUpright}');
  if (result.textTransform != layer.textTransform) print('textTransform: ${result.textTransform}/${layer.textTransform}');
  if (result.textOffset != layer.textOffset) print('textOffset: ${result.textOffset}/${layer.textOffset}');
  if (result.textAllowOverlap != layer.textAllowOverlap) print('textAllowOverlap: ${result.textAllowOverlap}/${layer.textAllowOverlap}');
  if (result.textIgnorePlacement != layer.textIgnorePlacement) print('textIgnorePlacement: ${result.textIgnorePlacement}/${layer.textIgnorePlacement}');
  if (result.textOptional != layer.textOptional) print('textOptional: ${result.textOptional}/${layer.textOptional}');
  if (result.iconOpacity != layer.iconOpacity) print('iconOpacity: ${result.iconOpacity}/${layer.iconOpacity}');
  if (result.iconColor != layer.iconColor) print('iconColor: ${result.iconColor}/${layer.iconColor}');
  if (result.iconHaloColor != layer.iconHaloColor) print('iconHaloColor: ${result.iconHaloColor}/${layer.iconHaloColor}');
  if (result.iconHaloWidth != layer.iconHaloWidth) print('iconHaloWidth: ${result.iconHaloWidth}/${layer.iconHaloWidth}');
  if (result.iconHaloBlur != layer.iconHaloBlur) print('iconHaloBlur: ${result.iconHaloBlur}/${layer.iconHaloBlur}');
  if (result.iconTranslate != layer.iconTranslate) print('iconTranslate: ${result.iconTranslate}/${layer.iconTranslate}');
  if (result.iconTranslateAnchor != layer.iconTranslateAnchor) print('iconTranslateAnchor: ${result.iconTranslateAnchor}/${layer.iconTranslateAnchor}');
  if (result.textOpacity != layer.textOpacity) print('textOpacity: ${result.textOpacity}/${layer.textOpacity}');
  if (result.textColor != layer.textColor) print('textColor: ${result.textColor}/${layer.textColor}');
  if (result.textHaloColor != layer.textHaloColor) print('textHaloColor: ${result.textHaloColor}/${layer.textHaloColor}');
  if (result.textHaloWidth != layer.textHaloWidth) print('textHaloWidth: ${result.textHaloWidth}/${layer.textHaloWidth}');
  if (result.textHaloBlur != layer.textHaloBlur) print('textHaloBlur: ${result.textHaloBlur}/${layer.textHaloBlur}');
  if (result.textTranslate != layer.textTranslate) print('textTranslate: ${result.textTranslate}/${layer.textTranslate}');
  if (result.textTranslateAnchor != layer.textTranslateAnchor) print('textTranslateAnchor: ${result.textTranslateAnchor}/${layer.textTranslateAnchor}');
  if (result.iconOpacityTransition != layer.iconOpacityTransition) print('iconOpacityTransition: ${result.iconOpacityTransition}/${layer.iconOpacityTransition}');
  if (result.iconColorTransition != layer.iconColorTransition) print('iconColorTransition: ${result.iconColorTransition}/${layer.iconColorTransition}');
  if (result.iconHaloColorTransition != layer.iconHaloColorTransition) print('iconHaloColorTransition: ${result.iconHaloColorTransition}/${layer.iconHaloColorTransition}');
  if (result.iconHaloWidthTransition != layer.iconHaloWidthTransition) print('iconHaloWidthTransition: ${result.iconHaloWidthTransition}/${layer.iconHaloWidthTransition}');
  if (result.iconHaloBlurTransition != layer.iconHaloBlurTransition) print('iconHaloBlurTransition: ${result.iconHaloBlurTransition}/${layer.iconHaloBlurTransition}');
  if (result.iconTranslateTransition != layer.iconTranslateTransition) print('iconTranslateTransition: ${result.iconTranslateTransition}/${layer.iconTranslateTransition}');
  if (result.textOpacityTransition != layer.textOpacityTransition) print('textOpacityTransition: ${result.textOpacityTransition}/${layer.textOpacityTransition}');
  if (result.textColorTransition != layer.textColorTransition) print('textColorTransition: ${result.textColorTransition}/${layer.textColorTransition}');
  if (result.textHaloColorTransition != layer.textHaloColorTransition) print('textHaloColorTransition: ${result.textHaloColorTransition}/${layer.textHaloColorTransition}');
  if (result.textHaloWidthTransition != layer.textHaloWidthTransition) print('textHaloWidthTransition: ${result.textHaloWidthTransition}/${layer.textHaloWidthTransition}');
  if (result.textHaloBlurTransition != layer.textHaloBlurTransition) print('textHaloBlurTransition: ${result.textHaloBlurTransition}/${layer.textHaloBlurTransition}');
  if (result.textTranslateTransition != layer.textTranslateTransition) print('textTranslateTransition: ${result.textTranslateTransition}/${layer.textTranslateTransition}');
  assert(result == layer);

  runApp(MaterialApp(home: MapsDemo()));
}
