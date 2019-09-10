import 'dart:io';

import 'package:flutter/material.dart';

import 'src/add_rain_fall_style_page.dart';
import 'src/add_wms_source_page.dart';
import 'src/adjust_layer_opacity.dart';
import 'src/animated_marker.dart';
import 'src/bathymetry_page.dart';
import 'src/circle_layer_clustering_page.dart';
import 'src/circle_radius_page.dart';
import 'src/click_to_add_image_page.dart';
import 'src/color_switcher.dart';
import 'src/draw_geojson_line_page.dart';
import 'src/geojson_layer_in_stack_page.dart';
import 'src/heatmap_page.dart';
import 'src/hillshade_layer_page.dart';
import 'src/image_source_time_lapse_page.dart';
import 'src/indoor_map.dart';
import 'src/language_switch.dart';
import 'src/line_gradient_page.dart';
import 'src/line_layer_page.dart';
import 'src/marker_following_route.dart';
import 'src/move_camera.dart';
import 'src/multiple_geometries_page.dart';
import 'src/multiple_heatmap_styling_page.dart';
import 'src/polygon_holes_page.dart';
import 'src/scrolling_map.dart';
import 'src/space_station_location.dart';
import 'src/style_from_file_page.dart';
import 'src/vector_source.dart';
import 'src/zoom_dependent_fill_color_page.dart';

void main() => runApp(MapsDemo());

class MapsDemo extends StatelessWidget {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  NavigatorState get navigator => navigatorKey.currentState;

