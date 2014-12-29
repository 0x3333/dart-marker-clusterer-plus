// Copyright (C) 2014 Tercio Gaudencio Filho. All rights reserved.
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.

part of marker_clusterer_plus;

class Cluster extends jsw.TypedJsObject {
  static Cluster $wrap(js.JsObject jsObject) => jsObject == null ? null : new Cluster.fromJsObject(jsObject);
  Cluster.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);

  Cluster(MarkerClusterer mc)
      : super(js.context['Cluster'], [mc == null ? null : mc.$unsafe]);

  LatLng get center => LatLng.$wrap($unsafe.callMethod('getCenter'));
  List<Marker> get markers => jsw.TypedJsArray.$wrapSerializables($unsafe.callMethod('getMarkers'), Marker.$wrap);
  int get size => $unsafe.callMethod('getSize');

}
