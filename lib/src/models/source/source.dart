// File created by
// Lung Razvan <long1eu>
// on 2019-08-01

library source;

import 'dart:typed_data';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:mapbox_gl/src/models/index.dart';
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
      case pb.Source_Type.vector:
        return VectorSourceModel.fromProto(proto.vector);
      case pb.Source_Type.unknown:
        return UnknownSourceModel.fromProto(proto.unknown);
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

abstract class VectorSourceModel implements SourceModel, Built<VectorSourceModel, VectorSourceModelBuilder> {
  factory VectorSourceModel({@required String id, String attribution, String uri, TileSet tileSet}) {
    assert(id != null);
    assert(uri != null || tileSet != null);

    return _$VectorSourceModel((VectorSourceModelBuilder b) {
      b
        ..id = id
        ..attribution = attribution
        ..uri = uri
        ..tileSet = tileSet?.toBuilder();
    });
  }

  factory VectorSourceModel.fromProtoData(Uint8List data) {
    return VectorSourceModel.fromProto(pb.Source_Vector.fromBuffer(data));
  }

  factory VectorSourceModel.fromProto(pb.Source_Vector proto) {
    return _$VectorSourceModel((VectorSourceModelBuilder b) {
      b
        ..id = proto.id
        ..attribution = proto.attribution
        ..uri = proto.uri
        ..tileSet = proto.hasTileSet() ? TileSet.fromProto(proto.tileSet).toBuilder() : null;
    });
  }

  pb.Source_Vector get proto {
    final pb.Source_Vector message = pb.Source_Vector.create()
      ..id = id
      ..attribution = attribution;

    if (uri != null) {
      message.uri = uri;
    } else if (tileSet != null) {
      message.tileSet = tileSet.proto;
    }

    return message..freeze();
  }

  @memoized
  Uint8List get data => proto.writeToBuffer();

  VectorSourceModel._();

  @nullable
  String get uri;

  @nullable
  TileSet get tileSet;

  static Serializer<VectorSourceModel> get serializer => _$vectorSourceModelSerializer;
}

abstract class UnknownSourceModel implements SourceModel, Built<UnknownSourceModel, UnknownSourceModelBuilder> {
  factory UnknownSourceModel() => throw StateError('You can not create an instance of this class');

  factory UnknownSourceModel.fromProtoData(Uint8List data) {
    return UnknownSourceModel.fromProto(pb.Source_Unknown.fromBuffer(data));
  }

  factory UnknownSourceModel.fromProto(pb.Source_Unknown proto) {
    return _$UnknownSourceModel((UnknownSourceModelBuilder b) {
      b
        ..id = proto.id
        ..attribution = proto.attribution;
    });
  }

  pb.Source_Unknown get proto {
    return pb.Source_Unknown.create()
      ..id = id
      ..attribution = attribution
      ..freeze();
  }

  @memoized
  Uint8List get data => proto.writeToBuffer();

  UnknownSourceModel._();

  static Serializer<UnknownSourceModel> get serializer => _$unknownSourceModelSerializer;
}
