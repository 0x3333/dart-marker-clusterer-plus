// Copyright (C) 2014 Tercio Gaudencio Filho. All rights reserved.
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.

part of marker_clusterer_plus;

class MarkerClusterer extends jsw.TypedJsObject {
  static MarkerClusterer $wrap(js.JsObject jsObject) => jsObject == null ? null : new MarkerClusterer.fromJsObject(jsObject);

  jsw.SubscribeStreamProvider<Cluster> _onClick;
  jsw.SubscribeStreamProvider<Cluster> _onMouseout;
  jsw.SubscribeStreamProvider<Cluster> _onMouseover;
  jsw.SubscribeStreamProvider<MarkerClusterer> _onClusteringBegin;
  jsw.SubscribeStreamProvider<MarkerClusterer> _onClusteringEnd;

  MarkerClusterer(GMap map, [List<Marker> markers, MarkerClustererOptions options])
      : super(js.context['MarkerClusterer'], [map == null ? null : map.$unsafe, jsw.jsify(markers), options == null ? null : options.$unsafe]) {
    _initStreams();
  }

  MarkerClusterer.fromJsObject(js.JsObject proxy)
      : super.fromJsObject(proxy) {
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

  set averageCenter(bool averageCenter) => $unsafe.callMethod('setAverageCenter', [averageCenter]);
  bool get averageCenter => $unsafe.callMethod('getAverageCenter');
  set batchSizeIE(int batchSizeIE) => $unsafe.callMethod('setBatchSizeIE', [batchSizeIE]);
  int get batchSizeIE => $unsafe.callMethod('getBatchSizeIE');
  set calculator(Calculator calculator) => $unsafe.callMethod('setCalculator', [jsw.jsify(calculator)]);
  Calculator get calculator => $unsafe.callMethod('getCalculator');
  set clusterClass(String clusterClass) => $unsafe.callMethod('setClusterClass', [clusterClass]);
  String get clusterClass => $unsafe.callMethod('getClusterClass');
  set clusters(List<Cluster> clusters) => $unsafe.callMethod('setClusters', [jsw.jsify(clusters)]);
  List<Cluster> get clusters => jsw.TypedJsArray.$wrapSerializables($unsafe.callMethod('getClusters'), Cluster.$wrap);
  set enableRetinaIcons(bool enableRetinaIcons) => $unsafe.callMethod('setEnableRetinaIcons', [enableRetinaIcons]);
  bool get enableRetinaIcons => $unsafe.callMethod('getEnableRetinaIcons');
  set gridSize(int gridSize) => $unsafe.callMethod('setGridSize', [gridSize]);
  int get gridSize => $unsafe.callMethod('getGridSize');
  set ignoreHidden(bool ignoreHidden) => $unsafe.callMethod('setIgnoreHidden', [ignoreHidden]);
  bool get ignoreHidden => $unsafe.callMethod('getIgnoreHidden');
  set imageExtension(String imageExtension) => $unsafe.callMethod('setImageExtension', [imageExtension]);
  String get imageExtension => $unsafe.callMethod('getImageExtension');
  set imagePath(String imagePath) => $unsafe.callMethod('setImagePath', [imagePath]);
  String get imagePath => $unsafe.callMethod('getImagePath');
  set imageSizes(List<int> imageSizes) => $unsafe.callMethod('setImageSizes', [jsw.jsify(imageSizes)]);
  List<int> get imageSizes => jsw.TypedJsArray.$wrap($unsafe.callMethod('getImageSizes'));
  set maxZoom(int maxZoom) => $unsafe.callMethod('setMaxZoom', [maxZoom]);
  int get maxZoom => $unsafe.callMethod('getMaxZoom');
  set minimumClusterSize(int minimumClusterSize) => $unsafe.callMethod('setMinimumClusterSize', [minimumClusterSize]);
  int get minimumClusterSize => $unsafe.callMethod('getMinimumClusterSize');
  set styles(List<ClusterIconStyle> styles) => $unsafe.callMethod('setStyles', [jsw.jsify(styles)]);
  List<ClusterIconStyle> get styles => jsw.TypedJsArray.$wrapSerializables($unsafe.callMethod('getStyles'), ClusterIconStyle.$wrap);
  set title(String title) => $unsafe.callMethod('setTitle', [title]);
  String get title => $unsafe.callMethod('getTitle');
  set zoomOnClick(bool zoomOnClick) => $unsafe.callMethod('setZoomOnClick', [zoomOnClick]);
  bool get zoomOnClick => $unsafe.callMethod('getZoomOnClick');
  List<Marker> get markers => jsw.TypedJsArray.$wrapSerializables($unsafe.callMethod('getMarkers'), Marker.$wrap);
  int get totalClusters => $unsafe.callMethod('getTotalClusters');
  int get totalMarkers => $unsafe.callMethod('getTotalMarkers');

  addMarker(Marker marker, [bool noDraw]) => $unsafe.callMethod('addMarker', [marker == null ? null : marker.$unsafe, noDraw]);
  addMarkers(List<Marker> markers, [bool noDraw]) => $unsafe.callMethod('addMarkers', [jsw.jsify(markers), noDraw]);
  removeMarker(Marker marker, [bool noDraw]) => $unsafe.callMethod('removeMarker', [marker == null ? null : marker.$unsafe, noDraw]);
  removeMarkers(List<Marker> markers, [bool noDraw]) => $unsafe.callMethod('removeMarkers', [jsw.jsify(markers), noDraw]);
  clearMarkers() => $unsafe.callMethod('clearMarkers');
  fitMapToMarkers() => $unsafe.callMethod('fitMapToMarkers');
  repaint() => $unsafe.callMethod('repaint');

}

class MarkerClustererOptions extends jsw.TypedJsObject {
  static MarkerClustererOptions $wrap(js.JsObject jsObject) => jsObject == null ? null : new MarkerClustererOptions.fromJsObject(jsObject);
  MarkerClustererOptions.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);

