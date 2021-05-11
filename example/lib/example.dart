import 'package:flutter/material.dart';
import 'package:snapshot_carousel/snapshot_carousel.dart';

class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        /// Snapshot Carousel with default configuration
        SnapShotCarousel.snapShotCarousel(
          [
            Image.network(
                "https://d2f9uwgpmber13.cloudfront.net/public/uploads/mobile/7c902eb8a6f1f3453fc9e0e99f34838c"),
            Image.network(
                "https://d2f9uwgpmber13.cloudfront.net/public/uploads/mobile/d774dd3de09fe0ecf043ddb9383c76bc"),
            Image.network(
                "https://d2f9uwgpmber13.cloudfront.net/public/uploads/mobile/87e5d8fda7b970c4fe5ffd23ad400436"),
            Image.network(
                "https://d2f9uwgpmber13.cloudfront.net/public/uploads/mobile/a9b4f4f1e7a144941d9c072e13937eab")
          ],
        ),

        /// Snapshot Carousel with custom height, border color and background Color
        SnapShotCarousel.snapShotCarousel([
          Image.network(
              "https://d2f9uwgpmber13.cloudfront.net/public/uploads/mobile/7c902eb8a6f1f3453fc9e0e99f34838c"),
          Image.network(
              "https://d2f9uwgpmber13.cloudfront.net/public/uploads/mobile/d774dd3de09fe0ecf043ddb9383c76bc"),
          Image.network(
              "https://d2f9uwgpmber13.cloudfront.net/public/uploads/mobile/87e5d8fda7b970c4fe5ffd23ad400436"),
          Image.network(
              "https://d2f9uwgpmber13.cloudfront.net/public/uploads/mobile/a9b4f4f1e7a144941d9c072e13937eab")
        ],
            backgroundColor: Colors.grey,
            imageHeight: 280,
            placeholderImageHeight: 100,
            selectedImageBorderColor: Colors.amberAccent,
            unselectedImageBorderColor: Colors.black),
      ],
    ));
  }
}
