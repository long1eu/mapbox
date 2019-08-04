// GENERATED CODE - DO NOT MODIFY BY HAND

part of camera_operation_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CameraOperationResult _$finished =
    const CameraOperationResult._('finished');
const CameraOperationResult _$canceled =
    const CameraOperationResult._('canceled');

CameraOperationResult _$valueOf(String name) {
  switch (name) {
    case 'finished':
      return _$finished;
    case 'canceled':
      return _$canceled;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<CameraOperationResult> _$values =
    new BuiltSet<CameraOperationResult>(const <CameraOperationResult>[
  _$finished,
  _$canceled,
]);

Serializer<CameraOperationResult> _$cameraOperationResultSerializer =
    new _$CameraOperationResultSerializer();

class _$CameraOperationResultSerializer
    implements PrimitiveSerializer<CameraOperationResult> {
  @override
  final Iterable<Type> types = const <Type>[CameraOperationResult];
  @override
  final String wireName = 'CameraOperationResult';

  @override
  Object serialize(Serializers serializers, CameraOperationResult object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  CameraOperationResult deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CameraOperationResult.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
