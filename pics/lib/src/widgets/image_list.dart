import 'package:flutter/material.dart';
import '../models/image_model.dart';
import 'image_item.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;

  ImageList(this.images);

  Widget build(context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, int index) {
        return Container(
          child: ImageItem(images[index]),
        );
      },
    );
  }
}
