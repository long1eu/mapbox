// File created by
// Lung Razvan <long1eu>
// on 2019-08-07

part of source;

abstract class RasterSource
    with _Channel
    implements Source, Built<RasterSource, RasterSourceBuilder> {
  factory RasterSource({
    @required String id,
    String attribution,
    String uri,
    TileSet tileSet,
    int tileSize = 512,
  }) {
    assert(id != null);
    assert(uri != null || tileSet != null,
        'You must specify eather the uri or provide a tileSet');

    return _$RasterSource((RasterSourceBuilder b) {
      b
        ..id = id
        ..attribution = attribution
        ..uri = uri
        ..tileSet = tileSet?.toBuilder()
        ..tileSize = tileSize;
    });
  }

  factory RasterSource.fromProtoData(Uint8List data) {
    return RasterSource.fromProto(pb.Source_Raster.fromBuffer(data));
  }

  factory RasterSource.fromProto(pb.Source_Raster proto) {
    return _$RasterSource((RasterSourceBuilder b) {
      b
        ..id = proto.id
        ..attribution = proto.hasAttribution() ? proto.attribution : null
        ..uri = proto.hasUri() ? proto.uri : null
        ..tileSet = proto.hasTileSet()
            ? TileSet.fromProto(proto.tileSet).toBuilder()
            : null
        ..tileSize = proto.hasTileSize() ? proto.tileSize : null;
    });
  }

  RasterSource._();

  @nullable
  String get uri;

  @nullable
  TileSet get tileSet;

  @nullable
  int get tileSize;

  @override
  Source markAsAttached(MethodChannel channel, [Source source]) {
    if (source == null) {
      return rebuild((SourceBuilder b) => b.channel = channel);
    } else if (source is RasterSource) {
      return rebuild((RasterSourceBuilder b) {
        if (source != null) {
          b
            ..channel = channel
            ..attribution = source.attribution ?? attribution
            ..uri = source.uri ?? uri
            ..tileSet = (source.tileSet ?? tileSet)?.toBuilder()
            ..tileSize = source.tileSize ?? tileSize;
        }
      });
    } else {
      throw ArgumentError(
          'Only a RasterSource can be merged but got ${source.runtimeType}');
    }
  }

  @override
  pb.Source_Raster get proto {
    final pb.Source_Raster message = pb.Source_Raster.create()
      ..id = id
      ..tileSize = tileSize;

    if (uri != null) {
      message.uri = uri;
    } else if (tileSet != null) {
      message.tileSet = tileSet.proto;
    }

    if (attribution != null) {
      message.attribution = attribution;
    }
    return message..freeze();
  }

  @override
  pb.Source get source {
    return pb.Source.create()
      ..id = id
      ..raster = proto
      ..freeze();
  }

  static Serializer<RasterSource> get serializer => _$rasterSourceSerializer;
}
