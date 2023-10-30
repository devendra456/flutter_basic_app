import 'package:flutter/cupertino.dart';

import 'configs.dart';

extension AppSpacing on Spacing {
  Widget horizontal() {
    switch (this) {
      case Spacing.s1:
        return SizedBox(width: Spacing.s1.toDouble());
      case Spacing.s2:
        return SizedBox(width: Spacing.s2.toDouble());
      case Spacing.s3:
        return SizedBox(width: Spacing.s3.toDouble());
      case Spacing.m1:
        return SizedBox(width: Spacing.m1.toDouble());
      case Spacing.m2:
        return SizedBox(width: Spacing.m2.toDouble());
      case Spacing.m3:
        return SizedBox(width: Spacing.m3.toDouble());
      case Spacing.l:
        return SizedBox(width: Spacing.l.toDouble());
      case Spacing.xl:
        return SizedBox(width: Spacing.xl.toDouble());
      case Spacing.xxl:
        return SizedBox(width: Spacing.xxl.toDouble());
      case Spacing.xxxl:
        return SizedBox(width: Spacing.xxxl.toDouble());
    }
  }

  Widget vertical() {
    switch (this) {
      case Spacing.s1:
        return SizedBox(height: Spacing.s1.toDouble());
      case Spacing.s2:
        return SizedBox(height: Spacing.s2.toDouble());
      case Spacing.s3:
        return SizedBox(height: Spacing.s3.toDouble());
      case Spacing.m1:
        return SizedBox(height: Spacing.m1.toDouble());
      case Spacing.m2:
        return SizedBox(height: Spacing.m2.toDouble());
      case Spacing.m3:
        return SizedBox(height: Spacing.m3.toDouble());
      case Spacing.l:
        return SizedBox(height: Spacing.l.toDouble());
      case Spacing.xl:
        return SizedBox(height: Spacing.xl.toDouble());
      case Spacing.xxl:
        return SizedBox(height: Spacing.xxl.toDouble());
      case Spacing.xxxl:
        return SizedBox(height: Spacing.xxxl.toDouble());
    }
  }
}
