import 'package:flutter/cupertino.dart';

class ImageHelper {
  static Widget LoadFromAsset(
    String imageFilePath, {
      double? width,
      double? height,
      BorderRadius? radius,
      BoxFit? fit,
      Color? tinColor,
      Alignment? aligament,

} ){
    return ClipRRect(
    borderRadius: radius ?? BorderRadius.zero,
    child: Image.asset(
    imageFilePath,
    width: width,
    height: height,
    fit: fit ?? BoxFit.contain,
    color: tinColor,
    alignment: aligament?? Alignment.center,
  ),
    );
  }
}