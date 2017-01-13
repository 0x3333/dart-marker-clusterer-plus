Dart MarkerClustererPlus
========================

This is a dart library to use [MarkerClustererPlus v2.1.2 from Google Maps Utility Library v3](https://github.com/googlemaps/js-marker-clusterer).
This library uses [google_maps](https://github.com/a14n/dart-google-maps) library from Alexandre Ardhuin. 

## Usage ##
To use this library in your code:

* First you have to follow the usage instructions in the `google_maps` library.

* add a dependency in your `pubspec.yaml` :

```yaml
dependencies:
  marker_clusterer_plus: ">=1.0.0 <2.0.0"
```

* add import in your `dart` code :

```dart
import 'package:marker_clusterer_plus/marker_clusterer_plus.dart';
```

* Include the JavaScript implementation using a `script` tag.

```html
<!-- This actually doesn't work. You have to host this file somewhere in your server. -->
<script src="https://raw.githubusercontent.com/googlemaps/js-marker-clusterer/gh-pages/src/markerclusterer.js"></script>
```

Examples are available in [example](example) directory.
A simple example:
```dart
import 'dart:html';

import 'package:google_maps/google_maps.dart';
import 'package:marker_clusterer_plus/marker_clusterer_plus.dart';

void main() {
  final mapOptions = new MapOptions()
      ..zoom = 3
      ..center = new LatLng(-34.397, 150.644)
      ..mapTypeId = MapTypeId.ROADMAP;
  final map = new GMap(querySelector("#map"), mapOptions);

  var markers = []; // Add some markers
  var markerClusterer = new MarkerClusterer(map, markers);
}
```

## Licensing

Copyright (c) 2014, Tercio Gaudencio Filho.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

* See [LICENSE](LICENSE)
