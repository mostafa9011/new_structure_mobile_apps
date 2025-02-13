import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_structure/core/utils/functions/kprint.dart';

class CircularImage extends StatelessWidget {
  final double radius;
  final String image;
  const CircularImage({
    super.key,
    required this.radius,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    kprint("Image: $image");
    return Container(
      width: (radius * 2).r,
      height: (radius * 2).r,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: ClipOval(
        child: CachedNetworkImage(
          imageUrl: image.trim(),
          fit: BoxFit.cover,
          errorWidget: (context, url, error) {
            return Image.network(
              "https://img.freepik.com/premium-vector/businessman-avatar_24908-26533.jpg?w=996",
              fit: BoxFit.cover,
            );
          },
          errorListener: (exception) {
            kprint("Error: $exception");
          },
          placeholder: (context, url) =>
              const CircularProgressIndicator.adaptive(),
        ),
      ),
    );
  }
}
