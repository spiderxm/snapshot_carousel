import 'package:flutter/material.dart';

/// Returns a Image Carousel Widget
class ImageCarouselWidget extends StatefulWidget {
  final List<Image> images;
  final Color selectedImageBorderColor;
  final Color unselectedImageBorderColor;
  final double imageHeight;
  final double selectedImageBorderWidth;
  final double unselectedImageBorderWidth;
  final double borderRadius;
  final double featureImageBorderRadius;
  final Border featureImageBorder;
  final List<BoxShadow> featureImageBoxShadow;
  final Color backgroundColor;

  ImageCarouselWidget(
      {this.images,
      this.selectedImageBorderColor,
      this.unselectedImageBorderColor,
      this.imageHeight,
      this.selectedImageBorderWidth,
      this.unselectedImageBorderWidth,
      this.borderRadius,
      this.featureImageBorderRadius,
      this.featureImageBorder,
      this.featureImageBoxShadow,
      this.backgroundColor});

  @override
  _ImageCarouselWidgetState createState() => _ImageCarouselWidgetState();
}

class _ImageCarouselWidgetState extends State<ImageCarouselWidget> {
  int index = 0;

  onTap(int index) {
    setState(() {
      this.index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
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
            height: widget.imageHeight,
            child: Center(
              child: ClipRRect(
                  borderRadius:
                      BorderRadius.circular(widget.featureImageBorderRadius),
                  child: widget.images[index]),
            ),
          ),
        ),
        Container(
          height: 100,
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
    );
  }
}

class ImagePlaceHolderWidget extends StatelessWidget {
  final Image image;
  final bool isSelected;
  final Function onTap;
  final int index;
  final Color selectedImageBorderColor;
  final Color unselectedImageBorderColor;
  final double selectedImageBorderWidth;
  final double unselectedImageBorderWidth;
  final double borderRadius;
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
          child: FlatButton(
              padding: EdgeInsets.all(0),
              onPressed: () {
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
