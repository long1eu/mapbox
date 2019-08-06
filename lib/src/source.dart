// File created by
// Lung Razvan <long1eu>
// on 2019-08-02

part of mapbox_gl;

abstract class Source {
  Source._(SourceModel sourceModel, MethodChannel channel);

  String get id;

  static Source _fromModel(SourceModel sourceModel, MethodChannel channel) {
    if (sourceModel is GeoJsonSourceModel) {
      return GeoJsonSource._(sourceModel, channel);
    } else if (sourceModel is ImageSourceModel) {
      return ImageSource._(sourceModel, channel);
    } else if (sourceModel is VectorSourceModel) {
      return VectorSource._(sourceModel, channel);
    } else if (sourceModel is UnknownSourceModel) {
      return UnknownSource._(sourceModel, channel);
    }

    throw ArgumentError('Unkown source type $sourceModel');
  }
}

class GeoJsonSource extends Source {
  GeoJsonSource._(GeoJsonSourceModel sourceModel, MethodChannel channel)
      : _model = sourceModel,
        _channel = channel,
        super._(sourceModel, channel);

  final GeoJsonSourceModel _model;
  final MethodChannel _channel;

  @override
  String get id => _model.id;
}

class ImageSource extends Source {
  ImageSource._(ImageSourceModel sourceModel, MethodChannel channel)
      : _model = sourceModel,
        _channel = channel,
        super._(sourceModel, channel);

  final ImageSourceModel _model;
  final MethodChannel _channel;

  @override
  String get id => _model.id;
}

class VectorSource extends Source {
  VectorSource._(VectorSourceModel sourceModel, MethodChannel channel)
      : _model = sourceModel,
        _channel = channel,
        super._(sourceModel, channel);

  final VectorSourceModel _model;
  final MethodChannel _channel;

  @override
  String get id => _model.id;
}

class UnknownSource extends Source {
  UnknownSource._(UnknownSourceModel sourceModel, MethodChannel channel)
      : _model = sourceModel,
        _channel = channel,
        super._(sourceModel, channel);

  final UnknownSourceModel _model;
  final MethodChannel _channel;

  @override
  String get id => _model.id;
}
