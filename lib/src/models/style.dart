// File created by
// Lung Razvan <long1eu>
// on 2019-08-01

part of flutter_mapbox_gl;

abstract class StyleModel implements Built<StyleModel, StyleModelBuilder> {
  factory StyleModel([void Function(StyleModelBuilder b) updates]) =
      _$StyleModel;

  factory StyleModel.fromProtoData(Uint8List data) {
    return StyleModel.fromProto(pb.Style.fromBuffer(data));
  }

  factory StyleModel.fromProto(pb.Style proto) {
    return _$StyleModel((StyleModelBuilder b) {
      b
        ..uri = proto.uri
        ..json = proto.json
        ..sources = ListBuilder<Source>(
            proto.sources.map<Source>((pb.Source it) => Source.fromProto(it)))
        ..layers = ListBuilder<Layer>(
            proto.layers.map<Layer>((pb.Layer it) => Layer.fromProto(it)))
        ..transition = TransitionOptions.fromProto(proto.transition).toBuilder()
        ..light =
            proto.hasLight() ? Light.fromProto(proto.light).toBuilder() : null;
    });
  }

  StyleModel._();

  String get uri;

  String get json;

  BuiltList<Source> get sources;

  BuiltList<Layer> get layers;

  TransitionOptions get transition;

  @nullable
  Light get light;

  pb.Style get proto {
    final pb.Style message = pb.Style.create()
      ..uri = uri
      ..json = json
      ..sources.addAll(sources.map((Source it) => it._proto))
      ..layers.addAll(layers.map((Layer it) => it._proto))
      ..transition = transition.proto;

    if (light != null) {
      message.light = light.proto;
    }

    return message..freeze();
  }

  @memoized
  Uint8List get data => proto.writeToBuffer();

  static Serializer<StyleModel> get serializer => _$styleModelSerializer;
}
