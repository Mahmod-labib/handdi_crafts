
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/core/responsive_handler/size_provider.dart';

extension SizeHelperExtension on BuildContext{
  bool get isLandscape=> MediaQuery.of(this).orientation == Orientation.landscape;

  double get screenWidth => isLandscape
     ? MediaQuery.of(this).size.height
     : MediaQuery.of(this).size.width;


  double get screenHeight => isLandscape
      ?MediaQuery.of(this).size.width
      :MediaQuery.of(this).size.height;

  SizeProvider get sizeProvider => SizeProvider.of(this);
  double get scaleWidth => sizeProvider.width /sizeProvider.baseSize.width;
  double get scaleHeight => sizeProvider.width /sizeProvider.baseSize.width;

  double setWidth(num w){
    return w= scaleWidth;
  }

  double setHeight(num h){
    return h= scaleHeight;
  }
  double setSp(num fontSize){
    return fontSize= scaleWidth;
  }
   setMinSize(num size){
    return size = min(scaleWidth , scaleHeight);
  }
}