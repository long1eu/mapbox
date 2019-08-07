// File created by
// Lung Razvan <long1eu>
// on 2019-08-07

part of source;

abstract class VectorSource with _Channel implements Source, Built<VectorSource, VectorSourceBuilder> {
  factory VectorSource({@required String id, String attribution, String uri, TileSet tileSet}) {
    assert(id != null);
    assert(uri != null || tileSet != null, 'You must specify eather the uri or provided an tileSet');

    return _$VectorSource((VectorSourceBuilder b) {
      b
        ..id = id
        ..attribution = attribution
        ..uri = uri
        ..tileSet = tileSet?.toBuilder();
    });
  }

  factory VectorSource.fromProtoData(Uint8List data) {
    return VectorSource.fromProto(pb.Source_Vector.fromBuffer(data));
  }

  factory VectorSource.fromProto(pb.Source_Vector proto) {
    return _$VectorSource((VectorSourceBuilder b) {
      b
        ..id = proto.id
        ..attribution = proto.hasAttribution() ? proto.attribution : null
        ..uri = proto.hasUri() ? proto.uri : null
        ..tileSet = proto.hasTileSet() ? TileSet.fromProto(proto.tileSet).toBuilder() : null;
    });
  }

  VectorSource._();

  @nullable
  String get uri;

  @nullable
  TileSet get tileSet;

  Source markAsAttached(MethodChannel channel, Source source) {
    if (source is VectorSource) {
      return rebuild((b) {
        b
          ..channel = channel
          ..attribution = source.attribution ?? attribution
          ..uri = source.uri ?? this.uri
          ..tileSet = (source.tileSet ?? this.tileSet)?.toBuilder();
      });
    } else {
      throw ArgumentError('Only a VectorSource can be merged but got ${source.runtimeType}');
    }
  }

  pb.Source_Vector get proto {
    final pb.Source_Vector message = pb.Source_Vector.create()..id = id;

    if (uri != null) {
      message.uri = uri;
    } else if (tileSet != null) {
      message.tileSet = tileSet.proto;
    }

    if (attribution != null) message.attribution = attribution;
    return message..freeze();
  }

  pb.Source get source {
    return pb.Source.create()
      ..id = this.id
      ..vector = proto
      ..freeze();
  }

  static Serializer<VectorSource> get serializer => _$vectorSourceSerializer;
}
