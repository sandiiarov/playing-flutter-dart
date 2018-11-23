import 'package:flutter/material.dart';
import '../models/image_model.dart';

class ImageItem extends StatelessWidget {
  final ImageModel image;

  ImageItem(this.image);

  Widget build(context) => Image.network(image.url);
}
