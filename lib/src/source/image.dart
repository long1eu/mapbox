// File created by
// Lung Razvan <long1eu>
// on 2019-08-07

part of source;

abstract class ImageSource with _Channel implements Source, Built<ImageSource, ImageSourceBuilder> {
  factory ImageSource({
    @required String id,
    @required LatLngQuad coordinates,
    String uri,
    Uint8List image,
  }) {
    assert(id != null);
    assert(coordinates != null);
    assert(uri != null || image != null, 'You must specify eather the uri or provided an image');

    return _$ImageSource((ImageSourceBuilder b) {
      b
        ..id = id
        ..coordinates = coordinates.toBuilder()
        ..uri = uri
        ..image = image;
    });
  }

  factory ImageSource.fromProtoData(Uint8List data) {
    return ImageSource.fromProto(pb.Source_Image.fromBuffer(data));
  }

  factory ImageSource.fromProto(pb.Source_Image proto) {
    return _$ImageSource((ImageSourceBuilder b) {
      b
        ..id = proto.id
        ..attribution = proto.hasAttribution() ? proto.attribution : null
        ..coordinates = proto.hasCoordinates() ? LatLngQuad.fromProto(proto.coordinates).toBuilder() : null
        ..uri = proto.hasUri() ? proto.uri : null
        ..image = proto.hasImage() ? Uint8List.fromList(proto.image) : null;
    });
  }

  ImageSource._();

  @nullable
  LatLngQuad get coordinates;

  @nullable
  String get uri;

  @nullable
  Uint8List get image;

  FutureOr<ImageSource> copyWith({LatLngQuad coordinate, String uri, Uint8List image}) {
    assert(uri == null || image == null, 'You can have ony one source for the image.');

    final ImageSource source = rebuild((b) {
      return b
        ..coordinates = (coordinate ?? this.coordinates).toBuilder()
        ..uri = uri ?? this.uri
        ..image = image ?? this.image;
    });
    if (!isAttached || this == source) return source;
    return _update(source);
  }

  Source markAsAttached(MethodChannel channel, Source source) {
    if (source is ImageSource) {
      return rebuild((b) {
        b
          ..channel = channel
          ..attribution = source.attribution ?? attribution
          ..coordinates = (source.coordinates ?? coordinates).toBuilder()
          ..uri = source.uri ?? uri
          ..image = source.image ?? image;
      });
    } else {
      throw ArgumentError('Only a ImageSource can be merged but got ${source.runtimeType}');
    }
  }

  Future<ImageSource> copyFrom(Source source) async {
    if (source is ImageSource) {
      final ImageSource _source = rebuild((b) {
        b
          ..channel = channel
          ..attribution = source.attribution ?? attribution
          ..coordinates = (source.coordinates ?? coordinates).toBuilder()
          ..uri = source.uri ?? uri
          ..image = source.image ?? image;
      });
      if (!isAttached || this == _source) return _source;
      return _update(_source);
    } else {
      throw ArgumentError('Only a ImageSource can be merged but got ${source.runtimeType}');
    }
  }

  pb.Source_Image get proto {
    final pb.Source_Image message = pb.Source_Image.create()..id = id;

    if (uri != null) {
      message.uri = uri;
    } else if (image != null) {
      message.image = image;
    }

    if (coordinates != null) message.coordinates = coordinates.proto;
    if (attribution != null) message.attribution = attribution;
    return message.freeze();
  }

  pb.Source get source {
    return pb.Source.create()
      ..id = this.id
      ..image = proto
      ..freeze();
  }

  static Serializer<ImageSource> get serializer => _$imageSourceSerializer;
}
