import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppDimes {}

enum Spacing {
  /// 4.0
  s1,

  /// 8.0
  s2,

  /// 12.0
  s3,

  /// 16.0
  m1,

  /// 20.0
  m2,

  /// 24.0
  m3,

  /// 28.0
  l,

  /// 32.0
  xl,

  /// 36.0
  xxl,

  /// 40.0
  xxxl,
}

extension SpacingExt on Spacing {
  double toDouble() {
    switch (this) {
      case Spacing.s1:
        return 4.0.sp;
      case Spacing.s2:
        return 8.0.sp;
      case Spacing.s3:
        return 12.0.sp;
      case Spacing.m1:
        return 16.0.sp;
      case Spacing.m2:
        return 20.0.sp;
      case Spacing.m3:
        return 24.0.sp;
      case Spacing.l:
        return 28.0.sp;
      case Spacing.xl:
        return 32.0.sp;
      case Spacing.xxl:
        return 36.0.sp;
      case Spacing.xxxl:
        return 40.0.sp;
    }
  }
}
