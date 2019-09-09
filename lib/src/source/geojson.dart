// File created by
// Lung Razvan <long1eu>
// on 2019-08-07

part of source;

abstract class GeoJsonSource
    with _Channel
    implements Source, Built<GeoJsonSource, GeoJsonSourceBuilder> {
  factory GeoJsonSource({
    @required String id,
    String uri,
    String geoJson,
    GeoJsonOptions options,
  }) {
    assert(id != null);
    assert(uri != null || geoJson != null,
        'You must specify eather the uri or provide a json source');

    return _$GeoJsonSource((GeoJsonSourceBuilder b) {
      b
        ..id = id
        ..uri = uri
        ..geoJson = geoJson
        ..options = options?.toBuilder();
    });
  }

  factory GeoJsonSource.fromProtoData(Uint8List data) {
    return GeoJsonSource.fromProto(pb.Source_GeoJson.fromBuffer(data));
  }

  factory GeoJsonSource.fromProto(pb.Source_GeoJson proto) {
    return _$GeoJsonSource((GeoJsonSourceBuilder b) {
      b
        ..id = proto.id
        ..attribution = proto.hasAttribution() ? proto.attribution : null
        ..uri = proto.hasUri() ? proto.uri : null
        ..geoJson = proto.hasGeoJson() ? proto.geoJson : null
        ..options = proto.hasOptions()
            ? GeoJsonOptions.fromProto(proto.options).toBuilder()
            : null;
    });
  }

  GeoJsonSource._();

  @nullable
  String get uri;

  @nullable
  String get geoJson;

  @nullable
  GeoJsonOptions get options;

  FutureOr<GeoJsonSource> copyWith({String uri, String geoJson}) {
    assert(uri == null || geoJson == null, 'Only one source can be passed.');

    final GeoJsonSource source = rebuild((GeoJsonSourceBuilder b) {
      return b
        ..uri = uri ?? this.uri
        ..geoJson = geoJson ?? this.geoJson;
    });
    if (!isAttached || this == source) return source;
    return _update(source);
  }

  @override
  GeoJsonSource markAsAttached(MethodChannel channel, [Source source]) {
    if (source == null) {
      return rebuild((SourceBuilder b) => b.channel = channel);
    } else if (source is GeoJsonSource) {
      return rebuild((GeoJsonSourceBuilder b) {
        if (source != null) {
          b
            ..channel = channel
            ..attribution = source.attribution ?? attribution
            ..uri = source.uri ?? uri
            ..geoJson = source.geoJson ?? geoJson
            ..options = (source.options ?? options)?.toBuilder();
        }
      });
    } else {
      throw ArgumentError(
          'Only a GeojsonSource can be merged but got ${source.runtimeType}');
    }
  }

  Future<GeoJsonSource> copyFrom(Source source) async {
    if (source is GeoJsonSource) {
      final GeoJsonSource _source = rebuild((GeoJsonSourceBuilder b) {
        b
          ..channel = channel
          ..attribution = source.attribution ?? attribution
          ..uri = source.uri ?? uri
          ..geoJson = source.geoJson ?? geoJson
          ..options = (source.options ?? options)?.toBuilder();
      });
      if (!isAttached || this == _source) return _source;
      return _update(_source);
    } else {
      throw ArgumentError(
          'Only a GeojsonSource can be merged but got ${source.runtimeType}');
    }
  }

  @override
  pb.Source_GeoJson get proto {
    final pb.Source_GeoJson message = pb.Source_GeoJson.create()..id = id;

    if (uri != null) {
      message.uri = uri;
    } else if (geoJson != null) {
      message.geoJson = geoJson;
    }

    if (options != null) message.options = options.proto;
    if (attribution != null) message.attribution = attribution;
    return message.freeze();
  }

  @override
  pb.Source get source {
    return pb.Source.create()
      ..id = id
      ..geoJson = proto
      ..freeze();
  }

  static Serializer<GeoJsonSource> get serializer => _$geoJsonSourceSerializer;
}

abstract class GeoJsonOptions
    implements Built<GeoJsonOptions, GeoJsonOptionsBuilder> {
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

  static Serializer<GeoJsonOptions> get serializer =>
      _$geoJsonOptionsSerializer;
}
