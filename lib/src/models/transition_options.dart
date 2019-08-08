// File created by
// Lung Razvan <long1eu>
// on 2019-08-01

library transition_options;

import 'dart:typed_data';

import 'package:built_value/built_value.dart';
import 'package:fixnum/fixnum.dart';
import 'package:built_value/serializer.dart';
import 'package:mapboxgl/src/models/proto/index.dart' as pb;

part 'transition_options.g.dart';

// ignore_for_file: non_constant_identifier_names

abstract class TransitionOptions implements Built<TransitionOptions, TransitionOptionsBuilder> {
  factory TransitionOptions({
    Duration duration = const Duration(milliseconds: 300),
    Duration delay = Duration.zero,
    bool enablePlacementTransitions = true,
  }) {
    return _$TransitionOptions((b) {
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

  static Serializer<TransitionOptions> get serializer => _$transitionOptionsSerializer;
}
