// File created by
// Lung Razvan <long1eu>
// on 2019-08-01

library latlng;

import 'dart:typed_data';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:mapbox_gl/src/models/proto/index.dart' as pb;

part 'latlng.g.dart';

abstract class LatLng implements Built<LatLng, LatLngBuilder> {
  factory LatLng({
    double latitude = 0.0,
    double longitude = 0.0,
    double altitude,
  }) {
    return _$LatLng((b) {
      b
        ..latitude = latitude
        ..longitude = longitude
        ..altitude = altitude;
    });
  }

  factory LatLng.fromProtoData(Uint8List data) {
    return LatLng.fromProto(pb.LatLng.fromBuffer(data));
  }

  factory LatLng.fromProto(pb.LatLng proto) {
    return _$LatLng((LatLngBuilder b) {
      b
        ..latitude = proto.latitude
        ..longitude = proto.longitude
        ..altitude = proto.hasAltitude() ? proto.altitude : null;
    });
  }

  LatLng._();

  double get latitude;

  double get longitude;

  @nullable
  double get altitude;

  pb.LatLng get proto {
    final pb.LatLng message = pb.LatLng.create()
      ..latitude = latitude
      ..longitude = longitude;

    if (altitude != null) {
      message.altitude = altitude;
    }

    return message..freeze();
  }

  @memoized
  Uint8List get data => proto.writeToBuffer();

  static Serializer<LatLng> get serializer => _$latLngSerializer;
}
