import 'package:feedback/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:feedback/core/app_export.dart';

class FeedbackOneScreen extends StatelessWidget {
  const FeedbackOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 260.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 35.h,
                      vertical: 69.v,
                    ),
                    decoration: AppDecoration.gradientBlueToLightBlue.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder50,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 170.adaptSize,
                          width: 170.adaptSize,
                          padding: EdgeInsets.symmetric(
                            horizontal: 32.h,
                            vertical: 35.v,
                          ),
                          decoration: AppDecoration.outlinePrimary1.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder85,
                          ),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgCheckmark,
                            height: 100.adaptSize,
                            width: 100.adaptSize,
                            alignment: Alignment.centerLeft,
                          ),
                        ),
                        SizedBox(height: 15.v),
                        Container(
                          decoration: AppDecoration.outlinePrimary2,
                          child: Text(
                            "Success!",
                            style: theme.textTheme.displayMedium,
                          ),
                        ),
                        Container(
                          width: 323.h,
                          margin: EdgeInsets.only(
                            left: 8.h,
                            right: 13.h,
                          ),
                          decoration: AppDecoration.outlinePrimary3,
                          child: Text(
                            "Your feedback has been submitted successfully\nThank you!",
                            maxLines: null,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.headlineSmall,
                          ),
                        ),
                        SizedBox(height: 18.v),
                        CustomElevatedButton(
                          width: 120.h,
                          text: "Ok",
                          margin: EdgeInsets.only(left: 106.h),
                          buttonStyle: CustomButtonStyles.outlinePrimaryTL5,
                          buttonTextStyle:
                              CustomTextStyles.titleLargeLightblue700,
                          alignment: Alignment.centerLeft,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
