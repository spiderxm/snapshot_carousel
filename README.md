# Snapshot Carousel

Flutter package for Image Carousel
It is an image carousel widget.

## Supported platforms

* Flutter Android
* Flutter iOS
* Flutter web
* Flutter desktop


### Import package
Add `snapshot_carousel: ^0.0.1` to your `pubspec.yaml` dependencies. And import it:
```
import 'package:snapshot_carousel/snapshot_carousel.dart';
```

### How to use

Simply create a `snapShotCarousel` widget, and pass the required parameters:

```dart
SnapShotCarousel.snapShotCarousel(
      List<Image> imageList,
      {Color backgroundColor = Colors.white,
      Color selectedImageBorderColor = Colors.orange,
      Color unselectedImageBorderColor = Colors.grey,
      double featureImageHeight = 250,
      double selectedImageBorderWidth = 2,
      double unselectedImageBorderWidth = .5,
      double borderRadius = 20,
      double featureImageBorderRadius = 0,
      double placeholderImageHeight = 84,
      Border featureImageBorder,
      List<BoxShadow> featureImageBoxShadow}
);
```

### Example

```dart
import 'package:flutter/material.dart';
import 'package:snapshot_carousel/snapshot_carousel.dart';

class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        SnapShotCarousel.snapShotCarousel([
          Image.network(
              "https://d2f9uwgpmber13.cloudfront.net/public/uploads/mobile/7c902eb8a6f1f3453fc9e0e99f34838c"),
          Image.network(
              "https://d2f9uwgpmber13.cloudfront.net/public/uploads/mobile/d774dd3de09fe0ecf043ddb9383c76bc"),
          Image.network(
              "https://d2f9uwgpmber13.cloudfront.net/public/uploads/mobile/87e5d8fda7b970c4fe5ffd23ad400436"),
          Image.network(
              "https://d2f9uwgpmber13.cloudfront.net/public/uploads/mobile/a9b4f4f1e7a144941d9c072e13937eab")
        ],)
      ],
    ));
  }
}

```

## Demo

![img](screenshot/example.gif)

## License

>New BSD License

