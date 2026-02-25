import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SvgPictures {
  // Function to create a tappable SVG icon
  static Widget icons({
    required String pathname,
    required int height,
    required int width,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap, // Trigger the provided callback when the icon is tapped
      child: SvgPicture.asset(
        pathname, // Load SVG from assets
        height: height.h, // Height scaled for screen
        width: width.w, // Width scaled for screen
      ),
    );
  }
}
