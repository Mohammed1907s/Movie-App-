
import 'package:clean_arch/core/utils/app_constant.dart';

extension NonNullString on String? {
  String orEmpty() {
    if (this == null) {
      return AppConstant.empty;
    } else {
      return this!;
    }
  }
}

extension NonNullInteger on int? {
  int orZero() {
    if (this == null) {
      return AppConstant.zero;
    } else {
      return this!;
    }
  }
}
