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
      double featureImageHeight = 250,
      double selectedImageBorderWidth = 2,
      double unselectedImageBorderWidth = .5,
      double borderRadius = 20,
      double featureImageBorderRadius = 0,
      double placeholderImageHeight = 84,
      Border featureImageBorder,
      List<BoxShadow> featureImageBoxShadow}) {
    /// Return a Container with text if no Image is passed.
    if (imageList.length == 0) {
      return Container(
        child: Text("Please pass an non empty List of images."),
      );
    }
    return ImageCarouselWidget(
      images: imageList,
      selectedImageBorderColor: selectedImageBorderColor,
      unselectedImageBorderColor: unselectedImageBorderColor,
      featureImageHeight: featureImageHeight,
      selectedImageBorderWidth: selectedImageBorderWidth,
      unselectedImageBorderWidth: unselectedImageBorderWidth,
      borderRadius: borderRadius,
      featureImageBorderRadius: featureImageBorderRadius,
      featureImageBoxShadow: featureImageBoxShadow,
      featureImageBorder: featureImageBorder,
      backgroundColor: backgroundColor,
      placeholderImageHeight: placeholderImageHeight,
    );
  }
}
