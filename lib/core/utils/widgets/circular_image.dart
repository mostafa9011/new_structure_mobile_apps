import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../enums/image_type.dart';
import '../functions/kprint.dart';

class CircularImage extends StatelessWidget {
  final double radius;
  final String image;
  final ImageType imageType;
  const CircularImage({
    required this.radius, required this.image, super.key,
    this.imageType = ImageType.network,
  });

  @override
  Widget build(BuildContext context) {
    kprint("Image: $image");
    // if image is from assets
    if (imageType == ImageType.assets) {
      return Container(
        width: (radius * 2).r,
        height: (radius * 2).r,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: ClipOval(
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    // if image is from svg
    else if (imageType == ImageType.svg) {
      return Container(
        width: (radius * 2).r,
        height: (radius * 2).r,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: ClipOval(
          child: SvgPicture.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    // if image is from file
    else if (imageType == ImageType.file) {
      return Container(
        width: (radius * 2).r,
        height: (radius * 2).r,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: ClipOval(
          child: Image.file(
            File(image),
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    // if image is from network
    else {
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
                "https://static.vecteezy.com/system/resources/previews/029/136/743/non_2x/error-round-line-icon-alert-attention-problem-danger-exclamation-mark-circle-circular-button-alarm-caution-warn-warning-black-line-sign-symbol-vector.jpg",
                fit: BoxFit.cover,
              );
            },
            placeholder: (context, url) =>
                const CircularProgressIndicator.adaptive(),
          ),
        ),
      );
    }
  }
}
