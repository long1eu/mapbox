// File created by
// Lung Razvan <long1eu>
// on 2019-08-05

library tile_set;

import 'dart:typed_data';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_mapbox_gl/flutter_mapbox_gl.dart';
import 'package:flutter_mapbox_gl/src/models/proto/index.dart' as pb;
import 'package:pub_semver/pub_semver.dart';

part 'tile_set.g.dart';

abstract class TileSet implements Built<TileSet, TileSetBuilder> {
  factory TileSet({
    Version tileJson,
    String name,
    String description,
    Version version,
    String attribution,
    String template,
    String legend,
    String scheme = 'xyz',
    List<String> tiles,
    List<String> grids = const <String>[],
    List<String> data = const <String>[],
    double minZoom = 0.0,
    double maxZoom = 22.0,
    LatLngBounds bounds,
    LatLng center,
    int zoom,
    String encoding,
  }) {
    assert(tileJson != null);
    assert(scheme != null);
    assert(tiles != null && tiles.isNotEmpty);
    assert(grids != null);
    assert(minZoom != null && minZoom >= 0 && minZoom <= 22);
    assert(maxZoom != null && maxZoom >= 0 && maxZoom <= 22);
    bounds ??= LatLngBounds();
    if (center != null) {
      assert(zoom != null && zoom >= minZoom && zoom <= maxZoom);
    }

    return _$TileSet((TileSetBuilder b) {
      b
        ..tileJson = tileJson
        ..name = name
        ..description = description
        ..version = version
        ..attribution = attribution
        ..template = template
        ..legend = legend
        ..scheme = scheme
        ..tiles = ListBuilder<String>(tiles)
        ..grids = ListBuilder<String>(grids)
        ..data = ListBuilder<String>(data)
        ..minZoom = minZoom
        ..maxZoom = maxZoom
        ..bounds = bounds?.toBuilder()
        ..center = center?.toBuilder()
        ..zoom = zoom
        ..encoding = encoding;
    });
  }

  factory TileSet.fromProtoData(Uint8List data) {
    return TileSet.fromProto(pb.Source_TileSet.fromBuffer(data));
  }

  factory TileSet.fromProto(pb.Source_TileSet proto) {
    return _$TileSet((TileSetBuilder b) {
      return _$TileSet((TileSetBuilder b) {
        b
          ..tileJson = Version.parse(proto.tileJson)
          ..name = proto.hasName() ? proto.name : null
          ..description = proto.hasDescription() ? proto.description : null
          ..version = proto.hasVersion() ? Version.parse(proto.version) : null
          ..attribution = proto.hasAttribution() ? proto.attribution : null
          ..template = proto.hasTemplate() ? proto.template : null
          ..legend = proto.hasLegend() ? proto.legend : null
          ..scheme = proto.scheme
          ..tiles = ListBuilder<String>(proto.tiles)
          ..grids = ListBuilder<String>(proto.grids)
          ..data = ListBuilder<String>(proto.data)
          ..minZoom = proto.minZoom
          ..maxZoom = proto.maxZoom
          ..bounds = LatLngBounds(
            longitudeWest: proto.bounds[0],
            latitudeSouth: proto.bounds[1],
            longitudeEast: proto.bounds[2],
            latitudeNorth: proto.bounds[3],
          ).toBuilder()
          ..center = proto.center.isNotEmpty
              ? LatLng(
                  latitude: proto.center[1],
                  longitude: proto.center[0],
                ).toBuilder()
              : null
          ..zoom = proto.center.isNotEmpty ? proto.center[2].toInt() : null
          ..encoding = proto.encoding;
      });
    });
  }

  TileSet._();

  Version get tileJson;

  @nullable
  String get name;

  @nullable
  String get description;

  @nullable
  Version get version;

  @nullable
  String get attribution;

  @nullable
  String get template;

  @nullable
  String get legend;

  String get scheme;

  BuiltList<String> get tiles;

  BuiltList<String> get grids;

  BuiltList<String> get data;

  double get minZoom;

  double get maxZoom;

  LatLngBounds get bounds;

  @nullable
  LatLng get center;

  @nullable
  int get zoom;

  @nullable
  String get encoding;

  pb.Source_TileSet get proto {
    final pb.Source_TileSet message = pb.Source_TileSet.create()
      ..tileJson = tileJson.toString()
      ..scheme = scheme
      ..tiles.addAll(tiles)
      ..grids.addAll(grids)
      ..data.addAll(data)
      ..minZoom = minZoom
      ..maxZoom = maxZoom
      ..bounds.addAll(<double>[
        bounds.longitudeWest,
        bounds.latitudeSouth,
        bounds.longitudeEast,
        bounds.latitudeNorth
      ]);

    if (name != null) message.name = name;
    if (description != null) message.description = description;
    if (version != null) message.version = version.toString();
    if (attribution != null) message.attribution = attribution;
    if (template != null) message.template = template;
    if (legend != null) message.legend = legend;
    if (center != null && zoom != null)
      message.center.addAll(<double>[
        center.longitude,
        center.latitude,
        zoom.toDouble(),
      ]);
    if (encoding != null) message.encoding = encoding;

    return message..freeze();
  }

  @memoized
  Uint8List get protoData => proto.writeToBuffer();

  static Serializer<TileSet> get serializer => _$tileSetSerializer;
}
