import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageItem extends StatelessWidget {
  const ImageItem({super.key, required this.image});

  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(end: 16),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .27,
        child: AspectRatio(
          aspectRatio: 2.6 / 4,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: AspectRatio(
              aspectRatio: 2.6 / 4,
              child: CachedNetworkImage(
                imageUrl: image,
                errorWidget: (context, url, error) => const Icon(Icons.error),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
