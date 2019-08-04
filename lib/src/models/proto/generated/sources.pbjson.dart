///
//  Generated code. Do not modify.
//  source: sources.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const Source$json = const {
  '1': 'Source',
  '2': const [
    const {'1': 'geoJson', '3': 1, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.Source.GeoJson', '9': 0, '10': 'geoJson'},
    const {'1': 'image', '3': 2, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.Source.Image', '9': 0, '10': 'image'},
  ],
  '3': const [Source_GeoJson$json, Source_Image$json],
  '8': const [
    const {'1': 'type'},
  ],
};

const Source_GeoJson$json = const {
  '1': 'GeoJson',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'attribution', '3': 2, '4': 1, '5': 9, '10': 'attribution'},
    const {'1': 'options', '3': 3, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.Source.GeoJson.Options', '10': 'options'},
    const {'1': 'uri', '3': 4, '4': 1, '5': 9, '9': 0, '10': 'uri'},
    const {'1': 'geo_json', '3': 5, '4': 1, '5': 9, '9': 0, '10': 'geoJson'},
  ],
  '3': const [Source_GeoJson_Options$json],
  '8': const [
    const {'1': 'source'},
  ],
};

const Source_GeoJson_Options$json = const {
  '1': 'Options',
  '2': const [
    const {'1': 'min_zoom', '3': 1, '4': 1, '5': 5, '10': 'minZoom'},
    const {'1': 'max_zoom', '3': 2, '4': 1, '5': 5, '10': 'maxZoom'},
    const {'1': 'buffer', '3': 3, '4': 1, '5': 5, '10': 'buffer'},
    const {'1': 'line_metrics', '3': 4, '4': 1, '5': 8, '10': 'lineMetrics'},
    const {'1': 'tolerance', '3': 5, '4': 1, '5': 2, '10': 'tolerance'},
    const {'1': 'cluster', '3': 6, '4': 1, '5': 8, '10': 'cluster'},
    const {'1': 'cluster_max_zoom', '3': 7, '4': 1, '5': 5, '10': 'clusterMaxZoom'},
    const {'1': 'cluster_radius', '3': 8, '4': 1, '5': 5, '10': 'clusterRadius'},
  ],
};

const Source_Image$json = const {
  '1': 'Image',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'attribution', '3': 2, '4': 1, '5': 9, '10': 'attribution'},
    const {'1': 'coordinates', '3': 3, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.LatLngQuad', '10': 'coordinates'},
    const {'1': 'uri', '3': 4, '4': 1, '5': 9, '9': 0, '10': 'uri'},
    const {'1': 'image', '3': 5, '4': 1, '5': 12, '9': 0, '10': 'image'},
  ],
  '8': const [
    const {'1': 'source'},
  ],
};

