// Copyright (C) 2014 Tercio Gaudencio Filho. All rights reserved.
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.

import 'dart:io';

import 'package:js_wrapping_generator/dart_generator.dart';
import 'package:path/path.dart' as path;

main(List<String> args) {
  Generator generator = new Generator('packages');

  final library = path.join('lib-template', 'marker_clusterer_plus.dart');
  final template = new Directory('lib-template/src');
  final target = new Directory('lib/src/generated');

  generator.transformDirectory(//
      new File(library), //
      new Directory(template.path), //
      new Directory(target.path));
}
