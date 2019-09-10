// File created by
// Lung Razvan <long1eu>
// on 2019-08-07

part of flutter_mapbox_gl;

@BuiltValue(instantiable: false)
abstract class Source extends Object with _Channel {
  String get id;

  @nullable
  String get attribution;

  @override
  pb.GeneratedMessage get _proto => null;

  @override
  pb.Source get _source => null;

  @override
  Uint8List get _data => null;

  @override
  Uint8List get _dataSource => null;

  @visibleForOverriding
  Source _markAsAttached(ChannelWrapper channel, [Source source]);

  @override
  @nullable
  @BuiltValueField(compare: false, serialize: false)
  @visibleForOverriding
  ChannelWrapper get channel;

  @override
  bool get isAttached => null;

  @override
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
  ChannelWrapper get channel;

  pb.GeneratedMessage get _proto;

  pb.Source get _source;

  @memoized
  Uint8List get _data => _proto.writeToBuffer();

  @memoized
  Uint8List get _dataSource => _source.writeToBuffer();

  bool get isAttached => channel.isAttached;

  Future<T> _update<T extends Source>(T source) {
    return channel
        ._invokeMethod<dynamic>('source#update', source._dataSource)
        .then((dynamic _) => source);
  }
}
