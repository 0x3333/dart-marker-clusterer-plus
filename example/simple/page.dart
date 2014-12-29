// Copyright (C) 2014 Tercio Gaudencio Filho. All rights reserved.
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.

import 'dart:html';

import 'package:google_maps/google_maps.dart';
import 'package:marker_clusterer_plus/marker_clusterer_plus.dart';

import "../data.dart";

void main() {
  visualRefresh = true;
  final mapOptions = new MapOptions()
      ..zoom = 3
      ..center = new LatLng(37.4419, -122.1419)
      ..mapTypeId = MapTypeId.ROADMAP;
  final map = new GMap(querySelector("#map"), mapOptions);

  var markers = [];
  for (var i = 0; i < 100; i++) {
    var dataPhoto = data['photos'][i];
    var latLng = new LatLng(dataPhoto['latitude'], dataPhoto['longitude']);
    var marker = new Marker(new MarkerOptions()..position = latLng);
    markers.add(marker);
  }

  var markerClusterer = new MarkerClusterer(map, markers);
}
