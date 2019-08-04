// File created by
// Lung Razvan <long1eu>
// on 2019-08-04

part of mapbox_gl;

pb.Int32Value _int(int value) {
  return pb.Int32Value()
    ..value = value
    ..freeze();
}

pb.StringValue _string(String value) {
  return pb.StringValue()
    ..value = value
    ..freeze();
}

pb.BoolValue _bool(bool value) {
  return pb.BoolValue()
    ..value = value
    ..freeze();
}

pb.FloatValue _float(double value) {
  return pb.FloatValue()
    ..value = value
    ..freeze();
}

int colorValue_(pb.Color color) {
  return Color.fromARGB(color.alpha, color.red, color.green, color.blue).value;
}

pb.Color color_(int color) {
  final c = Color(color);
  return pb.Color()
    ..alpha = c.alpha
    ..red = c.red
    ..green = c.green
    ..blue = c.blue
    ..opacity = c.opacity
    ..hasColor = true
    ..freeze();
}
