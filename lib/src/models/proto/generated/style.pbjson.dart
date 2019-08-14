///
//  Generated code. Do not modify.
//  source: style.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

const Style$json = const {
  '1': 'Style',
  '2': const [
    const {'1': 'uri', '3': 1, '4': 1, '5': 9, '10': 'uri'},
    const {'1': 'json', '3': 2, '4': 1, '5': 9, '10': 'json'},
    const {'1': 'sources', '3': 3, '4': 3, '5': 11, '6': '.tophap.mapbox_gl.Source', '10': 'sources'},
    const {'1': 'layers', '3': 4, '4': 3, '5': 11, '6': '.tophap.mapbox_gl.Layer', '10': 'layers'},
    const {'1': 'transition', '3': 5, '4': 1, '5': 11, '6': '.tophap.mapbox_gl.TransitionOptions', '10': 'transition'},
    const {'1': 'light', '3': 6, '4': 1, '5': 11, '6': '.tophap.mapbox_gl.Style.Light', '10': 'light'},
  ],
  '3': const [Style_Light$json, Style_Position$json, Style_Operations$json],
  '4': const [Style_MapboxStyle$json],
};

const Style_Light$json = const {
  '1': 'Light',
  '2': const [
    const {'1': 'anchor', '3': 1, '4': 1, '5': 14, '6': '.tophap.mapbox_gl.TranslateAnchor', '10': 'anchor'},
    const {'1': 'position', '3': 2, '4': 1, '5': 11, '6': '.tophap.mapbox_gl.Style.Position', '10': 'position'},
    const {'1': 'color', '3': 3, '4': 1, '5': 11, '6': '.tophap.mapbox_gl.Color', '10': 'color'},
    const {'1': 'intensity', '3': 4, '4': 1, '5': 2, '10': 'intensity'},
    const {'1': 'positionTransition', '3': 5, '4': 1, '5': 11, '6': '.tophap.mapbox_gl.TransitionOptions', '10': 'positionTransition'},
    const {'1': 'colorTransition', '3': 6, '4': 1, '5': 11, '6': '.tophap.mapbox_gl.TransitionOptions', '10': 'colorTransition'},
    const {'1': 'intensityTransition', '3': 7, '4': 1, '5': 11, '6': '.tophap.mapbox_gl.TransitionOptions', '10': 'intensityTransition'},
  ],
};

const Style_Position$json = const {
  '1': 'Position',
  '2': const [
    const {'1': 'radial_coordinate', '3': 1, '4': 1, '5': 2, '10': 'radialCoordinate'},
    const {'1': 'azimuthal_angle', '3': 2, '4': 1, '5': 2, '10': 'azimuthalAngle'},
    const {'1': 'polar_angle', '3': 3, '4': 1, '5': 2, '10': 'polarAngle'},
  ],
};

const Style_Operations$json = const {
  '1': 'Operations',
  '3': const [Style_Operations_Build$json],
};

const Style_Operations_Build$json = const {
  '1': 'Build',
  '2': const [
    const {'1': 'default', '3': 1, '4': 1, '5': 14, '6': '.tophap.mapbox_gl.Style.MapboxStyle', '9': 0, '10': 'default'},
    const {'1': 'uri', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'uri'},
    const {'1': 'json', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'json'},
  ],
  '8': const [
    const {'1': 'source'},
  ],
};

const Style_MapboxStyle$json = const {
  '1': 'MapboxStyle',
  '2': const [
    const {'1': 'MAPBOX_STREETS', '2': 0},
    const {'1': 'OUTDOORS', '2': 1},
    const {'1': 'LIGHT', '2': 2},
    const {'1': 'DARK', '2': 3},
    const {'1': 'SATELLITE', '2': 4},
    const {'1': 'SATELLITE_STREETS', '2': 5},
    const {'1': 'TRAFFIC_DAY', '2': 6},
    const {'1': 'TRAFFIC_NIGHT', '2': 7},
  ],
};

