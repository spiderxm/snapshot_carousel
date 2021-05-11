library snapshot_carousel;

import 'package:flutter/material.dart';
import 'carousel_widget.dart';

/// SnapShot Carousel
class SnapShotCarousel {
  /// Returns a image Carousel
  static Widget snapShotCarousel(List<Image> imageList,
      {Color backgroundColor = Colors.white,
      Color selectedImageBorderColor = Colors.orange,
      Color unselectedImageBorderColor = Colors.grey,
      double imageHeight = 250,
      double selectedImageBorderWidth = 2,
      double unselectedImageBorderWidth = .5,
      double borderRadius = 20,
      double featureImageBorderRadius = 0,
      Border featureImageBorder,
      List<BoxShadow> featureImageBoxShadow}) {
    return ImageCarouselWidget(
      images: imageList,
      selectedImageBorderColor: selectedImageBorderColor,
      unselectedImageBorderColor: unselectedImageBorderColor,
      imageHeight: imageHeight,
      selectedImageBorderWidth: selectedImageBorderWidth,
      unselectedImageBorderWidth: unselectedImageBorderWidth,
      borderRadius: borderRadius,
    );
  }
}
