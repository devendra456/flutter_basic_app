import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoadAssetsSvgImage extends StatelessWidget {
  final String path;
  final double? height;
  final double? width;
  final BoxFit boxFit;
  final Color? color;

  const LoadAssetsSvgImage(
    this.path, {
    this.height,
    this.width,
    this.boxFit = BoxFit.contain,
    this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      path,
      width: width,
      height: height,
      fit: boxFit,
      colorFilter:
          color != null ? ColorFilter.mode(color!, BlendMode.src) : null,
      placeholderBuilder: (context) {
        return const SizedBox();
      },
    );
  }
}
