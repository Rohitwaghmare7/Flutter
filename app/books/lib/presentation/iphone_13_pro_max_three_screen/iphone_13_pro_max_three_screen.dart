import 'controller/iphone_13_pro_max_three_controller.dart';
import 'package:flutter/material.dart';
import 'package:rohit_s_application3/core/app_export.dart';

class Iphone13ProMaxThreeScreen
    extends GetWidget<Iphone13ProMaxThreeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0.5, 0),
                        end: Alignment(0.5, 1),
                        colors: [
                      ColorConstant.purpleA700,
                      ColorConstant.purple50087,
                      ColorConstant.purpleA70000
                    ])),
                child: Container(
                    width: double.maxFinite,
                    padding: getPadding(left: 34, right: 34),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("lbl_relax_and_read".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold44),
                          CustomImageView(
                              imagePath: ImageConstant.imgSaly16,
                              height: getSize(360),
                              width: getSize(360),
                              margin: getMargin(top: 70, bottom: 1))
                        ])))));
  }
}
