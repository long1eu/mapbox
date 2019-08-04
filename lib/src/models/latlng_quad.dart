// File created by
// Lung Razvan <long1eu>
// on 2019-08-01

library latlng_quad;

import 'dart:typed_data';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:mapbox_gl/src/models/latlng.dart';
import 'package:mapbox_gl/src/models/proto/index.dart' as pb;

part 'latlng_quad.g.dart';

abstract class LatLngQuad implements Built<LatLngQuad, LatLngQuadBuilder> {
  factory LatLngQuad([void Function(LatLngQuadBuilder b) updates]) = _$LatLngQuad;

  factory LatLngQuad.fromProtoData(Uint8List data) {
    return LatLngQuad.fromProto(pb.LatLngQuad.fromBuffer(data));
  }

  factory LatLngQuad.fromProto(pb.LatLngQuad proto) {
    return _$LatLngQuad((LatLngQuadBuilder b) {
      b
        ..topLeft = LatLng.fromProto(proto.topLeft).toBuilder()
        ..topRight = LatLng.fromProto(proto.topRight).toBuilder()
        ..bottomRight = LatLng.fromProto(proto.bottomRight).toBuilder()
        ..bottomLeft = LatLng.fromProto(proto.bottomLeft).toBuilder();
    });
  }

  LatLngQuad._();

  LatLng get topLeft;

  LatLng get topRight;

  LatLng get bottomRight;

  LatLng get bottomLeft;

  pb.LatLngQuad get proto {
    return pb.LatLngQuad.create()
      ..topLeft = topLeft.proto
      ..topRight = topRight.proto
      ..bottomRight = bottomRight.proto
      ..bottomLeft = bottomLeft.proto
      ..freeze();
  }

  @memoized
  Uint8List get data => proto.writeToBuffer();

  static Serializer<LatLngQuad> get serializer => _$latLngQuadSerializer;
}
