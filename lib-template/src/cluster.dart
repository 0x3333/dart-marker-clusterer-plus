// Copyright (C) 2014 Tercio Gaudencio Filho. All rights reserved.
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.

part of marker_clusterer_plus;

@wrapper abstract class Cluster extends jsw.TypedJsObject {

  static Cluster $wrap(js.JsObject jsObject) => null;

  @generate Cluster(MarkerClusterer mc);

  @forMethods LatLng get center;
  @forMethods List<Marker> get markers;
  @forMethods int get size;

}
