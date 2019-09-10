// File created by
// Lung Razvan <long1eu>
// on 2019-08-01

part of flutter_mapbox_gl;

abstract class LatLng implements Built<LatLng, LatLngBuilder> {
  factory LatLng({
    double latitude = 0.0,
    double longitude = 0.0,
    double altitude,
  }) {
    return _$LatLng((LatLngBuilder b) {
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

class LatLngTween extends Tween<LatLng> {
  LatLngTween({LatLng begin, LatLng end}) : super(begin: begin, end: end);

  @override
  LatLng lerp(double t) {
    assert(t != null);
    if (begin == null && end == null) {
      return null;
    }
    if (begin == null) {
      return LatLng(longitude: end.longitude * t, latitude: end.latitude * t);
    }
    if (end == null) {
      return LatLng(
        longitude: begin.longitude * (1.0 - t),
        latitude: begin.latitude * (1.0 - t),
      );
    }
    return LatLng(
      longitude: lerpDouble(
        begin.longitude,
        end.longitude,
        t,
      ),
      latitude: lerpDouble(
        begin.latitude,
        end.latitude,
        t,
      ),
    );
  }
}
