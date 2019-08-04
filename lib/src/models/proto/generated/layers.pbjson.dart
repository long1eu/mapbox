///
//  Generated code. Do not modify.
//  source: layers.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const Layer$json = const {
  '1': 'Layer',
  '2': const [
    const {'1': 'background_layer', '3': 1, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.Layer.Background', '9': 0, '10': 'backgroundLayer'},
    const {'1': 'circle_layer', '3': 2, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.Layer.Circle', '9': 0, '10': 'circleLayer'},
    const {'1': 'fill_layer', '3': 3, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.Layer.Fill', '9': 0, '10': 'fillLayer'},
    const {'1': 'fill_extrusion_layer', '3': 4, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.Layer.FillExtrusion', '9': 0, '10': 'fillExtrusionLayer'},
    const {'1': 'line_layer', '3': 5, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.Layer.Line', '9': 0, '10': 'lineLayer'},
    const {'1': 'symbol_layer', '3': 6, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.Layer.Symbol', '9': 0, '10': 'symbolLayer'},
    const {'1': 'hillshade_layer', '3': 7, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.Layer.Hillshade', '9': 0, '10': 'hillshadeLayer'},
    const {'1': 'heatmap_layer', '3': 8, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.Layer.Heatmap', '9': 0, '10': 'heatmapLayer'},
  ],
  '3': const [Layer_Background$json, Layer_Circle$json, Layer_FillExtrusion$json, Layer_Fill$json, Layer_Heatmap$json, Layer_Hillshade$json, Layer_Line$json, Layer_Symbol$json],
  '8': const [
    const {'1': 'type'},
  ],
};

const Layer_Background$json = const {
  '1': 'Background',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'visible', '3': 2, '4': 1, '5': 8, '10': 'visible'},
    const {'1': 'min_zoom', '3': 3, '4': 1, '5': 2, '10': 'minZoom'},
    const {'1': 'max_zoom', '3': 4, '4': 1, '5': 2, '10': 'maxZoom'},
    const {'1': 'color', '3': 5, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.Color', '10': 'color'},
    const {'1': 'pattern', '3': 6, '4': 1, '5': 9, '10': 'pattern'},
    const {'1': 'color_transition', '3': 8, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.TransitionOptions', '10': 'colorTransition'},
    const {'1': 'pattern_transition', '3': 9, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.TransitionOptions', '10': 'patternTransition'},
    const {'1': 'opacity_transition', '3': 10, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.TransitionOptions', '10': 'opacityTransition'},
  ],
};

const Layer_Circle$json = const {
  '1': 'Circle',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'source_id', '3': 2, '4': 1, '5': 9, '10': 'sourceId'},
    const {'1': 'visible', '3': 3, '4': 1, '5': 8, '10': 'visible'},
    const {'1': 'min_zoom', '3': 4, '4': 1, '5': 2, '10': 'minZoom'},
    const {'1': 'max_zoom', '3': 5, '4': 1, '5': 2, '10': 'maxZoom'},
    const {'1': 'radius', '3': 6, '4': 1, '5': 2, '10': 'radius'},
    const {'1': 'color', '3': 7, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.Color', '10': 'color'},
    const {'1': 'blur', '3': 8, '4': 1, '5': 2, '10': 'blur'},
    const {'1': 'translate', '3': 10, '4': 3, '5': 2, '10': 'translate'},
    const {'1': 'translate_anchor', '3': 11, '4': 1, '5': 14, '6': '.com.tophap.mapbox_gl.proto.TranslateAnchor', '10': 'translateAnchor'},
    const {'1': 'pitch_scale', '3': 12, '4': 1, '5': 14, '6': '.com.tophap.mapbox_gl.proto.TranslateAnchor', '10': 'pitchScale'},
    const {'1': 'pitch_alignment', '3': 13, '4': 1, '5': 14, '6': '.com.tophap.mapbox_gl.proto.TranslateAnchor', '10': 'pitchAlignment'},
    const {'1': 'stroke_width', '3': 14, '4': 1, '5': 2, '10': 'strokeWidth'},
    const {'1': 'stroke_color', '3': 15, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.Color', '10': 'strokeColor'},
    const {'1': 'radius_transition', '3': 17, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.TransitionOptions', '10': 'radiusTransition'},
    const {'1': 'color_transition', '3': 18, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.TransitionOptions', '10': 'colorTransition'},
    const {'1': 'blur_transition', '3': 19, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.TransitionOptions', '10': 'blurTransition'},
    const {'1': 'opacity_transition', '3': 20, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.TransitionOptions', '10': 'opacityTransition'},
    const {'1': 'translate_transition', '3': 21, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.TransitionOptions', '10': 'translateTransition'},
    const {'1': 'stroke_width_transition', '3': 22, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.TransitionOptions', '10': 'strokeWidthTransition'},
    const {'1': 'stroke_color_transition', '3': 23, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.TransitionOptions', '10': 'strokeColorTransition'},
    const {'1': 'stroke_opacity_transition', '3': 24, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.TransitionOptions', '10': 'strokeOpacityTransition'},
  ],
};

const Layer_FillExtrusion$json = const {
  '1': 'FillExtrusion',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'source_id', '3': 2, '4': 1, '5': 9, '10': 'sourceId'},
    const {'1': 'visible', '3': 3, '4': 1, '5': 8, '10': 'visible'},
    const {'1': 'min_zoom', '3': 4, '4': 1, '5': 2, '10': 'minZoom'},
    const {'1': 'max_zoom', '3': 5, '4': 1, '5': 2, '10': 'maxZoom'},
    const {'1': 'color', '3': 7, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.Color', '10': 'color'},
    const {'1': 'translate', '3': 8, '4': 3, '5': 2, '10': 'translate'},
    const {'1': 'translate_anchor', '3': 9, '4': 1, '5': 14, '6': '.com.tophap.mapbox_gl.proto.TranslateAnchor', '10': 'translateAnchor'},
    const {'1': 'pattern', '3': 10, '4': 1, '5': 9, '10': 'pattern'},
    const {'1': 'height', '3': 11, '4': 1, '5': 2, '10': 'height'},
    const {'1': 'base', '3': 12, '4': 1, '5': 2, '10': 'base'},
    const {'1': 'vertical_gradient', '3': 13, '4': 1, '5': 8, '10': 'verticalGradient'},
    const {'1': 'opacity_transition', '3': 14, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.TransitionOptions', '10': 'opacityTransition'},
    const {'1': 'color_transition', '3': 15, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.TransitionOptions', '10': 'colorTransition'},
    const {'1': 'translate_transition', '3': 16, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.TransitionOptions', '10': 'translateTransition'},
    const {'1': 'pattern_transition', '3': 17, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.TransitionOptions', '10': 'patternTransition'},
    const {'1': 'height_transition', '3': 18, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.TransitionOptions', '10': 'heightTransition'},
    const {'1': 'base_transition', '3': 19, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.TransitionOptions', '10': 'baseTransition'},
  ],
};

const Layer_Fill$json = const {
  '1': 'Fill',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'source_id', '3': 2, '4': 1, '5': 9, '10': 'sourceId'},
    const {'1': 'visible', '3': 3, '4': 1, '5': 8, '10': 'visible'},
    const {'1': 'min_zoom', '3': 4, '4': 1, '5': 2, '10': 'minZoom'},
    const {'1': 'max_zoom', '3': 5, '4': 1, '5': 2, '10': 'maxZoom'},
    const {'1': 'antialias', '3': 6, '4': 1, '5': 8, '10': 'antialias'},
    const {'1': 'color', '3': 8, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.Color', '10': 'color'},
    const {'1': 'outline_color', '3': 9, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.Color', '10': 'outlineColor'},
    const {'1': 'translate', '3': 10, '4': 3, '5': 2, '10': 'translate'},
    const {'1': 'translate_anchor', '3': 11, '4': 1, '5': 14, '6': '.com.tophap.mapbox_gl.proto.TranslateAnchor', '10': 'translateAnchor'},
    const {'1': 'pattern', '3': 12, '4': 1, '5': 9, '10': 'pattern'},
    const {'1': 'opacity_transition', '3': 13, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.TransitionOptions', '10': 'opacityTransition'},
    const {'1': 'color_transition', '3': 14, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.TransitionOptions', '10': 'colorTransition'},
    const {'1': 'outline_color_transition', '3': 15, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.TransitionOptions', '10': 'outlineColorTransition'},
    const {'1': 'translate_transition', '3': 16, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.TransitionOptions', '10': 'translateTransition'},
    const {'1': 'pattern_transition', '3': 17, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.TransitionOptions', '10': 'patternTransition'},
  ],
};

const Layer_Heatmap$json = const {
  '1': 'Heatmap',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'source_id', '3': 2, '4': 1, '5': 9, '10': 'sourceId'},
    const {'1': 'visible', '3': 3, '4': 1, '5': 8, '10': 'visible'},
    const {'1': 'min_zoom', '3': 4, '4': 1, '5': 2, '10': 'minZoom'},
    const {'1': 'max_zoom', '3': 5, '4': 1, '5': 2, '10': 'maxZoom'},
    const {'1': 'radius', '3': 6, '4': 1, '5': 2, '10': 'radius'},
    const {'1': 'weight', '3': 7, '4': 1, '5': 2, '10': 'weight'},
    const {'1': 'intensity', '3': 8, '4': 1, '5': 2, '10': 'intensity'},
    const {'1': 'color', '3': 9, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.Color', '10': 'color'},
    const {'1': 'radius_transition', '3': 11, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.TransitionOptions', '10': 'radiusTransition'},
    const {'1': 'intensity_transition', '3': 12, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.TransitionOptions', '10': 'intensityTransition'},
    const {'1': 'opacity_transition', '3': 13, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.TransitionOptions', '10': 'opacityTransition'},
  ],
};

const Layer_Hillshade$json = const {
  '1': 'Hillshade',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'source_id', '3': 2, '4': 1, '5': 9, '10': 'sourceId'},
    const {'1': 'visible', '3': 3, '4': 1, '5': 8, '10': 'visible'},
    const {'1': 'min_zoom', '3': 4, '4': 1, '5': 2, '10': 'minZoom'},
    const {'1': 'max_zoom', '3': 5, '4': 1, '5': 2, '10': 'maxZoom'},
    const {'1': 'illumination_direction', '3': 6, '4': 1, '5': 2, '10': 'illuminationDirection'},
    const {'1': 'illumination_anchor', '3': 7, '4': 1, '5': 14, '6': '.com.tophap.mapbox_gl.proto.TranslateAnchor', '10': 'illuminationAnchor'},
    const {'1': 'exaggeration', '3': 8, '4': 1, '5': 2, '10': 'exaggeration'},
    const {'1': 'shadow_color', '3': 9, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.Color', '10': 'shadowColor'},
    const {'1': 'highlight_color', '3': 10, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.Color', '10': 'highlightColor'},
    const {'1': 'accent_color', '3': 11, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.Color', '10': 'accentColor'},
    const {'1': 'exaggeration_transition', '3': 12, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.TransitionOptions', '10': 'exaggerationTransition'},
    const {'1': 'shadow_color_transition', '3': 13, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.TransitionOptions', '10': 'shadowColorTransition'},
    const {'1': 'highlight_color_transition', '3': 14, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.TransitionOptions', '10': 'highlightColorTransition'},
    const {'1': 'accent_color_transition', '3': 15, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.TransitionOptions', '10': 'accentColorTransition'},
  ],
};

const Layer_Line$json = const {
  '1': 'Line',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'source_id', '3': 2, '4': 1, '5': 9, '10': 'sourceId'},
    const {'1': 'visible', '3': 3, '4': 1, '5': 8, '10': 'visible'},
    const {'1': 'min_zoom', '3': 4, '4': 1, '5': 2, '10': 'minZoom'},
    const {'1': 'max_zoom', '3': 5, '4': 1, '5': 2, '10': 'maxZoom'},
    const {'1': 'cap', '3': 6, '4': 1, '5': 14, '6': '.com.tophap.mapbox_gl.proto.Layer.Line.Cap', '10': 'cap'},
    const {'1': 'join', '3': 7, '4': 1, '5': 14, '6': '.com.tophap.mapbox_gl.proto.Layer.Line.Join', '10': 'join'},
    const {'1': 'miter_limit', '3': 8, '4': 1, '5': 2, '10': 'miterLimit'},
    const {'1': 'round_limit', '3': 9, '4': 1, '5': 2, '10': 'roundLimit'},
    const {'1': 'color', '3': 11, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.Color', '10': 'color'},
    const {'1': 'translate', '3': 12, '4': 3, '5': 2, '10': 'translate'},
    const {'1': 'translate_anchor', '3': 13, '4': 1, '5': 14, '6': '.com.tophap.mapbox_gl.proto.TranslateAnchor', '10': 'translateAnchor'},
    const {'1': 'width', '3': 14, '4': 1, '5': 2, '10': 'width'},
    const {'1': 'gap_width', '3': 15, '4': 1, '5': 2, '10': 'gapWidth'},
    const {'1': 'offset', '3': 16, '4': 1, '5': 2, '10': 'offset'},
    const {'1': 'blur', '3': 17, '4': 1, '5': 2, '10': 'blur'},
    const {'1': 'dasharray', '3': 18, '4': 3, '5': 2, '10': 'dasharray'},
    const {'1': 'pattern', '3': 19, '4': 1, '5': 9, '10': 'pattern'},
    const {'1': 'gradient', '3': 20, '4': 1, '5': 5, '10': 'gradient'},
    const {'1': 'opacity_transition', '3': 21, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.TransitionOptions', '10': 'opacityTransition'},
    const {'1': 'color_transition', '3': 22, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.TransitionOptions', '10': 'colorTransition'},
    const {'1': 'translate_transition', '3': 23, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.TransitionOptions', '10': 'translateTransition'},
    const {'1': 'width_transition', '3': 24, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.TransitionOptions', '10': 'widthTransition'},
    const {'1': 'gap_width_transition', '3': 25, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.TransitionOptions', '10': 'gapWidthTransition'},
    const {'1': 'offset_transition', '3': 26, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.TransitionOptions', '10': 'offsetTransition'},
    const {'1': 'blur_transition', '3': 27, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.TransitionOptions', '10': 'blurTransition'},
    const {'1': 'dasharray_transition', '3': 28, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.TransitionOptions', '10': 'dasharrayTransition'},
    const {'1': 'pattern_transition', '3': 29, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.TransitionOptions', '10': 'patternTransition'},
  ],
  '4': const [Layer_Line_Cap$json, Layer_Line_Join$json],
};

const Layer_Line_Cap$json = const {
  '1': 'Cap',
  '2': const [
    const {'1': 'CAP_BUTT', '2': 0},
    const {'1': 'CAP_ROUND', '2': 1},
    const {'1': 'CAP_SQUARE', '2': 3},
  ],
};

const Layer_Line_Join$json = const {
  '1': 'Join',
  '2': const [
    const {'1': 'JOIN_MITER', '2': 0},
    const {'1': 'JOIN_BEVEL', '2': 1},
    const {'1': 'JOIN_ROUND', '2': 2},
  ],
};

const Layer_Symbol$json = const {
  '1': 'Symbol',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'source_id', '3': 2, '4': 1, '5': 9, '10': 'sourceId'},
    const {'1': 'visible', '3': 3, '4': 1, '5': 8, '10': 'visible'},
    const {'1': 'min_zoom', '3': 4, '4': 1, '5': 2, '10': 'minZoom'},
    const {'1': 'max_zoom', '3': 5, '4': 1, '5': 2, '10': 'maxZoom'},
    const {'1': 'symbol_placement', '3': 6, '4': 1, '5': 14, '6': '.com.tophap.mapbox_gl.proto.Layer.Symbol.Placement', '10': 'symbolPlacement'},
    const {'1': 'symbol_spacing', '3': 7, '4': 1, '5': 2, '10': 'symbolSpacing'},
    const {'1': 'symbol_avoid_edges', '3': 8, '4': 1, '5': 8, '10': 'symbolAvoidEdges'},
    const {'1': 'symbol_z_order', '3': 9, '4': 1, '5': 14, '6': '.com.tophap.mapbox_gl.proto.Layer.Symbol.ZOrder', '10': 'symbolZOrder'},
    const {'1': 'icon_allow_overlap', '3': 10, '4': 1, '5': 8, '10': 'iconAllowOverlap'},
    const {'1': 'icon_ignore_placement', '3': 11, '4': 1, '5': 8, '10': 'iconIgnorePlacement'},
    const {'1': 'icon_optional', '3': 12, '4': 1, '5': 8, '10': 'iconOptional'},
    const {'1': 'icon_rotation_alignment', '3': 13, '4': 1, '5': 14, '6': '.com.tophap.mapbox_gl.proto.Layer.Symbol.Alignment', '10': 'iconRotationAlignment'},
    const {'1': 'icon_size', '3': 14, '4': 1, '5': 2, '10': 'iconSize'},
    const {'1': 'icon_text_fit', '3': 15, '4': 1, '5': 14, '6': '.com.tophap.mapbox_gl.proto.Layer.Symbol.TextFit', '10': 'iconTextFit'},
    const {'1': 'icon_text_fit_padding', '3': 16, '4': 3, '5': 2, '10': 'iconTextFitPadding'},
    const {'1': 'icon_image', '3': 17, '4': 1, '5': 9, '10': 'iconImage'},
    const {'1': 'icon_rotate', '3': 18, '4': 1, '5': 2, '10': 'iconRotate'},
    const {'1': 'icon_padding', '3': 19, '4': 1, '5': 2, '10': 'iconPadding'},
    const {'1': 'icon_keep_upright', '3': 20, '4': 1, '5': 8, '10': 'iconKeepUpright'},
    const {'1': 'icon_offset', '3': 21, '4': 3, '5': 2, '10': 'iconOffset'},
    const {'1': 'icon_anchor', '3': 22, '4': 1, '5': 14, '6': '.com.tophap.mapbox_gl.proto.PositionAnchor', '10': 'iconAnchor'},
    const {'1': 'icon_pitch_alignment', '3': 23, '4': 1, '5': 14, '6': '.com.tophap.mapbox_gl.proto.Layer.Symbol.Alignment', '10': 'iconPitchAlignment'},
    const {'1': 'text_pitch_alignment', '3': 24, '4': 1, '5': 14, '6': '.com.tophap.mapbox_gl.proto.Layer.Symbol.Alignment', '10': 'textPitchAlignment'},
    const {'1': 'text_rotation_alignment', '3': 25, '4': 1, '5': 14, '6': '.com.tophap.mapbox_gl.proto.Layer.Symbol.Alignment', '10': 'textRotationAlignment'},
    const {'1': 'text_field', '3': 26, '4': 3, '5': 11, '6': '.com.tophap.mapbox_gl.proto.FormattedSection', '10': 'textField'},
    const {'1': 'text_font', '3': 27, '4': 3, '5': 9, '10': 'textFont'},
    const {'1': 'text_size', '3': 28, '4': 1, '5': 2, '10': 'textSize'},
    const {'1': 'text_max_width', '3': 29, '4': 1, '5': 2, '10': 'textMaxWidth'},
    const {'1': 'text_line_height', '3': 30, '4': 1, '5': 2, '10': 'textLineHeight'},
    const {'1': 'text_letter_spacing', '3': 31, '4': 1, '5': 2, '10': 'textLetterSpacing'},
    const {'1': 'text_justify', '3': 32, '4': 1, '5': 14, '6': '.com.tophap.mapbox_gl.proto.Layer.Symbol.TextJustify', '10': 'textJustify'},
    const {'1': 'text_radial_offset', '3': 33, '4': 1, '5': 2, '10': 'textRadialOffset'},
    const {'1': 'text_variable_anchor', '3': 34, '4': 3, '5': 14, '6': '.com.tophap.mapbox_gl.proto.PositionAnchor', '10': 'textVariableAnchor'},
    const {'1': 'text_anchor', '3': 35, '4': 1, '5': 14, '6': '.com.tophap.mapbox_gl.proto.PositionAnchor', '10': 'textAnchor'},
    const {'1': 'text_max_angle', '3': 36, '4': 1, '5': 2, '10': 'textMaxAngle'},
    const {'1': 'text_rotate', '3': 37, '4': 1, '5': 2, '10': 'textRotate'},
    const {'1': 'text_padding', '3': 38, '4': 1, '5': 2, '10': 'textPadding'},
    const {'1': 'text_keep_upright', '3': 39, '4': 1, '5': 8, '10': 'textKeepUpright'},
    const {'1': 'text_transform', '3': 40, '4': 1, '5': 14, '6': '.com.tophap.mapbox_gl.proto.Layer.Symbol.TextTransform', '10': 'textTransform'},
    const {'1': 'text_offset', '3': 41, '4': 3, '5': 2, '10': 'textOffset'},
    const {'1': 'text_allow_overlap', '3': 42, '4': 1, '5': 8, '10': 'textAllowOverlap'},
    const {'1': 'text_ignore_placement', '3': 43, '4': 1, '5': 8, '10': 'textIgnorePlacement'},
    const {'1': 'text_optional', '3': 44, '4': 1, '5': 8, '10': 'textOptional'},
    const {'1': 'icon_color', '3': 46, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.Color', '10': 'iconColor'},
    const {'1': 'icon_halo_color', '3': 47, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.Color', '10': 'iconHaloColor'},
    const {'1': 'icon_halo_width', '3': 48, '4': 1, '5': 2, '10': 'iconHaloWidth'},
    const {'1': 'icon_halo_blur', '3': 49, '4': 1, '5': 2, '10': 'iconHaloBlur'},
    const {'1': 'icon_translate', '3': 50, '4': 3, '5': 2, '10': 'iconTranslate'},
    const {'1': 'icon_translate_anchor', '3': 51, '4': 1, '5': 14, '6': '.com.tophap.mapbox_gl.proto.TranslateAnchor', '10': 'iconTranslateAnchor'},
    const {'1': 'text_color', '3': 53, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.Color', '10': 'textColor'},
    const {'1': 'text_halo_color', '3': 54, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.Color', '10': 'textHaloColor'},
    const {'1': 'text_halo_width', '3': 55, '4': 1, '5': 2, '10': 'textHaloWidth'},
    const {'1': 'text_halo_blur', '3': 56, '4': 1, '5': 2, '10': 'textHaloBlur'},
    const {'1': 'text_translate', '3': 57, '4': 3, '5': 2, '10': 'textTranslate'},
    const {'1': 'text_translate_anchor', '3': 58, '4': 1, '5': 14, '6': '.com.tophap.mapbox_gl.proto.TranslateAnchor', '10': 'textTranslateAnchor'},
    const {'1': 'icon_opacity_transition', '3': 59, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.TransitionOptions', '10': 'iconOpacityTransition'},
    const {'1': 'icon_color_transition', '3': 60, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.TransitionOptions', '10': 'iconColorTransition'},
    const {'1': 'icon_halo_color_transition', '3': 61, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.TransitionOptions', '10': 'iconHaloColorTransition'},
    const {'1': 'icon_halo_width_transition', '3': 62, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.TransitionOptions', '10': 'iconHaloWidthTransition'},
    const {'1': 'icon_halo_blur_transition', '3': 63, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.TransitionOptions', '10': 'iconHaloBlurTransition'},
    const {'1': 'icon_translate_transition', '3': 64, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.TransitionOptions', '10': 'iconTranslateTransition'},
    const {'1': 'text_opacity_transition', '3': 65, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.TransitionOptions', '10': 'textOpacityTransition'},
    const {'1': 'text_color_transition', '3': 66, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.TransitionOptions', '10': 'textColorTransition'},
    const {'1': 'text_halo_color_transition', '3': 67, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.TransitionOptions', '10': 'textHaloColorTransition'},
    const {'1': 'text_halo_width_transition', '3': 68, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.TransitionOptions', '10': 'textHaloWidthTransition'},
    const {'1': 'text_halo_blur_transition', '3': 69, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.TransitionOptions', '10': 'textHaloBlurTransition'},
    const {'1': 'text_translate_transition', '3': 70, '4': 1, '5': 11, '6': '.com.tophap.mapbox_gl.proto.TransitionOptions', '10': 'textTranslateTransition'},
  ],
  '4': const [Layer_Symbol_Placement$json, Layer_Symbol_ZOrder$json, Layer_Symbol_Alignment$json, Layer_Symbol_TextFit$json, Layer_Symbol_TextJustify$json, Layer_Symbol_TextTransform$json],
};

const Layer_Symbol_Placement$json = const {
  '1': 'Placement',
  '2': const [
    const {'1': 'PLACEMENT_POINT', '2': 0},
    const {'1': 'PLACEMENT_LINE', '2': 1},
    const {'1': 'PLACEMENT_LINE_CENTER', '2': 2},
  ],
};

const Layer_Symbol_ZOrder$json = const {
  '1': 'ZOrder',
  '2': const [
    const {'1': 'Z_ORDER_AUTO', '2': 0},
    const {'1': 'Z_ORDER_VIEWPORT_Y', '2': 1},
    const {'1': 'Z_ORDER_SOURCE', '2': 2},
  ],
};

const Layer_Symbol_Alignment$json = const {
  '1': 'Alignment',
  '2': const [
    const {'1': 'ALIGNMENT_AUTO', '2': 0},
    const {'1': 'ALIGNMENT_MAP', '2': 1},
    const {'1': 'ALIGNMENT_VIEWPORT', '2': 2},
  ],
};

const Layer_Symbol_TextFit$json = const {
  '1': 'TextFit',
  '2': const [
    const {'1': 'TEXT_FIT_NONE', '2': 0},
    const {'1': 'TEXT_FIT_WIDTH', '2': 1},
    const {'1': 'TEXT_FIT_HEIGHT', '2': 2},
    const {'1': 'TEXT_FIT_BOTH', '2': 3},
  ],
};

const Layer_Symbol_TextJustify$json = const {
  '1': 'TextJustify',
  '2': const [
    const {'1': 'JUSTIFY_AUTO', '2': 0},
    const {'1': 'JUSTIFY_LEFT', '2': 1},
    const {'1': 'JUSTIFY_CENTER', '2': 2},
    const {'1': 'JUSTIFY_RIGHT', '2': 3},
  ],
};

const Layer_Symbol_TextTransform$json = const {
  '1': 'TextTransform',
  '2': const [
    const {'1': 'TRANSFORM_NONE', '2': 0},
    const {'1': 'TRANSFORM_UPPERCASE', '2': 1},
    const {'1': 'TRANSFORM_LOWERCASE', '2': 2},
  ],
};

