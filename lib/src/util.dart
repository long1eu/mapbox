// File created by
// Lung Razvan <long1eu>
// on 2019-08-04

part of flutter_mapbox_gl;

// ignore_for_file: non_constant_identifier_names

pb.Int32Value int_(int value) {
  return pb.Int32Value()
    ..value = value
    ..freeze();
}

pb.StringValue string_(String value) {
  return pb.StringValue()
    ..value = value
    ..freeze();
}

pb.BoolValue bool_(bool value) {
  return pb.BoolValue()
    ..value = value
    ..freeze();
}

pb.FloatValue float_(double value) {
  return pb.FloatValue()
    ..value = value
    ..freeze();
}

int colorValue_(pb.Color color) {
  return Color.fromARGB(color.alpha, color.red, color.green, color.blue).value;
}

pb.Color color_(int color) {
  final Color c = Color(color);
  return pb.Color()
    ..alpha = c.alpha
    ..red = c.red
    ..green = c.green
    ..blue = c.blue
    ..opacity = c.opacity
    ..hasColor = true
    ..freeze();
}

mixin Channel {
  Source rebuild(void Function(SourceBuilder) updates);

  MethodChannel get channel;

  pb.GeneratedMessage get proto;

  pb.Source get source;

  @memoized
  Uint8List get data => proto.writeToBuffer();

  @memoized
  Uint8List get dataSource => source.writeToBuffer();

  bool get isAttached => channel != null;
}
