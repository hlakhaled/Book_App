import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .16,
      child: AspectRatio(
        aspectRatio: 2.5 / 4,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.white,
              image: const DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                  "https://th.bing.com/th/id/R.23ed49f2c1450b8fbc59e134e6a8e2d0?rik=zzYkKJsSf7IGpw&pid=ImgRaw&r=0",
                ),
              )),
        ),
      ),
    );
  }
}
