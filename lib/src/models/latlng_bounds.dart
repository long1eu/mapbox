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
    double latitudeNorth = 90.0,
    double latitudeSouth = -90.0,
    double longitudeEast = 180.0,
    double longitudeWest = -180.0,
  }) {
    assert(!latitudeNorth.isNaN);
    assert(!latitudeSouth.isNaN);
    assert(!longitudeEast.isNaN && longitudeEast.isFinite);
    assert(!longitudeWest.isNaN && longitudeWest.isFinite);
    assert(latitudeNorth >= -90 && latitudeNorth <= 90);
    assert(latitudeSouth >= -90 && latitudeSouth <= 90);
    assert(latitudeNorth > latitudeSouth,
        "latitudeNorth($latitudeNorth) cannot be less than latitudeSouth($latitudeSouth)");
    assert(longitudeEast > longitudeWest,
        "longitudeEast($longitudeEast) cannot be less than longitudeWest($longitudeWest)");

    return _$LatLngBounds((LatLngBoundsBuilder b) {
      b
        ..latitudeNorth = latitudeNorth
        ..latitudeSouth = latitudeSouth
        ..longitudeEast = longitudeEast
        ..longitudeWest = longitudeWest;
    });
  }

  factory LatLngBounds.fromProtoData(Uint8List data) {
    return LatLngBounds.fromProto(pb.LatLngBounds.fromBuffer(data));
  }

  factory LatLngBounds.fromProto(pb.LatLngBounds proto) {
    return _$LatLngBounds((LatLngBoundsBuilder b) {
      b
        ..latitudeNorth = proto.latitudeNorth
        ..latitudeSouth = proto.latitudeSouth
        ..longitudeEast = proto.longitudeEast
        ..longitudeWest = proto.longitudeWest;
    });
  }

  LatLngBounds._();

  double get latitudeNorth;

  double get latitudeSouth;

  double get longitudeEast;

  double get longitudeWest;

  pb.LatLngBounds get proto {
    return pb.LatLngBounds.create()
      ..latitudeNorth = latitudeNorth
      ..latitudeSouth = latitudeSouth
      ..longitudeEast = longitudeEast
      ..longitudeWest = longitudeWest
      ..freeze();
  }

  @memoized
  Uint8List get data => proto.writeToBuffer();

  static Serializer<LatLngBounds> get serializer => _$latLngBoundsSerializer;
}
