import 'dart:async';
import 'package:flutter/material.dart';
import 'package:dr_app/core/app_export.dart';
import 'package:dr_app/presentation/welcome_four_screen/welcome_four_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Use a Future.delayed to simulate a delay of 2 seconds
    Future.delayed(Duration(seconds: 2), () {
      // Navigate to the new page after the delay
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => WelcomeFourScreen()), // Replace YourNewPage with the actual page you want to navigate to
      );
    });

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Stack(
          children: [
            Container(
              width: SizeUtils.width,
              height: SizeUtils.height,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.5, 0),
                  end: Alignment(0.5, 1.22),
                  colors: [
                    appTheme.deepPurple100,
                    theme.colorScheme.onPrimary.withOpacity(1),
                  ],
                ),
              ),
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 5.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgGroup,
                          height: 60.v,
                          width: 60.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 4.h,
                            top: 5.v,
                            bottom: 3.v,
                          ),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Sweat",
                                  style: CustomTextStyles.displayMedium46,
                                ),
                                TextSpan(
                                  text: "Dr",
                                  style: theme.textTheme.displayLarge,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
