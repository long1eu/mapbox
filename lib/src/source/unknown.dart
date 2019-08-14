// File created by
// Lung Razvan <long1eu>
// on 2019-08-07

part of source;

abstract class UnknownSource
    with _Channel
    implements Source, Built<UnknownSource, UnknownSourceBuilder> {
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

  Source markAsAttached(MethodChannel channel, Source source) {
    if (source is UnknownSource) {
      return rebuild((b) {
        b
          ..channel = channel
          ..attribution = source.attribution ?? attribution;
      });
    } else {
      throw ArgumentError(
          'Only a UnknownSource can be merged but got ${source.runtimeType}');
    }
  }

  pb.Source_Unknown get proto {
    final pb.Source_Unknown message = pb.Source_Unknown.create()..id = id;
    if (attribution != null) message.attribution = attribution;
    return message.freeze();
  }

  pb.Source get source {
    return pb.Source.create()
      ..id = this.id
      ..unknown = proto
      ..freeze();
  }

  static Serializer<UnknownSource> get serializer => _$unknownSourceSerializer;
}
