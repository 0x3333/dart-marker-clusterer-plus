// Copyright (C) 2014 Tercio Gaudencio Filho. All rights reserved.
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.

part of marker_clusterer_plus;

class ClusterIconInfo extends jsw.TypedJsObject {
  static ClusterIconInfo $wrap(js.JsObject jsObject) => jsObject == null ? null : new ClusterIconInfo.fromJsObject(jsObject);
  ClusterIconInfo.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);

  ClusterIconInfo()
      : super(js.context['ClusterIconInfo'], []);

  set index(int index) => $unsafe['index'] = index;
  int get index => $unsafe['index'];
  set text(String text) => $unsafe['text'] = text;
  String get text => $unsafe['text'];
  set title(String title) => $unsafe['title'] = title;
  String get title => $unsafe['title'];
}

class ClusterIconStyle extends jsw.TypedJsObject {
  static ClusterIconStyle $wrap(js.JsObject jsObject) => jsObject == null ? null : new ClusterIconStyle.fromJsObject(jsObject);
  ClusterIconStyle.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);

  ClusterIconStyle()
      : super(js.context['ClusterIconStyle'], []);

  set anchorIcon(List<int> anchorIcon) => $unsafe['anchorIcon'] = jsw.jsify(anchorIcon);
  List<int> get anchorIcon => jsw.TypedJsArray.$wrap($unsafe['anchorIcon']);
  set anchorText(List<int> anchorText) => $unsafe['anchorText'] = jsw.jsify(anchorText);
  List<int> get anchorText => jsw.TypedJsArray.$wrap($unsafe['anchorText']);
  set backgroundPosition(String backgroundPosition) => $unsafe['backgroundPosition'] = backgroundPosition;
  String get backgroundPosition => $unsafe['backgroundPosition'];
  set fontFamily(String fontFamily) => $unsafe['fontFamily'] = fontFamily;
  String get fontFamily => $unsafe['fontFamily'];
  set fontStyle(String fontStyle) => $unsafe['fontStyle'] = fontStyle;
  String get fontStyle => $unsafe['fontStyle'];
  set fontWeight(String fontWeight) => $unsafe['fontWeight'] = fontWeight;
  String get fontWeight => $unsafe['fontWeight'];
  set height(int height) => $unsafe['height'] = height;
  int get height => $unsafe['height'];
  set textColor(String textColor) => $unsafe['textColor'] = textColor;
  String get textColor => $unsafe['textColor'];
  set textDecoration(String textDecoration) => $unsafe['textDecoration'] = textDecoration;
  String get textDecoration => $unsafe['textDecoration'];
  set textSize(int textSize) => $unsafe['textSize'] = textSize;
  int get textSize => $unsafe['textSize'];
  set url(String url) => $unsafe['url'] = url;
  String get url => $unsafe['url'];
  set width(int width) => $unsafe['width'] = width;
  int get width => $unsafe['width'];
}
