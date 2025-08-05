import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

/// This widget is use SvgPicture to show svgs,
///
/// The difference is it allows client to pass color directly instead of using color filter
///
class CustomSvgPicture extends StatelessWidget {
  final String assetName;
  final double? width;
  final double? height;
  final Color? color;
  final BoxFit fit;

  factory CustomSvgPicture.asset({
    required String assetName,
    double? width,
    double? height,
    BoxFit? fit,
    Color? color,
  }) {
    return CustomSvgPicture._private(
      assetName: assetName,
      width: width,
      height: height,
      color: color,
      fit: fit ?? BoxFit.contain,
    );
  }

  const CustomSvgPicture._private({
    required this.assetName,
    required this.fit,
    this.width,
    this.height,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      assetName,
      width: width,
      height: height,
      fit: fit,
      colorFilter:
          color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null,
      placeholderBuilder: (context) {
        return Container(
          width: width,
          height: height,
          color: Colors.grey.shade200,
        );
      },
      errorBuilder: (context, error, stackTrace) {
        return Container(
          width: width,
          height: height,
          color: Colors.red,
          child: const Center(
            child: Icon(Icons.error),
          ),
        );
      },
    );
  }
}
