// File created by
// Lung Razvan <long1eu>
// on 2019-08-07

part of flutter_mapbox_gl;

abstract class RasterDemSource //
    with
        _Channel
    implements
        Source,
        Built<RasterDemSource, RasterDemSourceBuilder> //
{
  factory RasterDemSource({
    @required String id,
    String attribution,
    String uri,
    TileSet tileSet,
    int tileSize = 512,
  }) {
    assert(id != null);
    assert(uri != null || tileSet != null,
        'You must specify eather the uri or provide a tileSet');

    return _$RasterDemSource((RasterDemSourceBuilder b) {
      b
        ..id = id
        ..attribution = attribution
        ..uri = uri
        ..tileSet = tileSet?.toBuilder()
        ..tileSize = tileSize;
    });
  }

  factory RasterDemSource.fromProtoData(Uint8List data) {
    return RasterDemSource.fromProto(pb.Source_RasterDem.fromBuffer(data));
  }

  factory RasterDemSource.fromProto(pb.Source_RasterDem proto) {
    return _$RasterDemSource((RasterDemSourceBuilder b) {
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

  RasterDemSource._();

  @nullable
  String get uri;

  @nullable
  TileSet get tileSet;

  @nullable
  int get tileSize;

  @override
  Source _markAsAttached(ChannelWrapper channel, [Source source]) {
    if (source == null) {
      return rebuild((SourceBuilder b) => b.channel = channel);
    } else if (source is RasterDemSource) {
      return rebuild((RasterDemSourceBuilder b) {
        if (source != null) {
          if (uri != null) {
            b.uri = source.uri;
          } else if (tileSet != null) {
            b.tileSet = source.tileSet.toBuilder();
          }

          b
            ..channel = channel
            ..attribution = source.attribution ?? attribution
            ..tileSize = source.tileSize ?? tileSize;
        }
      });
    } else {
      throw ArgumentError(
          'Only a RasterDemSource can be merged but got ${source.runtimeType}');
    }
  }

  @override
  pb.Source_RasterDem get _proto {
    final pb.Source_RasterDem message = pb.Source_RasterDem.create()
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
  pb.Source get _source {
    return pb.Source.create()
      ..id = id
      ..rasterDem = _proto
      ..freeze();
  }

  static Serializer<RasterDemSource> get serializer =>
      _$rasterDemSourceSerializer;
}
