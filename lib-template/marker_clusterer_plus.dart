// Copyright (C) 2014 Tercio Gaudencio Filho. All rights reserved.
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.

library marker_clusterer_plus;

import 'dart:async';
import 'dart:js' as js;

import 'package:js_wrapping_generator/dart_generator.dart';
import 'package:js_wrapping/js_wrapping.dart' as jsw;

import 'package:google_maps/google_maps.dart';

part 'src/cluster.dart';
part 'src/cluster_icon.dart';
part 'src/marker_clusterer.dart';

typedef ClusterIconInfo Calculator(List<Marker> markers, int numStyles);
