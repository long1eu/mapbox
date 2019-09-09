// File created by
// Lung Razvan <long1eu>
// on 2019-08-07

part of source;

abstract class ImageSource
    with _Channel
    implements Source, Built<ImageSource, ImageSourceBuilder> {
  factory ImageSource({
    @required String id,
    @required LatLngQuad coordinates,
    String uri,
    Uint8List image,
    String asset,
  }) {
    assert(id != null);
    assert(coordinates != null);
    assert(<dynamic>[uri, image, asset].any((dynamic it) => it != null),
        'You must specify a uri, provided an image or asset file.');

    return _$ImageSource((ImageSourceBuilder b) {
      b
        ..id = id
        ..coordinates = coordinates.toBuilder()
        ..uri = uri
        ..image = image
        ..asset = asset;
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
        ..coordinates = proto.hasCoordinates()
            ? LatLngQuad.fromProto(proto.coordinates).toBuilder()
            : null
        ..uri = proto.hasUri() ? proto.uri : null
        ..image = proto.hasImage() ? Uint8List.fromList(proto.image) : null
        ..asset = proto.hasAsset() ? proto.asset : null;
    });
  }

  ImageSource._();

  @nullable
  LatLngQuad get coordinates;

  @nullable
  String get uri;

  @nullable
  Uint8List get image;

  @nullable
  String get asset;

  FutureOr<ImageSource> copyWith({
    LatLngQuad coordinate,
    String uri,
    Uint8List image,
    String asset,
  }) {
    assert(uri == null || image == null,
        'You can have ony one source for the image.');

    final ImageSource source = rebuild((ImageSourceBuilder b) {
      return b
        ..coordinates = (coordinate ?? coordinates).toBuilder()
        ..uri = uri ?? this.uri
        ..image = image ?? this.image
        ..asset = asset ?? this.asset;
    });
    if (!isAttached || this == source) return source;
    return _update(source);
  }

  @override
  Source markAsAttached(MethodChannel channel, [Source source]) {
    if (source == null) {
      return rebuild((SourceBuilder b) => b.channel = channel);
    } else if (source is ImageSource) {
      return rebuild((ImageSourceBuilder b) {
        if (source != null) {
          b
            ..channel = channel
            ..attribution = source.attribution ?? attribution
            ..coordinates = (source.coordinates ?? coordinates).toBuilder()
            ..uri = source.uri ?? uri
            ..image = source.image ?? image
            ..asset = source.asset ?? asset;
        }
      });
    } else {
      throw ArgumentError(
          'Only a ImageSource can be merged but got ${source.runtimeType}');
    }
  }

  Future<ImageSource> copyFrom(Source source) async {
    if (source is ImageSource) {
      final ImageSource _source = rebuild((ImageSourceBuilder b) {
        b
          ..channel = channel
          ..attribution = source.attribution ?? attribution
          ..coordinates = (source.coordinates ?? coordinates).toBuilder()
          ..uri = source.uri ?? uri
          ..image = source.image ?? image
          ..asset = source.asset ?? asset;
      });
      if (!isAttached || this == _source) return _source;
      return _update(_source);
    } else {
      throw ArgumentError(
          'Only a ImageSource can be merged but got ${source.runtimeType}');
    }
  }

  @override
  pb.Source_Image get proto {
    final pb.Source_Image message = pb.Source_Image.create()..id = id;

    if (uri != null) {
      message.uri = uri;
    } else if (image != null) {
      message.image = image;
    } else if (asset != null) {
      message.asset = asset;
    }

    if (coordinates != null) message.coordinates = coordinates.proto;
    if (attribution != null) message.attribution = attribution;
    return message.freeze();
  }

  @override
  pb.Source get source {
    return pb.Source.create()
      ..id = id
      ..image = proto
      ..freeze();
  }

  static Serializer<ImageSource> get serializer => _$imageSourceSerializer;
}
