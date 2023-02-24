import 'controller/iphone_13_pro_max_four_controller.dart';
import 'package:flutter/material.dart';
import 'package:rohit_s_application3/core/app_export.dart';
import 'package:rohit_s_application3/core/utils/validation_functions.dart';
import 'package:rohit_s_application3/widgets/custom_button.dart';
import 'package:rohit_s_application3/widgets/custom_text_form_field.dart';

class Iphone13ProMaxFourScreen extends GetWidget<Iphone13ProMaxFourController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(
                0.5,
                0,
              ),
              end: Alignment(
                0.5,
                1,
              ),
              colors: [
                ColorConstant.purple500,
                ColorConstant.purple5006d,
                ColorConstant.purpleA40000,
              ],
            ),
          ),
          child: Form(
            child: Container(
              width: double.maxFinite,
              padding: getPadding(
                left: 48,
                top: 191,
                right: 48,
                bottom: 191,
              ),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_sign_up".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsExtraBold48.copyWith(
                            letterSpacing: getHorizontalSize(
                              0.38,
                            ),
                          ),
                        ),
                        CustomTextFormField(
                          focusNode: FocusNode(),
                          hintText: "lbl_email_address".tr,
                          margin: getMargin(
                            top: 16,
                          ),
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.emailAddress,
                          prefix: Container(
                            margin: getMargin(
                              left: 15,
                              top: 15,
                              right: 25,
                              bottom: 17,
                            ),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgMail,
                            ),
                          ),
                          prefixConstraints: BoxConstraints(
                            maxHeight: getVerticalSize(
                              54,
                            ),
                          ),
                          validator: (value) {
                            if (value == null ||
                                (!isValidEmail(value, isRequired: true))) {
                              return "Please enter valid email";
                            }
                            return null;
                          },
                        ),
                        CustomTextFormField(
                          hintText: "Password",
                          margin: getMargin(
                            top: 16,
                          ),
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.emailAddress,
                          prefix: Container(
                            margin: getMargin(
                              left: 15,
                              top: 15,
                              right: 25,
                              bottom: 17,
                            ),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgLock,
                            ),
                          ),
                          prefixConstraints: BoxConstraints(
                            maxHeight: getVerticalSize(
                              54,
                            ),
                          ),
                        ),
                        CustomButton(
                          onTap: () {
                            Create();
                          },
                          height: getVerticalSize(
                            54,
                          ),
                          text: "lbl_create_account".tr,
                          margin: getMargin(
                            top: 24,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 24,
                          ),
                          child: Divider(
                            thickness: getVerticalSize(
                              1,
                            ),
                            color: ColorConstant.black900,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 25,
                          ),
                          child: Text(
                            "msg_already_have_account".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsMedium16.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.38,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: getPadding(right: 30, top: 185),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "lbl_sign_in".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsBold22.copyWith(
                            letterSpacing: getHorizontalSize(
                              0.38,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Create() {
  Get.toNamed(AppRoutes.screen3);
}
