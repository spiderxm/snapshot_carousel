import 'package:flutter/material.dart';

/// Image Carousel Widget - displays all images and interactivity.
class ImageCarouselWidget extends StatefulWidget {
  /// List of Image
  final List<Image> images;

  /// Selected Image Border Color
  final Color selectedImageBorderColor;

  /// Unselected Image Border Color
  final Color unselectedImageBorderColor;

  /// feature image height
  final double featureImageHeight;

  /// Selected Image Border Width
  final double selectedImageBorderWidth;

  /// Unselected Image Border Width
  final double unselectedImageBorderWidth;

  /// Border Radius of placeholder image
  final double borderRadius;

  /// Border Radius of feature image
  final double featureImageBorderRadius;

  /// Feature Image border
  final Border featureImageBorder;

  /// Feature Image BoxShadow
  final List<BoxShadow> featureImageBoxShadow;

  /// Background color of widget
  final Color backgroundColor;

  /// Placeholder Image height.
  final double placeholderImageHeight;

  ImageCarouselWidget(
      {this.images,
      this.selectedImageBorderColor,
      this.unselectedImageBorderColor,
      this.featureImageHeight,
      this.selectedImageBorderWidth,
      this.unselectedImageBorderWidth,
      this.borderRadius,
      this.featureImageBorderRadius,
      this.featureImageBorder,
      this.featureImageBoxShadow,
      this.backgroundColor,
      this.placeholderImageHeight});

  @override
  _ImageCarouselWidgetState createState() => _ImageCarouselWidgetState();
}

class _ImageCarouselWidgetState extends State<ImageCarouselWidget> {
  /// [index] maintains the current selected image in the list
  int index = 0;

  onTap(int index) {
    setState(() {
      this.index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.backgroundColor,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              decoration: BoxDecoration(
                  color: widget.backgroundColor,
                  borderRadius:
                      BorderRadius.circular(widget.featureImageBorderRadius),
                  border: widget.featureImageBorder,
                  boxShadow: widget.featureImageBoxShadow),
              height: widget.featureImageHeight,
              child: Center(
                child: ClipRRect(
                    borderRadius:
                        BorderRadius.circular(widget.featureImageBorderRadius),
                    child: widget.images[index]),
              ),
            ),
          ),
          Container(
            height: widget.placeholderImageHeight + 16,
            child: ListView.builder(
              itemCount: widget.images.length,
              itemBuilder: (ctx, i) {
                return ImagePlaceHolderWidget(
                    widget.images[i],
                    index == i,
                    onTap,
                    i,
                    widget.selectedImageBorderColor,
                    widget.unselectedImageBorderColor,
                    widget.selectedImageBorderWidth,
                    widget.unselectedImageBorderWidth,
                    widget.borderRadius,
                    widget.backgroundColor);
              },
              scrollDirection: Axis.horizontal,
            ),
          )
        ],
      ),
    );
  }
}

/// Widget for Placeholder Image
class ImagePlaceHolderWidget extends StatelessWidget {
  /// Image widget to be displayed.
  final Image image;

  /// Bool value which tells whether this widget is selected.
  final bool isSelected;

  /// Callback function
  final Function onTap;

  /// int index
  final int index;

  /// Selected placeholder image border color
  final Color selectedImageBorderColor;

  /// Unselected placeholder image border color
  final Color unselectedImageBorderColor;

  /// Selected placeholder image border width
  final double selectedImageBorderWidth;

  /// Unselected placeholder image border width
  final double unselectedImageBorderWidth;

  /// Border Radius
  final double borderRadius;

  /// Background color
  final Color backgroundColor;

  ImagePlaceHolderWidget(
      this.image,
      this.isSelected,
      this.onTap,
      this.index,
      this.selectedImageBorderColor,
      this.unselectedImageBorderColor,
      this.selectedImageBorderWidth,
      this.unselectedImageBorderWidth,
      this.borderRadius,
      this.backgroundColor);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: GestureDetector(
              onTap: () {
                onTap(index);
              },
              child: Container(
                child: ClipRRect(
                    child: image,
                    borderRadius: BorderRadius.circular(borderRadius)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(borderRadius),
                  border: isSelected == true
                      ? Border.all(
                          color: selectedImageBorderColor,
                          width: selectedImageBorderWidth)
                      : Border.all(
                          color: unselectedImageBorderColor,
                          width: unselectedImageBorderWidth),
                ),
              )),
        ),
      ),
    );
  }
}
