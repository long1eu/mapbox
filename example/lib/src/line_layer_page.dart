// File created by
// Lung Razvan <long1eu>
// on 2019-08-06

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mapbox_gl/flutter_mapbox_gl.dart';
import '../main.dart';

class LineLayerPage extends StatelessWidget {
  const LineLayerPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Page page = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(page.title),
      ),
      body: MapboxMap(
        options: MapOptions(
          styleFromMapbox: MapStyle.outdoors,
          cameraPosition: CameraPosition(
            target: LatLng(
              latitude: 33.39243835,
              longitude: -118.38265415000001,
            ),
            zoom: 13.448986053466797,
          ),
        ),
        layers: <Layer>[
          LineLayer(
            id: 'line-layer',
            sourceId: 'line-source',
            dasharray: <double>[0.01, 2.0],
            cap: LineCap.round,
            join: LineJoin.round,
            width: 5.0,
            color: const Color(0xFFE55E5E),
          ),
        ],
        sources: <Source>[
          GeoJsonSource(
            id: 'line-source',
            geoJson: jsonEncode(<String, dynamic>{
              "type": "FeatureCollection",
              "features": <dynamic>[
                <String, dynamic>{
                  "type": "Feature",
                  "properties": <String, dynamic>{},
                  "geometry": <String, dynamic>{
                    "type": "LineString",
                    "coordinates": routeCoordinates,
                  }
                }
              ]
            }),
          ),
        ],
      ),
    );
  }
}

final List<List<double>> routeCoordinates = <List<double>>[
  <double>[-118.39439114221236, 33.397676454651766],
  <double>[-118.39421054012902, 33.39769799454838],
  <double>[-118.39408583869053, 33.39761901490136],
  <double>[-118.39388373635917, 33.397328225582285],
  <double>[-118.39372033447427, 33.39728514560042],
  <double>[-118.3930882271826, 33.39756875508861],
  <double>[-118.3928216241072, 33.39759029501192],
  <double>[-118.39227981785722, 33.397234885594564],
  <double>[-118.392021814881, 33.397005125197666],
  <double>[-118.39090810203379, 33.396814854409186],
  <double>[-118.39040499623022, 33.39696563506828],
  <double>[-118.39005669221234, 33.39703025527067],
  <double>[-118.38953208616074, 33.39691896489222],
  <double>[-118.38906338075398, 33.39695127501678],
  <double>[-118.38891287901787, 33.39686511465794],
  <double>[-118.38898167981154, 33.39671074380141],
  <double>[-118.38984598978178, 33.396064537239404],
  <double>[-118.38983738968255, 33.39582400356976],
  <double>[-118.38955358640874, 33.3955978295119],
  <double>[-118.389041880506, 33.39578092284221],
  <double>[-118.38872797688494, 33.3957916930261],
  <double>[-118.38817327048618, 33.39561218978703],
  <double>[-118.3872530598711, 33.3956265500598],
  <double>[-118.38653065153775, 33.39592811523983],
  <double>[-118.38638444985126, 33.39590657490452],
  <double>[-118.38638874990086, 33.395737842093304],
  <double>[-118.38723155962309, 33.395027006653244],
  <double>[-118.38734766096238, 33.394441819579285],
  <double>[-118.38785936686516, 33.39403972556368],
  <double>[-118.3880743693453, 33.393616088784825],
  <double>[-118.38791956755958, 33.39331092541894],
  <double>[-118.3874852625497, 33.39333964672257],
  <double>[-118.38686605540683, 33.39387816940854],
  <double>[-118.38607484627983, 33.39396792286514],
  <double>[-118.38519763616081, 33.39346171215717],
  <double>[-118.38523203655761, 33.393196040109466],
  <double>[-118.3849955338295, 33.393023711860515],
  <double>[-118.38355931726203, 33.39339708930139],
  <double>[-118.38323251349217, 33.39305243325907],
  <double>[-118.3832583137898, 33.39244928189641],
  <double>[-118.3848751324406, 33.39108499551671],
  <double>[-118.38522773650804, 33.38926830725471],
  <double>[-118.38508153482152, 33.38916777794189],
  <double>[-118.38390332123025, 33.39012280171983],
  <double>[-118.38318091289693, 33.38941192035707],
  <double>[-118.38271650753981, 33.3896129783018],
  <double>[-118.38275090793661, 33.38902416443619],
  <double>[-118.38226930238106, 33.3889451769069],
  <double>[-118.38258750605169, 33.388420985121336],
  <double>[-118.38177049662707, 33.388083490107284],
  <double>[-118.38080728551597, 33.38836353925403],
  <double>[-118.37928506795642, 33.38717870977523],
  <double>[-118.37898406448423, 33.3873079646849],
  <double>[-118.37935386875012, 33.38816247841951],
  <double>[-118.37794345248027, 33.387810620840135],
  <double>[-118.37546662390886, 33.38847843095069],
  <double>[-118.37091717142867, 33.39114243958559],
];
