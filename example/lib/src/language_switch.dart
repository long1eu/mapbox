// File created by
// Lung Razvan <long1eu>
// on 2019-08-06

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mapbox_gl/flutter_mapbox_gl.dart';
import '../main.dart';

enum Language { english, french, german, russian, spanish }

class LanguageSwitchPage extends StatefulWidget {
  const LanguageSwitchPage({Key key}) : super(key: key);

  @override
  _LanguageSwitchPageState createState() => _LanguageSwitchPageState();
}

class _LanguageSwitchPageState extends State<LanguageSwitchPage> {
  MapController controller;

  Language language = Language.english;

  void onMapReady(MapController controller) {
    setState(() => this.controller = controller);
  }

  String _abbreviation(Language value) {
    switch (value) {
      case Language.english:
        return 'en';
      case Language.french:
        return 'fr';
      case Language.german:
        return 'de';
      case Language.russian:
        return 'ru';
      case Language.spanish:
        return 'es';
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    final Page page = ModalRoute.of(context).settings.arguments;
    // todo language change doesn't work on Android

    return Scaffold(
      appBar: AppBar(
        title: Text(page.title),
        actions: <Widget>[
          PopupMenuButton<Language>(
            initialValue: language,
            onSelected: (Language value) async {
              setState(() => language = value);
              final SymbolLayer mapText =
                  controller.style.getLayer('country-label');

              controller.style.updateLayer('country-label',
                  mapText.copyWith(text: '{name_${_abbreviation(value)}}'));
            },
            enabled: controller != null,
            itemBuilder: (BuildContext context) {
              return <PopupMenuItem<Language>>[
                PopupMenuItem<Language>(
                  child: const Text('English'),
                  value: Language.english,
                ),
                PopupMenuItem<Language>(
                  child: const Text('French'),
                  value: Language.french,
                ),
                PopupMenuItem<Language>(
                  child: const Text('German'),
                  value: Language.german,
                ),
                PopupMenuItem<Language>(
                  child: const Text('Russian'),
                  value: Language.russian,
                ),
                PopupMenuItem<Language>(
                  child: const Text('Spanish'),
                  value: Language.spanish,
                ),
              ];
            },
          ),
        ],
      ),
      body: MapboxMap(
        onMapReady: onMapReady,
        options: MapOptions(
          styleFromMapbox: MapStyle.light,
          cameraPosition: CameraPosition(
            target: LatLng(
              latitude: 48,
              longitude: 16.05,
            ),
            zoom: 2.9,
          ),
        ),
      ),
    );
  }
}
