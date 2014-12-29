// Copyright (C) 2014 Tercio Gaudencio Filho. All rights reserved.
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.

part of marker_clusterer_plus;

@wrapper abstract class ClusterIconInfo extends jsw.TypedJsObject {

  @generate ClusterIconInfo();

  int index;
  String text;
  String title;

}

@wrapper abstract class ClusterIconStyle extends jsw.TypedJsObject {

  @generate ClusterIconStyle();

  List<int> anchorIcon;
  List<int> anchorText;
  String backgroundPosition;
  String fontFamily;
  String fontStyle;
  String fontWeight;
  int height;
  String textColor;
  String textDecoration;
  int textSize;
  String url;
  int width;

}
