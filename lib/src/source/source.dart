// File created by
// Lung Razvan <long1eu>
// on 2019-08-07

library source;

import 'dart:async';
import 'dart:typed_data';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mapbox_gl/src/models/index.dart';
import 'package:flutter_mapbox_gl/src/models/proto/index.dart' as pb;
import 'package:meta/meta.dart';
import 'package:protobuf/protobuf.dart' as pb;

part 'geojson.dart';

part 'image.dart';

part 'raster.dart';

part 'raster_dem.dart';

part 'source.g.dart';

part 'unknown.dart';

part 'vector.dart';

@BuiltValue(instantiable: false)
abstract class Source extends Object {
  String get id;

  @nullable
  String get attribution;

  pb.GeneratedMessage get proto => null;

  pb.Source get source => null;

  Uint8List get data => null;

  Uint8List get dataSource => null;

  @visibleForOverriding
  Source markAsAttached(MethodChannel channel, Source source);

  @nullable
  @BuiltValueField(compare: false, serialize: false)
  @visibleForOverriding
  MethodChannel get channel;

  bool get isAttached => null;

  Source rebuild(void Function(SourceBuilder) updates);

  SourceBuilder toBuilder();

  static Source fromProtoData(Uint8List data) {
    return fromProto(pb.Source.fromBuffer(data));
  }

  static Source fromProto(pb.Source proto) {
    switch (proto.whichType()) {
      case pb.Source_Type.geoJson:
        return GeoJsonSource.fromProto(proto.geoJson);
      case pb.Source_Type.image:
        return ImageSource.fromProto(proto.image);
      case pb.Source_Type.vector:
        return VectorSource.fromProto(proto.vector);
      case pb.Source_Type.raster:
        return RasterSource.fromProto(proto.raster);
      case pb.Source_Type.rasterDem:
        return RasterDemSource.fromProto(proto.rasterDem);
      case pb.Source_Type.unknown:
        return UnknownSource.fromProto(proto.unknown);
      case pb.Source_Type.notSet:
        throw ArgumentError('Source type not set.');
        break;
    }

    throw ArgumentError('Unknown source type ${proto.whichType()}.');
  }
}

mixin _Channel {
  Source rebuild(void Function(SourceBuilder) updates);

  @nullable
  MethodChannel get channel;

  pb.GeneratedMessage get proto;

  pb.Source get source;

  @memoized
  Uint8List get data => proto.writeToBuffer();

  @memoized
  Uint8List get dataSource => source.writeToBuffer();

  bool get isAttached => channel != null;

  Future<T> _update<T extends Source>(T source) {
    return channel
        .invokeMethod<dynamic>('source#update', source.dataSource)
        .then((dynamic _) => source);
  }
}
