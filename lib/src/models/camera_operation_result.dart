// File created by
// Lung Razvan <long1eu>
// on 2019-08-01

library camera_operation_result;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:mapboxgl/src/models/proto/index.dart' as pb;

part 'camera_operation_result.g.dart';

class CameraOperationResult extends EnumClass {
  const CameraOperationResult._(String name) : super(name);

  static const CameraOperationResult finished = _$finished;
  static const CameraOperationResult canceled = _$canceled;

  static BuiltSet<CameraOperationResult> get values => _$values;

  pb.Map__Operations_CameraUpdate_Result get proto => pb.Map__Operations_CameraUpdate_Result.valueOf(values.toList().indexOf(this));

  static CameraOperationResult valueOf(String name) => _$valueOf(name);

  static Serializer<CameraOperationResult> get serializer => _$cameraOperationResultSerializer;

  static CameraOperationResult fromProto(pb.Map__Operations_CameraUpdate_Result proto) => values.elementAt(proto.value);
}
