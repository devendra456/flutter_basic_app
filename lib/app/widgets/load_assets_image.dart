import 'package:flutter/material.dart';

class LoadAssetsImage extends StatelessWidget {
  final String path;
  final double? height;
  final double? width;
  final BoxFit? boxFit;
  final Color? imageColor;

  const LoadAssetsImage(
    this.path, {
    this.height,
    this.width,
    this.boxFit,
    this.imageColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      path,
      height: height,
      width: width,
      fit: boxFit,
      color: imageColor,
      errorBuilder: (context, _, stackTrace) {
        return const SizedBox();
      },
    );
  }
}
