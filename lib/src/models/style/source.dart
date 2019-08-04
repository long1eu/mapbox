// File created by
// Lung Razvan <long1eu>
// on 2019-08-01

library source;

import 'dart:typed_data';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:mapbox_gl/src/models/proto/index.dart' as pb;
import 'package:meta/meta.dart';
import 'package:protobuf/protobuf.dart' as pb;

part 'source.g.dart';

@BuiltValue(instantiable: false)
abstract class SourceModel extends Object {
  String get id;

  String get attribution;

  pb.GeneratedMessage get proto => null;

  SourceModel rebuild(void Function(SourceModelBuilder) updates);

  SourceModelBuilder toBuilder();

  static SourceModel fromProtoData(Uint8List data) {
    return fromProto(pb.Source.fromBuffer(data));
  }

  static SourceModel fromProto(pb.Source proto) {
    switch (proto.whichType()) {
      case pb.Source_Type.geoJson:
        return GeoJsonSourceModel.fromProto(proto.geoJson);
      case pb.Source_Type.image:
        return ImageSourceModel.fromProto(proto.image);
      default:
        return null;
    }
  }
}

abstract class GeoJsonSourceModel implements SourceModel, Built<GeoJsonSourceModel, GeoJsonSourceModelBuilder> {
  factory GeoJsonSourceModel({@required String id, @required String uri}) {
    return _$GeoJsonSourceModel((GeoJsonSourceModelBuilder b) {
      b
        ..id = id
        ..uri = uri;
    });
  }

  factory GeoJsonSourceModel.fromProtoData(Uint8List data) {
    return GeoJsonSourceModel.fromProto(pb.Source_GeoJson.fromBuffer(data));
  }

  factory GeoJsonSourceModel.fromProto(pb.Source_GeoJson proto) {
    return _$GeoJsonSourceModel((GeoJsonSourceModelBuilder b) {
      b
        ..id = proto.id
        ..attribution = proto.attribution
        ..uri = proto.uri;
    });
  }

  GeoJsonSourceModel._();

  @nullable
  String get uri;

  pb.Source_GeoJson get proto {
    return pb.Source_GeoJson.create()
      ..id = id
      ..attribution = attribution
      ..uri = uri
      ..freeze();
  }

  @memoized
  Uint8List get data => proto.writeToBuffer();

  static Serializer<GeoJsonSourceModel> get serializer => _$geoJsonSourceModelSerializer;
}

abstract class GeoJsonOptions implements Built<GeoJsonOptions, GeoJsonOptionsBuilder> {
  factory GeoJsonOptions({
    int minZoom = 0,
    int maxZoom = 25,
    int buffer = 128,
    bool lineMetrics = false,
    double tolerance = 0.375,
    bool cluster = false,
    int clusterMaxZoom,
    int clusterRadius = 50,
  }) {
    return _$GeoJsonOptions((GeoJsonOptionsBuilder b) {
      b
        ..minZoom = minZoom
        ..maxZoom = maxZoom
        ..buffer = buffer
        ..lineMetrics = lineMetrics
        ..tolerance = tolerance
        ..cluster = cluster
        ..clusterMaxZoom = clusterMaxZoom ?? maxZoom - 1
        ..clusterRadius = clusterRadius;
    });
  }

  factory GeoJsonOptions.fromProtoData(Uint8List data) {
    return GeoJsonOptions.fromProto(pb.Source_GeoJson_Options.fromBuffer(data));
  }

  factory GeoJsonOptions.fromProto(pb.Source_GeoJson_Options proto) {
    return _$GeoJsonOptions((GeoJsonOptionsBuilder b) {
      b
        ..minZoom = proto.minZoom
        ..maxZoom = proto.maxZoom
        ..buffer = proto.buffer
        ..lineMetrics = proto.lineMetrics
        ..tolerance = proto.tolerance
        ..cluster = proto.cluster
        ..clusterMaxZoom = proto.clusterMaxZoom
        ..clusterRadius = proto.clusterRadius;
    });
  }

  GeoJsonOptions._();

  int get minZoom;

  int get maxZoom;

  int get buffer;

  bool get lineMetrics;

  double get tolerance;

  bool get cluster;

  int get clusterMaxZoom;

  int get clusterRadius;

  pb.Source_GeoJson_Options get proto {
    return pb.Source_GeoJson_Options.create()
      ..minZoom = minZoom
      ..maxZoom = maxZoom
      ..buffer = buffer
      ..lineMetrics = lineMetrics
      ..tolerance = tolerance
      ..cluster = cluster
      ..clusterMaxZoom = clusterMaxZoom
      ..clusterRadius = clusterRadius
      ..freeze();
  }

  @memoized
  Uint8List get data => proto.writeToBuffer();

  static Serializer<GeoJsonOptions> get serializer => _$geoJsonOptionsSerializer;
}

abstract class ImageSourceModel implements SourceModel, Built<ImageSourceModel, ImageSourceModelBuilder> {
  factory ImageSourceModel({@required String id, @required String uri}) {
    return _$ImageSourceModel((ImageSourceModelBuilder b) {
      b
        ..id = id
        ..uri = uri;
    });
  }

  factory ImageSourceModel.fromProtoData(Uint8List data) {
    return ImageSourceModel.fromProto(pb.Source_Image.fromBuffer(data));
  }

  factory ImageSourceModel.fromProto(pb.Source_Image proto) {
    return _$ImageSourceModel((ImageSourceModelBuilder b) {
      b
        ..id = proto.id
        ..attribution = proto.attribution
        ..uri = proto.uri;
    });
  }

  ImageSourceModel._();

  @nullable
  String get uri;

  pb.Source_Image get proto {
    return pb.Source_Image.create()
      ..id = id
      ..attribution = attribution
      ..uri = uri
      ..freeze();
  }

  @memoized
  Uint8List get data => proto.writeToBuffer();

  static Serializer<ImageSourceModel> get serializer => _$imageSourceModelSerializer;
}
