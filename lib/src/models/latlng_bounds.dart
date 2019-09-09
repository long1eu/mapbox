// File created by
// Lung Razvan <long1eu>
// on 2019-08-01

library latlng_bounds;

import 'dart:typed_data';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_mapbox_gl/src/models/proto/index.dart' as pb;

part 'latlng_bounds.g.dart';

abstract class LatLngBounds
    implements Built<LatLngBounds, LatLngBoundsBuilder> {
  factory LatLngBounds({
    double north = 90.0,
    double south = -90.0,
    double east = 180.0,
    double west = -180.0,
  }) {
    assert(!north.isNaN);
    assert(!south.isNaN);
    assert(!east.isNaN && east.isFinite);
    assert(!west.isNaN && west.isFinite);
    assert(north >= -90 && north <= 90);
    assert(south >= -90 && south <= 90);
    assert(north > south,
        "latitudeNorth($north) cannot be less than latitudeSouth($south)");
    assert(east > west,
        "longitudeEast($east) cannot be less than longitudeWest($west)");

    return _$LatLngBounds((LatLngBoundsBuilder b) {
      b
        ..north = north
        ..south = south
        ..east = east
        ..west = west;
    });
  }

  factory LatLngBounds.fromProtoData(Uint8List data) {
    return LatLngBounds.fromProto(pb.LatLngBounds.fromBuffer(data));
  }

  factory LatLngBounds.fromProto(pb.LatLngBounds proto) {
    return _$LatLngBounds((LatLngBoundsBuilder b) {
      b
        ..north = proto.north
        ..south = proto.south
        ..east = proto.east
        ..west = proto.west;
    });
  }

  LatLngBounds._();

  double get north;

  double get south;

  double get east;

  double get west;

  pb.LatLngBounds get proto {
    return pb.LatLngBounds.create()
      ..north = north
      ..south = south
      ..east = east
      ..west = west
      ..freeze();
  }

  @memoized
  Uint8List get data => proto.writeToBuffer();

  static Serializer<LatLngBounds> get serializer => _$latLngBoundsSerializer;
}
