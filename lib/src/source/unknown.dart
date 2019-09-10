// File created by
// Lung Razvan <long1eu>
// on 2019-08-07

part of flutter_mapbox_gl;

abstract class UnknownSource //
    with
        _Channel
    implements
        Source,
        Built<UnknownSource, UnknownSourceBuilder> //
{
  factory UnknownSource() =>
      throw StateError('You can not create an instance of this class');

  factory UnknownSource.fromProtoData(Uint8List data) {
    return UnknownSource.fromProto(pb.Source_Unknown.fromBuffer(data));
  }

  factory UnknownSource.fromProto(pb.Source_Unknown proto) {
    return _$UnknownSource((UnknownSourceBuilder b) {
      b
        ..id = proto.id
        ..attribution = proto.hasAttribution() ? proto.attribution : null;
    });
  }

  UnknownSource._();

  @override
  Source _markAsAttached(ChannelWrapper channel, [Source source]) {
    if (source == null) {
      return rebuild((SourceBuilder b) => b.channel = channel);
    } else if (source is UnknownSource) {
      return rebuild((UnknownSourceBuilder b) {
        if (source != null) {
          b
            ..channel = channel
            ..attribution = source.attribution ?? attribution;
        }
      });
    } else {
      throw ArgumentError(
          'Only a UnknownSource can be merged but got ${source.runtimeType}');
    }
  }

  @override
  pb.Source_Unknown get _proto {
    final pb.Source_Unknown message = pb.Source_Unknown.create()..id = id;
    if (attribution != null) {
      message.attribution = attribution;
    }
    return message.freeze();
  }

  @override
  pb.Source get _source {
    return pb.Source.create()
      ..id = id
      ..unknown = _proto
      ..freeze();
  }

  static Serializer<UnknownSource> get serializer => _$unknownSourceSerializer;
}
