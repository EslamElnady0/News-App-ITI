import 'package:flutter/material.dart';

class NewsDetailsImage extends StatelessWidget {
  final String image;
  const NewsDetailsImage({
    required this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.52,
      width: double.infinity,
      decoration: BoxDecoration(
          image:
              DecorationImage(fit: BoxFit.cover, image: NetworkImage(image))),
    );
  }
}
