import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CirclularImage extends StatelessWidget {
  const CirclularImage({
    super.key,
    required this.imageLink,
    this.isFromAssets = false,
    this.radius = 28,
  });
  final String imageLink;
  final bool isFromAssets;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius.r,
      backgroundImage: isFromAssets
          ? AssetImage(imageLink) as ImageProvider
          : CachedNetworkImageProvider(imageLink),
    );
  }
}
