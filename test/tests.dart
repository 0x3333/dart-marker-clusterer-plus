// Copyright (C) 2014 Tercio Gaudencio Filho. All rights reserved.
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.

library marker_clusterer.test;

import 'dart:html';

import 'package:unittest/unittest.dart';
import 'package:unittest/html_config.dart';

import 'package:google_maps/google_maps.dart';
import 'package:marker_clusterer_plus/marker_clusterer_plus.dart';

main() {
  useHtmlConfiguration();

  visualRefresh = true;
  final mapOptions = new MapOptions()
      ..zoom = 3
      ..mapTypeId = MapTypeId.ROADMAP;
  final map = new GMap(querySelector("#map"), mapOptions);

  var markerClusterer = new MarkerClusterer(map, []);
  map.onIdle.listen((_) {
    test('MarkerClusterer toString', () {
      var output = markerClusterer.$unsafe.callMethod("toString");
      expect(output, "[object Object]");
    });

    test('MarkerClusterer Markers/Clusters', () {
      expect(markerClusterer.totalMarkers, 0);
      expect(markerClusterer.totalClusters, 0);

      Marker marker1 = new Marker(new MarkerOptions()..position = new LatLng(37.4419, -122.1419));
      markerClusterer.addMarker(marker1, false);
      expect(markerClusterer.totalMarkers, 1);
      expect(markerClusterer.totalClusters, 1);

      Marker marker2 = new Marker(new MarkerOptions()..position = new LatLng(37.44196, -122.1419));
      markerClusterer.addMarker(marker2, false);
      expect(markerClusterer.totalMarkers, 2);
      expect(markerClusterer.totalClusters, 1);
    });
  });
}
