///
//  Generated code. Do not modify.
//  source: map.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const Map_$json = const {
  '1': 'Map_',
  '3': const [Map__Options$json, Map__CameraPosition$json, Map__Operations$json],
};

const Map__Options$json = const {
  '1': 'Options',
  '2': const [
    const {'1': 'api_base_uri', '3': 1, '4': 1, '5': 9, '10': 'apiBaseUri'},
    const {'1': 'local_ideograph_font_family', '3': 2, '4': 1, '5': 9, '10': 'localIdeographFontFamily'},
    const {'1': 'cross_source_collisions', '3': 3, '4': 1, '5': 8, '10': 'crossSourceCollisions'},
    const {'1': 'camera_position', '3': 4, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.Map_.CameraPosition', '10': 'cameraPosition'},
    const {'1': 'max_zoom', '3': 5, '4': 1, '5': 1, '10': 'maxZoom'},
    const {'1': 'min_zoom', '3': 6, '4': 1, '5': 1, '10': 'minZoom'},
    const {'1': 'zoom_gestures', '3': 7, '4': 1, '5': 8, '10': 'zoomGestures'},
    const {'1': 'scroll_gestures', '3': 8, '4': 1, '5': 8, '10': 'scrollGestures'},
    const {'1': 'rotate_gestures', '3': 9, '4': 1, '5': 8, '10': 'rotateGestures'},
    const {'1': 'tilt_gestures', '3': 10, '4': 1, '5': 8, '10': 'tiltGestures'},
    const {'1': 'double_tap_gestures', '3': 11, '4': 1, '5': 8, '10': 'doubleTapGestures'},
    const {'1': 'quick_zoom_gestures', '3': 12, '4': 1, '5': 8, '10': 'quickZoomGestures'},
    const {'1': 'compass', '3': 13, '4': 1, '5': 8, '10': 'compass'},
    const {'1': 'compass_gravity', '3': 14, '4': 1, '5': 14, '6': '.com.tophap.mapbox_gl.proto.Gravity', '10': 'compassGravity'},
    const {'1': 'compass_margin', '3': 15, '4': 3, '5': 5, '10': 'compassMargin'},
    const {'1': 'compass_fade_facing_north', '3': 16, '4': 1, '5': 8, '10': 'compassFadeFacingNorth'},
    const {'1': 'logo', '3': 17, '4': 1, '5': 8, '10': 'logo'},
    const {'1': 'logo_gravity', '3': 18, '4': 1, '5': 14, '6': '.com.tophap.mapbox_gl.proto.Gravity', '10': 'logoGravity'},
    const {'1': 'logo_margin', '3': 19, '4': 3, '5': 5, '10': 'logoMargin'},
    const {'1': 'attribution', '3': 20, '4': 1, '5': 8, '10': 'attribution'},
    const {'1': 'attribution_gravity', '3': 21, '4': 1, '5': 14, '6': '.com.tophap.mapbox_gl.proto.Gravity', '10': 'attributionGravity'},
    const {'1': 'attribution_margin', '3': 22, '4': 3, '5': 5, '10': 'attributionMargin'},
    const {'1': 'attribution_tint_color', '3': 23, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.Color', '10': 'attributionTintColor'},
    const {'1': 'render_texture_mode', '3': 24, '4': 1, '5': 8, '10': 'renderTextureMode'},
    const {'1': 'render_texture_translucent_surface', '3': 25, '4': 1, '5': 8, '10': 'renderTextureTranslucentSurface'},
    const {'1': 'enable_tile_prefetch', '3': 26, '4': 1, '5': 8, '10': 'enableTilePrefetch'},
    const {'1': 'enable_z_media_overlay', '3': 27, '4': 1, '5': 8, '10': 'enableZMediaOverlay'},
    const {'1': 'pixel_ratio', '3': 28, '4': 1, '5': 2, '10': 'pixelRatio'},
    const {'1': 'foreground_load_color', '3': 29, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.Color', '10': 'foregroundLoadColor'},
  ],
};

const Map__CameraPosition$json = const {
  '1': 'CameraPosition',
  '2': const [
    const {'1': 'bearing', '3': 1, '4': 1, '5': 1, '10': 'bearing'},
    const {'1': 'target', '3': 2, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.LatLng', '10': 'target'},
    const {'1': 'tilt', '3': 3, '4': 1, '5': 1, '10': 'tilt'},
    const {'1': 'zoom', '3': 4, '4': 1, '5': 1, '10': 'zoom'},
  ],
  '4': const [Map__CameraPosition_MoveReason$json],
};

const Map__CameraPosition_MoveReason$json = const {
  '1': 'MoveReason',
  '2': const [
    const {'1': 'API_GESTURE', '2': 0},
    const {'1': 'DEVELOPER_ANIMATION', '2': 1},
    const {'1': 'API_ANIMATION', '2': 2},
  ],
};

const Map__Operations$json = const {
  '1': 'Operations',
  '3': const [Map__Operations_Ready$json, Map__Operations_CameraUpdate$json, Map__Operations_EaseCamera$json, Map__Operations_AnimateCamera$json, Map__Operations_ScrollBy$json, Map__Operations_SetFocalBearing$json, Map__Operations_GetCameraForLatLngBounds$json],
};

const Map__Operations_Ready$json = const {
  '1': 'Ready',
  '2': const [
    const {'1': 'view_id', '3': 1, '4': 1, '5': 5, '10': 'viewId'},
    const {'1': 'prefetches_tiles', '3': 2, '4': 1, '5': 8, '10': 'prefetchesTiles'},
    const {'1': 'min_zoom', '3': 3, '4': 1, '5': 1, '10': 'minZoom'},
    const {'1': 'max_zoom', '3': 4, '4': 1, '5': 1, '10': 'maxZoom'},
    const {'1': 'camera', '3': 5, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.Map_.CameraPosition', '10': 'camera'},
  ],
};

const Map__Operations_CameraUpdate$json = const {
  '1': 'CameraUpdate',
  '2': const [
    const {'1': 'camera_position', '3': 1, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.Map_.CameraPosition', '10': 'cameraPosition'},
    const {'1': 'lat_lng', '3': 2, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.LatLng', '10': 'latLng'},
    const {'1': 'bounds', '3': 3, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.LatLngBounds', '10': 'bounds'},
    const {'1': 'bearing', '3': 4, '4': 1, '5': 1, '10': 'bearing'},
    const {'1': 'tilt', '3': 5, '4': 1, '5': 1, '10': 'tilt'},
    const {'1': 'padding', '3': 6, '4': 3, '5': 5, '10': 'padding'},
    const {'1': 'zoom', '3': 7, '4': 1, '5': 1, '10': 'zoom'},
    const {'1': 'amount', '3': 8, '4': 1, '5': 1, '10': 'amount'},
    const {'1': 'focus_x', '3': 9, '4': 1, '5': 5, '10': 'focusX'},
    const {'1': 'focus_y', '3': 10, '4': 1, '5': 5, '10': 'focusY'},
    const {'1': 'operation', '3': 11, '4': 1, '5': 14, '6': '.com.tophap.mapbox_gl.proto.Map_.Operations.CameraUpdate.Type', '10': 'operation'},
  ],
  '4': const [Map__Operations_CameraUpdate_Result$json, Map__Operations_CameraUpdate_Type$json],
};

const Map__Operations_CameraUpdate_Result$json = const {
  '1': 'Result',
  '2': const [
    const {'1': 'FINISHED', '2': 0},
    const {'1': 'CANCELED', '2': 1},
  ],
};

const Map__Operations_CameraUpdate_Type$json = const {
  '1': 'Type',
  '2': const [
    const {'1': 'NEW_CAMERA_POSITION', '2': 0},
    const {'1': 'NEW_LAT_LNG', '2': 1},
    const {'1': 'NEW_LAT_LNG_BOUNDS', '2': 2},
    const {'1': 'NEW_LAT_LNG_ZOOM', '2': 3},
    const {'1': 'ZOOM_BY', '2': 4},
    const {'1': 'ZOOM_IN', '2': 5},
    const {'1': 'ZOOM_OUT', '2': 6},
    const {'1': 'ZOOM_TO', '2': 7},
    const {'1': 'BEARING_TO', '2': 8},
    const {'1': 'TILT_TO', '2': 9},
  ],
};

const Map__Operations_EaseCamera$json = const {
  '1': 'EaseCamera',
  '2': const [
    const {'1': 'update', '3': 1, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.Map_.Operations.CameraUpdate', '10': 'update'},
    const {'1': 'duration', '3': 2, '4': 1, '5': 5, '10': 'duration'},
    const {'1': 'easing_interpolator', '3': 3, '4': 1, '5': 8, '10': 'easingInterpolator'},
  ],
};

const Map__Operations_AnimateCamera$json = const {
  '1': 'AnimateCamera',
  '2': const [
    const {'1': 'update', '3': 1, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.Map_.Operations.CameraUpdate', '10': 'update'},
    const {'1': 'duration', '3': 2, '4': 1, '5': 5, '10': 'duration'},
  ],
};

const Map__Operations_ScrollBy$json = const {
  '1': 'ScrollBy',
  '2': const [
    const {'1': 'x', '3': 1, '4': 1, '5': 2, '10': 'x'},
    const {'1': 'y', '3': 2, '4': 1, '5': 2, '10': 'y'},
    const {'1': 'duration', '3': 3, '4': 1, '5': 3, '10': 'duration'},
  ],
};

const Map__Operations_SetFocalBearing$json = const {
  '1': 'SetFocalBearing',
  '2': const [
    const {'1': 'bearing', '3': 1, '4': 1, '5': 1, '10': 'bearing'},
    const {'1': 'focal_x', '3': 2, '4': 1, '5': 2, '10': 'focalX'},
    const {'1': 'focal_y', '3': 3, '4': 1, '5': 2, '10': 'focalY'},
    const {'1': 'duration', '3': 4, '4': 1, '5': 3, '10': 'duration'},
  ],
};

const Map__Operations_GetCameraForLatLngBounds$json = const {
  '1': 'GetCameraForLatLngBounds',
  '2': const [
    const {'1': 'bounds', '3': 1, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.LatLngBounds', '10': 'bounds'},
    const {'1': 'padding', '3': 2, '4': 3, '5': 5, '10': 'padding'},
    const {'1': 'bearing', '3': 3, '4': 1, '5': 1, '10': 'bearing'},
    const {'1': 'tilt', '3': 4, '4': 1, '5': 1, '10': 'tilt'},
  ],
};