  Widget buildCategory(Category category) {
    switch (category) {
      case Category.gettingStarted:
        return ListTile(
          title: const Text(
            'Getting Started',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      case Category.dynamicStyling:
        return ListTile(
          title: const Text(
            'Dynamic Styling',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      case Category.dataVisualisation:
        return ListTile(
          title: const Text(
            'Data visualization',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        );
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('MapboxMaps examples')),
        body: ListView.separated(
          itemCount: pages.length,
          padding: const EdgeInsets.only(bottom: 24.0),
          itemBuilder: (BuildContext context, int i) {
            final Page page = pages[i];
            final Widget tile = ListTile(
              title: Text(page.title),
              subtitle: Text(page.description),
              onTap: () => navigator.pushNamed(page.route, arguments: page),
            );

            if (i == 0) {
              return Column(
                children: <Widget>[buildCategory(page.category), tile],
              );
            } else if (page.category != pages[i - 1].category) {
              return Column(
                children: <Widget>[buildCategory(page.category), tile],
              );
            }

            return tile;
          },
          separatorBuilder: (BuildContext context, int i) {
            if (i == 0) {
              return Container();
            } else if (pages[i].category != pages[i + 1].category) {
              return const Divider();
            }

            return Container();
          },
        ),
      ),
      navigatorKey: navigatorKey,
      routes: <String, WidgetBuilder>{
        AppRoutes.moveCamera: (_) => const MoveCameraPage(),
        AppRoutes.styleFromFile: (_) => const StyleFromFilePage(),
        AppRoutes.scrollingMap: (_) => const ScrollingMapPage(),
        AppRoutes.hillshadeLayer: (_) => const HillshadeLayerPage(),
        AppRoutes.geoJsonLayerInStack: (_) => const GeoJsonLayerInStackPage(),
        AppRoutes.vectorSource: (_) => const VectorSourcePage(),
        AppRoutes.addWmsSource: (_) => const AddWmsSourcePage(),
        AppRoutes.imageSourceTimeLapse: (_) => const ImageSourceTimeLapsePage(),
        AppRoutes.adjustLayerOpacity: (_) => const AdjustLayerOpacityPage(),
        AppRoutes.animatedMarker: (_) => const AnimatedMarkerPage(),
        AppRoutes.spaceStationLocation: (_) => const SpaceStationLocationPage(),
        AppRoutes.colorSwitcher: (_) => const ColorSwitcherPage(),
        AppRoutes.languageSwitch: (_) => const LanguageSwitchPage(),
        AppRoutes.zoomDependentFillColor: (_) =>
            const ZoomDependentFillColorPage(),
        AppRoutes.clickToAddImage: (_) => const ClickToAddImagePage(),
        AppRoutes.indoorMap: (_) => const IndoorMapPage(),
        AppRoutes.markerFollowingRoute: (_) => const MarkerFollowingRoutePage(),

        AppRoutes.multipleHeatmapStyling: (_) =>
            const MultipleHeatmapStylingPage(),
        AppRoutes.bathymetry: (_) => const BathymetryPage(),
        AppRoutes.circleLayerClustering: (_) =>
            const CircleLayerClusteringPage(),
        AppRoutes.circleRadius: (_) => const CircleRadiusPage(),
        AppRoutes.lineLayer: (_) => const LineLayerPage(),
        AppRoutes.heatmap: (_) => const HeatmapPage(),
        AppRoutes.addRainFallStyle: (_) => const AddRainFallStylePage(),
        AppRoutes.drawGeojsonLine: (_) => const DrawGeoJsonLinePage(),
        AppRoutes.polygonHoles: (_) => const PolygonHolesPage(),
        AppRoutes.multipleGeometries: (_) => const MultipleGeometriesPage(),
        AppRoutes.lineGradient: (_) => const LineGradientPage(),
      },
    );
  }
}

final List<Page> pages = <Page>[
  const Page(
    title: 'Camera control',
    description: 'Move the camera',
    category: Category.gettingStarted,
    route: AppRoutes.moveCamera,
  ),
  const Page(
    title: 'Add style from asset file',
    description:
        'iOS SDK doesn\'t have a way to create Style object from plain json. This implementation add support for just that.',
    category: Category.gettingStarted,
    route: AppRoutes.styleFromFile,
  ),
  const Page(
    title: 'Scrolling map',
    description: 'Test scrolling a list containing a map',
    category: Category.gettingStarted,
    route: AppRoutes.scrollingMap,
  ),
  const Page(
    title: 'Add a hillshade layer',
    description:
        'Use elevation data to show and customize hills and mountains.',
    category: Category.dynamicStyling,
    route: AppRoutes.hillshadeLayer,
  ),
  const Page(
    title: 'Add a new layer below labels',
    description:
        'Using argument belowId, you can be more precise where your layer ends up in the map stack.',
    category: Category.dynamicStyling,
    route: AppRoutes.geoJsonLayerInStack,
  ),
  const Page(
    title: 'Add a vector tile source',
    description: 'Add a vector source to a map and display it as a layer.',
    category: Category.dynamicStyling,
    route: AppRoutes.vectorSource,
  ),
  const Page(
    title: 'Add a WMS source',
    description: 'Adding an external Web Map Service layer to the map.',
    category: Category.dynamicStyling,
    route: AppRoutes.addWmsSource,
  ),
  const Page(
    title: 'Add an image source with time lapse',
    description:
        'Use an image source and a runnable to show data changes over time.',
    category: Category.dynamicStyling,
    route: AppRoutes.imageSourceTimeLapse,
  ),
  const Page(
    title: 'Adjust a layer\'s opacity',
    description:
        'Drag the seek bar to adjust the opacity of a raster layer on top of a map.',
    category: Category.dynamicStyling,
    route: AppRoutes.adjustLayerOpacity,
  ),
  const Page(
    title: 'Animate marker position',
    description: 'Animate the marker to a new position on the map.',
    category: Category.dynamicStyling,
    route: AppRoutes.animatedMarker,
  ),
  const Page(
    title: 'Icon update based on API response ',
    description:
        'Update a SymbolLayer icon based on Iternational Space Station current location.',
    category: Category.dynamicStyling,
    route: AppRoutes.spaceStationLocation,
  ),
  const Page(
    title: 'Change a layer\'s color',
    description: 'Using layer set to change a layer\'s fill color.',
    category: Category.dynamicStyling,
    route: AppRoutes.colorSwitcher,
  ),
  const Page(
    title: 'Change a map\'s language',
    description: 'Switch the map\'s language dynamically.',
    category: Category.dynamicStyling,
    route: AppRoutes.languageSwitch,
  ),
  const Page(
    title: 'Change color based on zoom level',
    description:
        'Make a property depend on the map zoom level, in this case, the water layers fill color.',
    category: Category.dynamicStyling,
    route: AppRoutes.zoomDependentFillColor,
  ),
  const Page(
    title: 'Click to add photo',
    description:
        'Select a photo on the device and add it on the map tap location.',
    category: Category.dynamicStyling,
    route: AppRoutes.clickToAddImage,
  ),
  const Page(
    title: 'Indoor Map',
    description:
        'Display an indoor map of a building with toggles to switch between floor levels.',
    category: Category.dynamicStyling,
    route: AppRoutes.indoorMap,
  ),  const Page(
    title: 'Marker following route',
    description:
        'Using a map matched GeoJSON route, the marker travels along the route at consistent speed.',
    category: Category.dynamicStyling,
    route: AppRoutes.markerFollowingRoute,
  ),



  const Page(
    title: 'Add multiple heatmap styles',
    description:
        'Gain minute control over heat map coloring, size, density, and other styling.',
    category: Category.dataVisualisation,
    route: AppRoutes.multipleHeatmapStyling,
  ),
  const Page(
    title: 'Display water depth',
    description:
        'Use data-driven styling to show bathymetry (water depth) data.',
    category: Category.dataVisualisation,
    route: AppRoutes.bathymetry,
  ),
  const Page(
    title: 'CircleLayer clusters',
    description:
        'Use GeoJSON and circle layers to visualize point data in clusters.',
    category: Category.dataVisualisation,
    route: AppRoutes.circleLayerClustering,
  ),
  const Page(
    title: 'Circle radius',
    description:
        'Set the radii of a circle layer\'s circles based on a data property.',
    category: Category.dataVisualisation,
    route: AppRoutes.circleRadius,
  ),
  const Page(
    title: 'Create a line layer',
    description:
        'Create a GeoJSON line source, style it using properties, and add the layer to the map.',
    category: Category.dataVisualisation,
    route: AppRoutes.lineLayer,
  ),
  const Page(
    title: 'Display a heatmap',
    description: 'Add and customize a heatmap to visualize data.',
    category: Category.dataVisualisation,
    route: AppRoutes.heatmap,
  ),
  const Page(
    title: 'Data time lapse',
    description:
        'Use data-driven styling to visualize point data with a time lapse effect; rainfall in China in this example.',
    category: Category.dataVisualisation,
    route: AppRoutes.addRainFallStyle,
  ),
  const Page(
    title: 'Draw a GeoJSON line',
    description: 'Draw a polyline by parsing a GeoJSON file with the Map SDK.',
    category: Category.dataVisualisation,
    route: AppRoutes.drawGeojsonLine,
  ),
  const Page(
    title: 'Draw a polygon with holes',
    description: 'Draw a vector polygon with holes on a map using the Map SDK.',
    category: Category.dataVisualisation,
    route: AppRoutes.polygonHoles,
  ),
  const Page(
    title: 'Draw multiple geometries',
    description:
        'Gain minute control over heat map coloring, size, density, and other styling.',
    category: Category.dataVisualisation,
    route: AppRoutes.multipleGeometries,
  ),
  if (!Platform.isIOS)
    const Page(
      title: 'Line gradient',
      description: 'Style a line with colored gradient.',
      category: Category.dataVisualisation,
      route: AppRoutes.lineGradient,
    ),
];

class AppRoutes {
  static const String styleFromFile = '/styleFromFile';
  static const String hillshadeLayer = '/hillshadeLayer';
  static const String geoJsonLayerInStack = '/geoJsonLayerInStack';
  static const String vectorSource = '/vectorSource';
  static const String addWmsSource = '/addWmsSource';
  static const String imageSourceTimeLapse = '/imageSourceTimeLapse';
  static const String adjustLayerOpacity = '/adjustLayerOpacity';
  static const String animatedMarker = '/animatedMarker';
  static const String spaceStationLocation = '/spaceStationLocation';
  static const String colorSwitcher = '/colorSwitcher';
  static const String moveCamera = '/moveCamera';
  static const String scrollingMap = '/scrollingMap';
  static const String languageSwitch = '/languageSwitch';
  static const String zoomDependentFillColor = '/zoomDependentFillColor';
  static const String clickToAddImage = '/clickToAddImage';
  static const String indoorMap = '/indoorMap';
  static const String markerFollowingRoute = '/markerFollowingRoute';

  static const String multipleHeatmapStyling = '/multipleHeatmapStyling';
  static const String bathymetry = '/bathymetry';
  static const String circleLayerClustering = '/circleLayerClustering';
  static const String circleRadius = '/circleRadius';
  static const String lineLayer = '/lineLayer';
  static const String heatmap = '/heatmap';
  static const String addRainFallStyle = '/addRainFallStyle';
  static const String drawGeojsonLine = '/drawGeojsonLine';
  static const String polygonHoles = '/polygonHoles';
  static const String multipleGeometries = '/multipleGeometries';
  static const String lineGradient = '/lineGradient';
}

enum Category { gettingStarted, dynamicStyling, dataVisualisation }

class Page {
  const Page({
    @required this.title,
    @required this.description,
    @required this.category,
    @required this.route,
  });

  final String title;
  final String description;
  final Category category;
  final String route;
}
