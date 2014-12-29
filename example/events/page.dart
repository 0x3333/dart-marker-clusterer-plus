// Copyright (C) 2014 Tercio Gaudencio Filho. All rights reserved.
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.

import 'dart:html';

import 'package:google_maps/google_maps.dart';
import 'package:marker_clusterer_plus/marker_clusterer_plus.dart';

import "../data.dart";

var imageUrl = r'http://chart.apis.google.com/chart?cht=mm&chs=24x32&chco=FFFFFF,008CFF,000000&ext=.png';
var map = null;
var markerClusterer = null;

void main() {
  visualRefresh = true;
  final mapOptions = new MapOptions()
      ..zoom = 3
      ..center = new LatLng(37.4419, -122.1419)
      ..mapTypeId = MapTypeId.ROADMAP;
  map = new GMap(querySelector("#map"), mapOptions);

  var markers = [];
  for (var i = 0; i < 100; i++) {
    var dataPhoto = data['photos'][i];
    var latLng = new LatLng(dataPhoto['latitude'], dataPhoto['longitude']);
    var marker = new Marker(new MarkerOptions()..position = latLng);
    markers.add(marker);
  }

  var markerClusterer = new MarkerClusterer(map, markers, new MarkerClustererOptions()..averageCenter = true);

  markerClusterer.onClick.listen((c) {
    log("click: ");
    log("&mdash;Center of cluster: ${c.center}");
    log("&mdash;Number of managed markers in cluster: ${c.size}");
    var m = c.markers;
    var p = [];
    for (var i = 0; i < m.length; i++) {
      p.add(m[i].position);
    }
    log("&mdash;Locations of managed markers: ${p.join(", ")}");
  });

  markerClusterer.onMouseover.listen((c) {
    log("mouseover: ");
    log("&mdash;Center of cluster: ${c.center}");
    log("&mdash;Number of managed markers in cluster: ${c.size}");
  });

  markerClusterer.onMouseout.listen((c) {
    log("mouseout: ");
    log("&mdash;Center of cluster: ${c.center}");
    log("&mdash;Number of managed markers in cluster: ${c.size}");
  });
}

void log(h) {
  querySelector("#log").innerHtml += h + "<br />";
}
