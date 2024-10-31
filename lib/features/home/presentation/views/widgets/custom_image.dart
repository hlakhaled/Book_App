import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * .16,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: AspectRatio(
              aspectRatio: 2.5 / 4,
              child: CachedNetworkImage(
                imageUrl: image,
                errorWidget: (context, url, error) => const Icon(Icons.error),
              )),
        ));
  }
}
