// Copyright (C) 2014 Tercio Gaudencio Filho. All rights reserved.
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.

part of marker_clusterer_plus;

@wrapper @skipConstructor abstract class MarkerClusterer extends jsw.TypedJsObject {

  static MarkerClusterer $wrap(js.JsObject jsObject) => null;

  jsw.SubscribeStreamProvider<Cluster> _onClick;
  jsw.SubscribeStreamProvider<Cluster> _onMouseout;
  jsw.SubscribeStreamProvider<Cluster> _onMouseover;
  jsw.SubscribeStreamProvider<MarkerClusterer> _onClusteringBegin;
  jsw.SubscribeStreamProvider<MarkerClusterer> _onClusteringEnd;

  @generate MarkerClusterer(GMap map, [List<Marker> markers, MarkerClustererOptions options]) {
    _initStreams();
  }

  MarkerClusterer.fromJsObject(js.JsObject proxy) : super.fromJsObject(proxy) {
    _initStreams();
  }

  void _initStreams() {
    _onClick = event.getStreamProviderFor(this, "click", Cluster.$wrap);
    _onMouseout = event.getStreamProviderFor(this, "mouseout", Cluster.$wrap);
    _onMouseover = event.getStreamProviderFor(this, "mouseover", Cluster.$wrap);
    _onClusteringBegin = event.getStreamProviderFor(this, "clusteringbegin", MarkerClusterer.$wrap);
    _onClusteringEnd = event.getStreamProviderFor(this, "clusteringend", MarkerClusterer.$wrap);
  }

  Stream<Cluster> get onClick => _onClick.stream;
  Stream<Cluster> get onMouseout => _onMouseout.stream;
  Stream<Cluster> get onMouseover => _onMouseover.stream;
  Stream<MarkerClusterer> get onClusteringBegin => _onClusteringBegin.stream;
  Stream<MarkerClusterer> get onClusteringEnd => _onClusteringEnd.stream;

  @forMethods bool averageCenter;
  @forMethods int batchSizeIE;
  @forMethods Calculator calculator;
  @forMethods String clusterClass;
  @forMethods List<Cluster> clusters;
  @forMethods bool enableRetinaIcons;
  @forMethods int gridSize;
  @forMethods bool ignoreHidden;
  @forMethods String imageExtension;
  @forMethods String imagePath;
  @forMethods List<int> imageSizes;
  @forMethods int maxZoom;
  @forMethods int minimumClusterSize;
  @forMethods List<ClusterIconStyle> styles;
  @forMethods String title;
  @forMethods bool zoomOnClick;

  @forMethods List<Marker> get markers;
  @forMethods int get totalClusters;
  @forMethods int get totalMarkers;

  addMarker(Marker marker, [bool noDraw]);
  addMarkers(List<Marker> markers, [bool noDraw]);
  removeMarker(Marker marker, [bool noDraw]);
  removeMarkers(List<Marker> markers, [bool noDraw]);
  clearMarkers();
  fitMapToMarkers();
  repaint();

}

@wrapper abstract class MarkerClustererOptions extends jsw.TypedJsObject {

  @generate MarkerClustererOptions();

  bool averageCenter;
  int batchSize;
  int batchSizeIE;
  Calculator calculator;
  String clusterClass;
  bool enableRetinaIcons;
  int gridSize;
  bool ignoreHidden;
  String imageExtension;
  String imagePath;
  List<int> imageSizes;
  int maxZoom;
  int minimumClusterSize;
  List<ClusterIconStyle> styles;
  String title;
  bool zoomOnClick;

}