  MarkerClustererOptions()
      : super(js.context['MarkerClustererOptions'], []);

  set averageCenter(bool averageCenter) => $unsafe['averageCenter'] = averageCenter;
  bool get averageCenter => $unsafe['averageCenter'];
  set batchSize(int batchSize) => $unsafe['batchSize'] = batchSize;
  int get batchSize => $unsafe['batchSize'];
  set batchSizeIE(int batchSizeIE) => $unsafe['batchSizeIE'] = batchSizeIE;
  int get batchSizeIE => $unsafe['batchSizeIE'];
  set calculator(Calculator calculator) => $unsafe['calculator'] = jsw.jsify(calculator);
  Calculator get calculator => $unsafe['calculator'];
  set clusterClass(String clusterClass) => $unsafe['clusterClass'] = clusterClass;
  String get clusterClass => $unsafe['clusterClass'];
  set enableRetinaIcons(bool enableRetinaIcons) => $unsafe['enableRetinaIcons'] = enableRetinaIcons;
  bool get enableRetinaIcons => $unsafe['enableRetinaIcons'];
  set gridSize(int gridSize) => $unsafe['gridSize'] = gridSize;
  int get gridSize => $unsafe['gridSize'];
  set ignoreHidden(bool ignoreHidden) => $unsafe['ignoreHidden'] = ignoreHidden;
  bool get ignoreHidden => $unsafe['ignoreHidden'];
  set imageExtension(String imageExtension) => $unsafe['imageExtension'] = imageExtension;
  String get imageExtension => $unsafe['imageExtension'];
  set imagePath(String imagePath) => $unsafe['imagePath'] = imagePath;
  String get imagePath => $unsafe['imagePath'];
  set imageSizes(List<int> imageSizes) => $unsafe['imageSizes'] = jsw.jsify(imageSizes);
  List<int> get imageSizes => jsw.TypedJsArray.$wrap($unsafe['imageSizes']);
  set maxZoom(int maxZoom) => $unsafe['maxZoom'] = maxZoom;
  int get maxZoom => $unsafe['maxZoom'];
  set minimumClusterSize(int minimumClusterSize) => $unsafe['minimumClusterSize'] = minimumClusterSize;
  int get minimumClusterSize => $unsafe['minimumClusterSize'];
  set styles(List<ClusterIconStyle> styles) => $unsafe['styles'] = jsw.jsify(styles);
  List<ClusterIconStyle> get styles => jsw.TypedJsArray.$wrapSerializables($unsafe['styles'], ClusterIconStyle.$wrap);
  set title(String title) => $unsafe['title'] = title;
  String get title => $unsafe['title'];
  set zoomOnClick(bool zoomOnClick) => $unsafe['zoomOnClick'] = zoomOnClick;
  bool get zoomOnClick => $unsafe['zoomOnClick'];
}
