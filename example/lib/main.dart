import 'package:flutter/material.dart';
import 'package:mapbox_gl_example/src/add_wms_source_page.dart';
import 'package:mapbox_gl_example/src/adjust_layer_opacity.dart';
import 'package:mapbox_gl_example/src/animated_marker.dart';
import 'package:mapbox_gl_example/src/bathymetry_page.dart';
import 'package:mapbox_gl_example/src/circle_layer_clustering_page.dart';
import 'package:mapbox_gl_example/src/click_to_add_image_page.dart';
import 'package:mapbox_gl_example/src/color_switcher.dart';
import 'package:mapbox_gl_example/src/geojson_layer_in_stack_page.dart';
import 'package:mapbox_gl_example/src/hillshade_layer_page.dart';
import 'package:mapbox_gl_example/src/image_source_time_lapse_page.dart';
import 'package:mapbox_gl_example/src/language_switch.dart';
import 'package:mapbox_gl_example/src/move_camera.dart';
import 'package:mapbox_gl_example/src/multiple_heatmap_styling_page.dart';
import 'package:mapbox_gl_example/src/scrolling_map.dart';
import 'package:mapbox_gl_example/src/space_station_location.dart';
import 'package:mapbox_gl_example/src/style_from_file_page.dart';
import 'package:mapbox_gl_example/src/vector_source.dart';
import 'package:mapbox_gl_example/src/zoom_dependent_fill_color_page.dart';

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
              return Divider();
            }

            return Container();
          },
        ),
      ),
      navigatorKey: navigatorKey,
      routes: <String, WidgetBuilder>{
        AppRoutes.styleFromFile: (_) => const StyleFromFilePage(),
        AppRoutes.hillshadeLayer: (_) => const HillshadeLayerPage(),
        AppRoutes.geoJsonLayerInStack: (_) => const GeoJsonLayerInStackPage(),
        AppRoutes.vectorSource: (_) => const VectorSourcePage(),
        AppRoutes.addWmsSource: (_) => const AddWmsSourcePage(),
        AppRoutes.imageSourceTimeLapse: (_) => const ImageSourceTimeLapsePage(),
        AppRoutes.adjustLayerOpacity: (_) => const AdjustLayerOpacityPage(),
        AppRoutes.animatedMarker: (_) => const AnimatedMarkerPage(),
        AppRoutes.spaceStationLocation: (_) => const SpaceStationLocationPage(),
        AppRoutes.colorSwitcher: (_) => const ColorSwitcherPage(),
        AppRoutes.moveCamera: (_) => const MoveCameraPage(),
        AppRoutes.scrollingMap: (_) => const ScrollingMapPage(),
        AppRoutes.languageSwitch: (_) => const LanguageSwitchPage(),
        AppRoutes.zoomDependentFillColor: (_) =>
            const ZoomDependentFillColorPage(),
        AppRoutes.clickToAddImage: (_) => const ClickToAddImagePage(),
        AppRoutes.multipleHeatmapStyling: (_) =>
            const MultipleHeatmapStylingPage(),
        AppRoutes.bathymetry: (_) => const BathymetryPage(),
        AppRoutes.circleLayerClustering: (_) =>
            const CircleLayerClusteringPage(),
      },
    );
  }
}

const List<Page> pages = <Page>[
  Page(
    title: 'Camera control',
    description: 'Move the camera',
    category: Category.gettingStarted,
    route: AppRoutes.moveCamera,
  ),
  Page(
    title: 'Add style from asset file',
    description:
        'iOS SDK doesn\'t have a way to create Style object from plain json. This implementation add support for just that.',
    category: Category.gettingStarted,
    route: AppRoutes.styleFromFile,
  ),
  Page(
    title: 'Scrolling map',
    description: 'Test scrolling a list containing a map',
    category: Category.gettingStarted,
    route: AppRoutes.scrollingMap,
  ),
  Page(
    title: 'Add a hillshade layer',
    description:
        'Use elevation data to show and customize hills and mountains.',
    category: Category.dynamicStyling,
    route: AppRoutes.hillshadeLayer,
  ),
  Page(
    title: 'Add a new layer below labels',
    description:
        'Using argument belowId, you can be more precise where your layer ends up in the map stack.',
    category: Category.dynamicStyling,
    route: AppRoutes.geoJsonLayerInStack,
  ),
  Page(
    title: 'Add a vector tile source',
    description: 'Add a vector source to a map and display it as a layer.',
    category: Category.dynamicStyling,
    route: AppRoutes.vectorSource,
  ),
  Page(
    title: 'Add a WMS source',
    description: 'Adding an external Web Map Service layer to the map.',
    category: Category.dynamicStyling,
    route: AppRoutes.addWmsSource,
  ),
  Page(
    title: 'Add an image source with time lapse',
    description:
        'Use an image source and a runnable to show data changes over time.',
    category: Category.dynamicStyling,
    route: AppRoutes.imageSourceTimeLapse,
  ),
  Page(
    title: 'Adjust a layer\'s opacity',
    description:
        'Drag the seek bar to adjust the opacity of a raster layer on top of a map.',
    category: Category.dynamicStyling,
    route: AppRoutes.adjustLayerOpacity,
  ),
  Page(
    title: 'Animate marker position',
    description: 'Animate the marker to a new position on the map.',
    category: Category.dynamicStyling,
    route: AppRoutes.animatedMarker,
  ),
  Page(
    title: 'Icon update based on API response ',
    description:
        'Update a SymbolLayer icon based on Iternational Space Station current location.',
    category: Category.dynamicStyling,
    route: AppRoutes.spaceStationLocation,
  ),
  Page(
    title: 'Change a layer\'s color',
    description: 'Using layer set to change a layer\'s fill color.',
    category: Category.dynamicStyling,
    route: AppRoutes.colorSwitcher,
  ),
  Page(
    title: 'Change a map\'s language',
    description: 'Switch the map\'s language dynamically.',
    category: Category.dynamicStyling,
    route: AppRoutes.languageSwitch,
  ),
  Page(
    title: 'Change color based on zoom level',
    description:
        'Make a property depend on the map zoom level, in this case, the water layers fill color.',
    category: Category.dynamicStyling,
    route: AppRoutes.zoomDependentFillColor,
  ),
  Page(
    title: 'Click to add photo',
    description:
        'Select a photo on the device and add it on the map tap location.',
    category: Category.dynamicStyling,
    route: AppRoutes.clickToAddImage,
  ),
  Page(
    title: 'Add multiple heatmap styles',
    description:
        'Gain minute control over heat map coloring, size, density, and other styling.',
    category: Category.dataVisualisation,
    route: AppRoutes.multipleHeatmapStyling,
  ),
  Page(
    title: 'Display water depth',
    description:
        'Use data-driven styling to show bathymetry (water depth) data.',
    category: Category.dataVisualisation,
    route: AppRoutes.bathymetry,
  ),
  Page(
    title: 'CircleLayer clusters',
    description:
        'Use GeoJSON and circle layers to visualize point data in clusters.',
    category: Category.dataVisualisation,
    route: AppRoutes.circleLayerClustering,
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
  static const String multipleHeatmapStyling = '/multipleHeatmapStyling';
  static const String bathymetry = '/bathymetry';
  static const String circleLayerClustering = '/circleLayerClustering';
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
