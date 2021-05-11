library snapshot_carousel;

import 'package:flutter/material.dart';
import 'carousel_widget.dart';

/// SnapShot Carousel
class SnapShotCarousel {
  /// Returns a image Carousel
  static Widget snapShotCarousel(

      /// List of Image to be displayed.
      List<Image> imageList,
      {

      /// Sets the background color of the widget.
      /// Defaults to white.
      Color backgroundColor = Colors.white,

      /// Sets the border color of the selected image.
      /// Defaults to orange.
      Color selectedImageBorderColor = Colors.orange,

      /// Sets the border color of the unSelected image.
      /// Defaults to grey.
      Color unselectedImageBorderColor = Colors.grey,

      /// Sets the Height of the feature Image.
      /// Defaults to 250.
      double featureImageHeight = 250,

      /// Sets the border width of the Selected image.
      /// Defaults to 2.
      double selectedImageBorderWidth = 2,

      /// Sets the border width of the unSelected image.
      /// Defaults to 2.
      double unselectedImageBorderWidth = .5,

      /// Sets the Border Radius of the placeholder images.
      /// Defaults to 20.
      double borderRadius = 20,

      /// Sets the Border Radius of the feature Image.
      /// Defaults to 0.
      double featureImageBorderRadius = 0,

      /// Sets the Height of the placeholder Image.
      /// Defaults to 84.
      double placeholderImageHeight = 84,

      /// Sets the Border of the feature Image.
      /// Defaults to null
      Border featureImageBorder,

      /// Sets the BoxShadow of the feature Image.
      /// Defaults to null
      List<BoxShadow> featureImageBoxShadow}) {
    /// Return a Container with text if no Image is passed.
    if (imageList.length == 0) {
      return Container(
        child: Text("Please pass an non empty List of images."),
      );
    }

    /// Returns ImageCarouselWidget
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
