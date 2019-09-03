// File created by
// Lung Razvan <long1eu>
// on 2019-08-01

library camera_position;

import 'dart:typed_data';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_mapbox_gl/src/models/latlng.dart';
import 'package:flutter_mapbox_gl/src/models/latlng_bounds.dart';
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
        ..zoom = proto.zoom
        ..bounds = LatLngBounds.fromProto(proto.bounds).toBuilder();
    });
  }

  CameraPosition._();

  double get bearing;

  LatLng get target;

  double get tilt;

  double get zoom;

  @nullable
  LatLngBounds get bounds;

  CameraPosition copyWith({
    double bearing,
    LatLng target,
    double tilt,
    double zoom,
  }) {
    return _$CameraPosition((CameraPositionBuilder b) {
      b
        ..bearing = bearing ?? this.bearing
        ..target = (target ?? this.target).toBuilder()
        ..tilt = tilt ?? this.tilt
        ..zoom = zoom ?? this.zoom;
    });
  }

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
