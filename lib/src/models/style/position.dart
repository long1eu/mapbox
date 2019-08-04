// File created by
// Lung Razvan <long1eu>
// on 2019-08-01

library position;

import 'dart:typed_data';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:mapbox_gl/src/models/proto/index.dart' as pb;

part 'position.g.dart';

abstract class Position implements Built<Position, PositionBuilder> {
  factory Position([void Function(PositionBuilder b) updates]) = _$Position;

  factory Position.fromProtoData(Uint8List data) {
    return Position.fromProto(pb.Style_Position.fromBuffer(data));
  }

  factory Position.fromProto(pb.Style_Position proto) {
    return _$Position((PositionBuilder b) {
      b
        ..radialCoordinate = proto.radialCoordinate
        ..azimuthalAngle = proto.azimuthalAngle
        ..polarAngle = proto.polarAngle;
    });
  }

  Position._();

  double get radialCoordinate;

  double get azimuthalAngle;

  double get polarAngle;

  pb.Style_Position get proto {
    return pb.Style_Position.create()
      ..radialCoordinate = radialCoordinate
      ..azimuthalAngle = azimuthalAngle
      ..polarAngle = polarAngle
      ..freeze();
  }

  @memoized
  Uint8List get data => proto.writeToBuffer();

  static Serializer<Position> get serializer => _$positionSerializer;
}
