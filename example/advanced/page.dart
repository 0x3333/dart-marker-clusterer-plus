// Copyright (C) 2014 Tercio Gaudencio Filho. All rights reserved.
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.

import 'dart:html';

import 'package:google_maps/google_maps.dart';
import 'package:marker_clusterer_plus/marker_clusterer_plus.dart';

import "../data.dart";

var imageUrl = 'http://chart.apis.google.com/chart?cht=mm&chs=24x32&' + 'chco=FFFFFF,008CFF,000000&ext=.png';
var map = null;
var markerClusterer = null;

void main() {
  visualRefresh = true;
  final mapOptions = new MapOptions()
      ..zoom = 2
      ..center = new LatLng(39.91, 116.38)
      ..mapTypeId = MapTypeId.ROADMAP;
  map = new GMap(querySelector("#map"), mapOptions);

  querySelector("#refresh").addEventListener("click", refreshMap);
  querySelector("#clear").addEventListener("click", clearClusters);

  refreshMap();
}

void refreshMap([_]) {
  if (markerClusterer != null) {
    markerClusterer.clearMarkers();
  }

  var markers = [];
  var markerImage = new Icon()
      ..url = imageUrl
      ..size = new Size(24, 32);

  for (var i = 0; i < 1000; i++) {
    var dataPhoto = data['photos'][i];
    var latLng = new LatLng(dataPhoto['latitude'], dataPhoto['longitude']);
    var marker = new Marker(new MarkerOptions()
        ..position = latLng
        ..icon = markerImage);
    markers.add(marker);
  }

  var zoom = int.parse((querySelector('#zoom') as SelectElement).value, radix: 10);
  var size = int.parse((querySelector('#size') as SelectElement).value, radix: 10);
  var style = int.parse((querySelector('#style') as SelectElement).value, radix: 10);
  zoom = zoom == -1 ? null : zoom;
  size = size == -1 ? null : size;
  style = style == -1 ? null : styles[style];

  markerClusterer = new MarkerClusterer(map, markers, new MarkerClustererOptions()
      ..maxZoom = zoom
      ..gridSize = size
      ..styles = style);
}

void clearClusters(e) {
  e.preventDefault();
  e.stopPropagation();
  markerClusterer.clearMarkers();
}
