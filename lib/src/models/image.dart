// File created by
// Lung Razvan <long1eu>
// on 10/09/2019

part of flutter_mapbox_gl;

class StyleImage {
  const StyleImage.bytes(this.id, this.image, [this.sdf = false])
      : assert(id != null),
        assert(image != null),
        assert(sdf != null),
        asset = null,
        packageName = null;

  const StyleImage.asset({
    @required this.id,
    @required this.asset,
    this.sdf = false,
    this.packageName,
  })  : assert(id != null),
        assert(asset != null),
        assert(sdf != null),
        image = null;

  final String id;
  final Uint8List image;
  final String asset;
  final String packageName;
  final bool sdf;

  pb.Style_StyleImage get proto {
    final pb.Style_StyleImage message = pb.Style_StyleImage()
      ..id = id
      ..sdf = sdf;

    if (image != null) {
      message.image = image;
    } else {
      final pb.Style_Asset asset = pb.Style_Asset()..asset = this.asset;
      if (packageName != null) {
        asset
          ..packageName = (pb.StringValue()
            ..value = packageName
            ..freeze());
      }

      message.asset = asset;
    }

    return message.freeze();
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StyleImage &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          const ListEquality<int>().equals(image, other.image) &&
          asset == other.asset &&
          packageName == other.packageName &&
          sdf == other.sdf;

  @override
  int get hashCode =>
      id.hashCode ^
      const ListEquality<int>().hash(image) ^
      asset.hashCode ^
      packageName.hashCode ^
      sdf.hashCode;
}
