import 'package:flutter/material.dart';
import 'package:feedback/core/utils/size_utils.dart';
import 'package:feedback/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Title text style
  static get titleLargeLightblue700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.lightBlue700,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeOnPrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
}

extension on TextStyle {
  TextStyle get kohSantepheap {
    return copyWith(
      fontFamily: 'Koh Santepheap',
    );
  }
}
