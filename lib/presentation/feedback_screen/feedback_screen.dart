import 'package:feedback/widgets/custom_rating_bar.dart';
import 'package:feedback/widgets/custom_text_form_field.dart';
import 'package:feedback/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:feedback/core/app_export.dart';

class FeedbackScreen extends StatelessWidget {
  FeedbackScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController additionalfeedbackController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 102.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        "Feedback",
                        style: theme.textTheme.displaySmall,
                      ),
                      SizedBox(height: 57.v),
                      Text(
                        "Please rate your experience",
                        style: CustomTextStyles.titleLargeOnPrimary,
                      ),
                      SizedBox(height: 67.v),
                      CustomRatingBar(
                        initialRating: 4,
                      ),
                      SizedBox(height: 46.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 27.h,
                          right: 26.h,
                        ),
                        child: CustomTextFormField(
                          controller: additionalfeedbackController,
                          hintText: "Additional feedback",
                          textInputAction: TextInputAction.done,
                          maxLines: 8,
                        ),
                      ),
                      SizedBox(height: 76.v),
                      SizedBox(
                        height: 45.v,
                        width: 318.h,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 36.h,
                                  bottom: 4.v,
                                ),
                                child: Text(
                                  "Edit",
                                  style: theme.textTheme.titleLarge,
                                ),
                              ),
                            ),
                            CustomElevatedButton(
                              width: 318.h,
                              text: "Submit",
                              alignment: Alignment.center,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 26.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgSubtract,
                        height: 218.v,
                        width: 414.h,
                      ),
                    ],
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
