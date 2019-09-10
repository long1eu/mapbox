// File created by
// Lung Razvan <long1eu>
// on 10/09/2019

part of flutter_mapbox_gl;

class ChannelWrapper {
  const ChannelWrapper(MethodChannel channel)
      : assert(channel != null),
        _channel = channel;

  final MethodChannel _channel;

  bool get isAttached => _channel != null;

  Future<T> _invokeMethod<T>(String method, [dynamic arguments]) {
    return _channel.invokeMethod<T>(method, arguments);
  }

  Future<List<T>> _invokeListMethod<T>(String method, [dynamic arguments]) {
    return _channel.invokeListMethod<T>(method, arguments);
  }
}
