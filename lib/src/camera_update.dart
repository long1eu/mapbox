// File created by
// Lung Razvan <long1eu>
// on 2019-08-01

part of mapboxgl;

/// Factory for creating CameraUpdate objects.
class CameraUpdate {
  CameraUpdate._({
    this.cameraPosition,
    this.latLng,
    this.bounds,
    this.bearing,
    this.tilt,
    this.padding,
    this.zoom,
    this.amount,
    this.operation,
    this.focus,
  });

  factory CameraUpdate.newCameraPosition(CameraPosition cameraPosition) {
    return CameraUpdate._(
      cameraPosition: cameraPosition,
      operation: pb.Map__Operations_CameraUpdate_Type.NEW_CAMERA_POSITION,
    );
  }

  factory CameraUpdate.newLatLng(LatLng latLng) {
    return CameraUpdate._(
      latLng: latLng,
      operation: pb.Map__Operations_CameraUpdate_Type.NEW_LAT_LNG,
    );
  }

  factory CameraUpdate.newLatLngBounds(LatLngBounds bounds, {double bearing, double tilt, EdgeInsets padding}) {
    return CameraUpdate._(
      bounds: bounds,
      bearing: bearing,
      tilt: tilt,
      padding: <int>[
        (padding.left * window.devicePixelRatio).toInt(),
        (padding.top * window.devicePixelRatio).toInt(),
        (padding.right * window.devicePixelRatio).toInt(),
        (padding.bottom * window.devicePixelRatio).toInt(),
      ],
      operation: pb.Map__Operations_CameraUpdate_Type.NEW_LAT_LNG_BOUNDS,
    );
  }

  factory CameraUpdate.newLatLngZoom(LatLng latLng, double zoom) {
    return CameraUpdate._(
      latLng: latLng,
      zoom: zoom,
      operation: pb.Map__Operations_CameraUpdate_Type.NEW_LAT_LNG_ZOOM,
    );
  }

  factory CameraUpdate.zoomBy(double amount, [Point focus]) {
    return CameraUpdate._(
      amount: amount,
      focus: focus,
      operation: pb.Map__Operations_CameraUpdate_Type.ZOOM_BY,
    );
  }

  factory CameraUpdate.zoomIn() {
    return CameraUpdate._(
      operation: pb.Map__Operations_CameraUpdate_Type.ZOOM_IN,
    );
  }

  factory CameraUpdate.zoomOut() {
    return CameraUpdate._(
      operation: pb.Map__Operations_CameraUpdate_Type.ZOOM_OUT,
    );
  }

  factory CameraUpdate.zoomTo(double zoom) {
    return CameraUpdate._(
      zoom: zoom,
      operation: pb.Map__Operations_CameraUpdate_Type.ZOOM_TO,
    );
  }

  factory CameraUpdate.bearingTo(double bearing) {
    return CameraUpdate._(
      bearing: bearing,
      operation: pb.Map__Operations_CameraUpdate_Type.BEARING_TO,
    );
  }

  factory CameraUpdate.tiltTo(double tilt) {
    return CameraUpdate._(
      tilt: tilt,
      operation: pb.Map__Operations_CameraUpdate_Type.TILT_TO,
    );
  }

  final CameraPosition cameraPosition;
  final LatLng latLng;
  final LatLngBounds bounds;
  final double bearing;
  final double tilt;
  final List<int> padding;
  final double zoom;
  final double amount;
  final Point focus;
  final pb.Map__Operations_CameraUpdate_Type operation;

  pb.Map__Operations_CameraUpdate _proto;

  pb.Map__Operations_CameraUpdate get proto {
    if (_proto != null) {
      return _proto;
    }

    final message = pb.Map__Operations_CameraUpdate.create();
    if (cameraPosition != null) {
      message.cameraPosition = cameraPosition.proto;
    }
    if (latLng != null) {
      message.latLng = latLng.proto;
    }
    if (bounds != null) {
      message.bounds = bounds.proto;
    }
    if (bearing != null) {
      message.bearing = bearing;
    }
    if (tilt != null) {
      message.tilt = tilt;
    }
    if (padding != null) {
      message.padding.addAll(padding);
    }
    if (zoom != null) {
      message.zoom = zoom;
    }
    if (amount != null) {
      message.amount = amount;
    }
    if (operation != null) {
      message.operation = operation;
    }
    if (focus != null) {
      message.focusX = (focus.x ?? 0).toInt();
      message.focusY = (focus.y ?? 0).toInt();
    }
    _proto = message..freeze();
    return _proto;
  }

  Uint8List get data => proto.writeToBuffer();
}
