// File created by
// Lung Razvan <long1eu>
// on 2019-08-01

part of flutter_mapbox_gl;

abstract class TransitionOptions
    implements Built<TransitionOptions, TransitionOptionsBuilder> {
  factory TransitionOptions({
    Duration duration = const Duration(milliseconds: 300),
    Duration delay = Duration.zero,
    bool enablePlacementTransitions = true,
  }) {
    return _$TransitionOptions((TransitionOptionsBuilder b) {
      b
        ..duration = duration
        ..delay = delay
        ..enablePlacementTransitions = enablePlacementTransitions;
    });
  }

  factory TransitionOptions.fromProtoData(Uint8List data) {
    return TransitionOptions.fromProto(pb.TransitionOptions.fromBuffer(data));
  }

  factory TransitionOptions.fromProto(pb.TransitionOptions proto) {
    return _$TransitionOptions((TransitionOptionsBuilder b) {
      b
        ..duration = Duration(milliseconds: proto.duration.toInt())
        ..delay = Duration(milliseconds: proto.delay.toInt())
        ..enablePlacementTransitions = proto.enablePlacementTransitions;
    });
  }

  TransitionOptions._();

  Duration get duration;

  Duration get delay;

  bool get enablePlacementTransitions;

  pb.TransitionOptions get proto {
    return pb.TransitionOptions.create()
      ..duration = Int64(duration.inMilliseconds)
      ..delay = Int64(delay.inMilliseconds)
      ..enablePlacementTransitions = enablePlacementTransitions
      ..freeze();
  }

  @memoized
  Uint8List get data => proto.writeToBuffer();

  static Serializer<TransitionOptions> get serializer =>
      _$transitionOptionsSerializer;
}
