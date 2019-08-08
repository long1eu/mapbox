// File created by
// Lung Razvan <long1eu>
// on 2019-08-01

library camera_position;

import 'dart:typed_data';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_mapbox_gl/src/models/latlng.dart';
import 'package:flutter_mapbox_gl/src/models/proto/index.dart' as pb;

part 'camera_position.g.dart';

abstract class CameraPosition implements Built<CameraPosition, CameraPositionBuilder> {
  factory CameraPosition({double bearing, LatLng target, double tilt, double zoom}) {
    return _$CameraPosition((CameraPositionBuilder b) {
      b
        ..bearing = bearing ?? 0
        ..target = target?.toBuilder() ?? LatLng().toBuilder()
        ..tilt = tilt ?? 0
        ..zoom = zoom ?? 0;
    });
  }

  factory CameraPosition.fromProtoData(Uint8List data) {
    return CameraPosition.fromProto(pb.Map__CameraPosition.fromBuffer(data));
  }

  factory CameraPosition.fromProto(pb.Map__CameraPosition proto) {
    return _$CameraPosition((CameraPositionBuilder b) {
      b
        ..bearing = proto.bearing
        ..target = LatLng.fromProto(proto.target).toBuilder()
        ..tilt = proto.tilt
        ..zoom = proto.zoom;
    });
  }

  CameraPosition._();

  double get bearing;

  LatLng get target;

  double get tilt;

  double get zoom;

  pb.Map__CameraPosition get proto {
    return pb.Map__CameraPosition.create()
      ..bearing = bearing
      ..target = target.proto
      ..tilt = tilt
      ..zoom = zoom
      ..freeze();
  }

  @memoized
  Uint8List get data => proto.writeToBuffer();

  static Serializer<CameraPosition> get serializer => _$cameraPositionSerializer;
}

class CameraMoveStartedReason extends EnumClass {
  const CameraMoveStartedReason._(String name) : super(name);

  static const CameraMoveStartedReason apiGesture = _$apiGesture;
  static const CameraMoveStartedReason developerAnimation = _$developerAnimation;
  static const CameraMoveStartedReason apiAnimation = _$apiAnimation;

  static BuiltSet<CameraMoveStartedReason> get values => _$values;

  pb.Map__CameraPosition_MoveReason get proto => pb.Map__CameraPosition_MoveReason.valueOf(values.toList().indexOf(this));

  static CameraMoveStartedReason valueOf(String name) => _$valueOf(name);

  static Serializer<CameraMoveStartedReason> get serializer => _$cameraMoveStartedReasonSerializer;

  static CameraMoveStartedReason fromProtoData(int index) => values.elementAt(index);

  static CameraMoveStartedReason fromProto(pb.Map__CameraPosition_MoveReason proto) => values.elementAt(proto.value);
}
