import 'package:dr_app/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:dr_app/presentation/sign_up_screen/sign_up_screen.dart';

class WelcomeFourScreen extends StatelessWidget {
  WelcomeFourScreen({Key? key})
      : super(
          key: key,
        );

  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(top: 64.v),
          child: Column(
            children: [
              SizedBox(
                height: 564.v,
                child: PageView(
                  controller: pageController,
                  scrollDirection: Axis.horizontal,
                  children: [

                    // ============================================start first page======================================

                   
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20.h),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 278.v,
                            width: 293.h,
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.floor,
                                  height: 154.v,
                                  width: 266.h,
                                  alignment: Alignment.bottomCenter,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.Shadows1,
                                  height: 85.v,
                                  width: 278.h,
                                  alignment: Alignment.bottomCenter,
                                  margin: EdgeInsets.only(bottom: 7.v),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.Plants1,
                                  height: 43.v,
                                  width: 271.h,
                                  alignment: Alignment.bottomCenter,
                                  margin: EdgeInsets.only(bottom: 77.v),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: SizedBox(
                                    height: 223.v,
                                    width: 87.h,
                                    child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.Backpack,
                                          height: 60.v,
                                          width: 43.h,
                                          alignment: Alignment.topLeft,
                                          margin: EdgeInsets.only(top: 35.v),
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.Chest1,
                                          height: 144.v,
                                          width: 66.h,
                                          alignment: Alignment.bottomCenter,
                                        ),
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: SizedBox(
                                            height: 91.v,
                                            width: 82.h,
                                            child: Stack(
                                              alignment: Alignment.topRight,
                                              children: [
                                                Align(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  child: Container(
                                                    height: 40.adaptSize,
                                                    width: 40.adaptSize,
                                                    margin: EdgeInsets.only(
                                                        bottom: 19.v),
                                                    child: Stack(
                                                      alignment:
                                                          Alignment.topRight,
                                                      children: [
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .hand2,
                                                          height: 40.adaptSize,
                                                          width: 40.adaptSize,
                                                          alignment:
                                                              Alignment.center,
                                                        ),
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgVector,
                                                          height: 7.v,
                                                          width: 2.h,
                                                          alignment: Alignment
                                                              .topRight,
                                                          margin:
                                                              EdgeInsets.only(
                                                            top: 6.v,
                                                            right: 4.h,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.Vector,
                                                  height: 16.adaptSize,
                                                  width: 16.adaptSize,
                                                  alignment: Alignment.topRight,
                                                  margin: EdgeInsets.only(
                                                    top: 27.v,
                                                    right: 5.h,
                                                  ),
                                                ),
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .fingers,
                                                  height: 17.v,
                                                  width: 13.h,
                                                  alignment: Alignment.topRight,
                                                  margin: EdgeInsets.only(
                                                      top: 27.v),
                                                ),
                                                Align(
                                                  alignment: Alignment.topRight,
                                                  child: Container(
                                                    height: 6.v,
                                                    width: 7.h,
                                                    margin: EdgeInsets.only(
                                                      top: 25.v,
                                                      right: 6.h,
                                                    ),
                                                    child: Stack(
                                                      alignment:
                                                          Alignment.topRight,
                                                      children: [
                                                        CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgSettingsBlueGray80001,
                                                          height: 6.v,
                                                          width: 7.h,
                                                          alignment:
                                                              Alignment.center,
                                                        ),
                                                        CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgVectorErrorcontainer,
                                                          height: 1.v,
                                                          width: 2.h,
                                                          alignment: Alignment
                                                              .topRight,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Opacity(
                                                  opacity: 0.1,
                                                  child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgVectorBlack900,
                                                    height: 5.adaptSize,
                                                    width: 5.adaptSize,
                                                    alignment:
                                                        Alignment.topRight,
                                                    margin: EdgeInsets.only(
                                                      top: 26.v,
                                                      right: 8.h,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment: Alignment.topRight,
                                                  child: Container(
                                                    height: 5.v,
                                                    width: 3.h,
                                                    margin: EdgeInsets.only(
                                                      top: 24.v,
                                                      right: 12.h,
                                                    ),
                                                    child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgVectorDeepPurple300,
                                                          height: 5.v,
                                                          width: 3.h,
                                                          alignment:
                                                              Alignment.center,
                                                        ),
                                                        Opacity(
                                                          opacity: 0.3,
                                                          child:
                                                              CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgVectorBlack9005x3,
                                                            height: 5.v,
                                                            width: 3.h,
                                                            alignment: Alignment
                                                                .center,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment: Alignment.topRight,
                                                  child: Container(
                                                    height: 5.v,
                                                    width: 3.h,
                                                    margin: EdgeInsets.only(
                                                      top: 24.v,
                                                      right: 12.h,
                                                    ),
                                                    child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgVectorDeepPurple3005x3,
                                                          height: 5.v,
                                                          width: 3.h,
                                                          alignment:
                                                              Alignment.center,
                                                        ),
                                                        Opacity(
                                                          opacity: 0.2,
                                                          child:
                                                              CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgVector5x3,
                                                            height: 5.v,
                                                            width: 3.h,
                                                            alignment: Alignment
                                                                .center,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Container(
                                                    height: 91.v,
                                                    width: 44.h,
                                                    margin: EdgeInsets.only(
                                                        left: 11.h),
                                                    child: Stack(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      children: [
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .chest,
                                                          height: 91.v,
                                                          width: 44.h,
                                                          alignment:
                                                              Alignment.center,
                                                        ),
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgContrast,
                                                          height: 11.v,
                                                          width: 13.h,
                                                          alignment: Alignment
                                                              .centerRight,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  right: 2.h),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .top,
                                                  height: 47.v,
                                                  width: 32.h,
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  margin: EdgeInsets.only(
                                                      bottom: 3.v),
                                                ),
                                                
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                
                                CustomImageView(
                                  imagePath: ImageConstant.character_2,
                                  height: 213.v,
                                  width: 99.h,
                                  alignment: Alignment.bottomCenter,
                                  margin: EdgeInsets.only(bottom: 14.v),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.character_1,
                                  height: 230.v,
                                  width: 93.h,
                                  alignment: Alignment.topLeft,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.speech_bubble,
                                  height: 50.v,
                                  width: 50.h,
                                  alignment: Alignment.topCenter,
                                  margin: EdgeInsets.only(top: 2.v),
                                ),
                              ],
                            ),
                          ),


                           Padding(
                            padding: EdgeInsets.only(
                              top: 41.v,
                              right: 6.h,
                            ),
                            child: Text(
                              "Welcome to SweatDR",
                              style: theme.textTheme.displaySmall,
                            ),
                          ),
                          Container(
                            width: 328.h,
                            margin: EdgeInsets.only(right: 6.h),
                            child: Text(
                              "SweatDR is a tool to help you monitor your health, exercise and adopt a healthier lifestyle.",
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.titleMediumBluegray400
                                  .copyWith(
                                height: 1.63,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    
                     Container(
                      padding: EdgeInsets.symmetric(horizontal: 20.h),
                      child: Column(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgIllusrtarion2,
                            height: 291.v,
                            width: 326.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 43.v,
                              right: 12.h,
                            ),
                            child: Text(
                              "Track Your Progress",
                              style: theme.textTheme.displaySmall,
                            ),
                          ),
                          Container(
                            width: 322.h,
                            margin: EdgeInsets.only(right: 12.h),
                            child: Text(
                              "Record your exercise, meal intake, weight, creatine, and glucose data.Track your progress and optimize your health.",
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.titleMediumBluegray400
                                  .copyWith(
                                height: 1.63,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20.h),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 292.v,
                            width: 318.h,
                            child: Stack(
                              alignment: Alignment.topRight,
                              children: [
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    height: 162.v,
                                    width: 318.h,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 16.h,
                                      vertical: 13.v,
                                    ),
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: fs.Svg(
                                          ImageConstant.floor,
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    child: Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant
                                              .Shadows,
                                          height: 103.v,
                                          width: 274.h,
                                          alignment: Alignment.bottomLeft,
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant
                                              .Plants,
                                          height: 50.v,
                                          width: 24.h,
                                          alignment: Alignment.topRight,
                                          margin: EdgeInsets.only(
                                            top: 35.v,
                                            right: 3.h,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 100.h),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Container(
                                          height: 94.v,
                                          width: 24.h,
                                          margin: EdgeInsets.only(top: 10.v),
                                          child: Stack(
                                            alignment: Alignment.centerLeft,
                                            children: [
                                              CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgTelevision,
                                                height: 35.v,
                                                width: 20.h,
                                                alignment: Alignment.topLeft,
                                              ),
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgUserPrimarycontainer,
                                                height: 35.v,
                                                width: 20.h,
                                                alignment: Alignment.centerLeft,
                                              ),
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgUserPrimarycontainer35x20,
                                                height: 35.v,
                                                width: 20.h,
                                                alignment: Alignment.bottomLeft,
                                              ),
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgSettingsErrorcontainer,
                                                height: 14.v,
                                                width: 7.h,
                                                alignment: Alignment.topRight,
                                                margin:
                                                    EdgeInsets.only(top: 12.v),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: 94.v,
                                          width: 25.h,
                                          margin: EdgeInsets.only(
                                            left: 4.h,
                                            bottom: 10.v,
                                          ),
                                          child: Stack(
                                            alignment: Alignment.centerLeft,
                                            children: [
                                              Align(
                                                alignment: Alignment.topLeft,
                                                child: SizedBox(
                                                  height: 35.v,
                                                  width: 20.h,
                                                  child: Stack(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    children: [
                                                      CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgUserPrimarycontainer35x19,
                                                        height: 35.v,
                                                        width: 19.h,
                                                        alignment: Alignment
                                                            .centerLeft,
                                                      ),
                                                      Align(
                                                        alignment: Alignment
                                                            .centerRight,
                                                        child: SizedBox(
                                                          height: 34.v,
                                                          width: 19.h,
                                                          child: Stack(
                                                            alignment: Alignment
                                                                .bottomRight,
                                                            children: [
                                                              CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgUserPurple300,
                                                                height: 34.v,
                                                                width: 19.h,
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                              ),
                                                              CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgMusic,
                                                                height: 19.v,
                                                                width: 12.h,
                                                                alignment: Alignment
                                                                    .bottomRight,
                                                                margin:
                                                                    EdgeInsets
                                                                        .only(
                                                                  right: 2.h,
                                                                  bottom: 6.v,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgTelevisionPrimarycontainer,
                                                height: 35.v,
                                                width: 20.h,
                                                alignment: Alignment.centerLeft,
                                              ),
                                              CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgUser35x20,
                                                height: 35.v,
                                                width: 20.h,
                                                alignment: Alignment.bottomLeft,
                                              ),
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgSettingsErrorcontainer,
                                                height: 14.v,
                                                width: 7.h,
                                                alignment:
                                                    Alignment.centerRight,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgBottle,
                                  height: 198.v,
                                  width: 58.h,
                                  alignment: Alignment.topLeft,
                                  margin: EdgeInsets.only(
                                    left: 23.h,
                                    top: 26.v,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Container(
                                    height: 221.v,
                                    width: 170.h,
                                    margin: EdgeInsets.only(
                                      left: 56.h,
                                      bottom: 27.v,
                                    ),
                                    child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant
                                              .imgSettingsOnprimary26x77,
                                          height: 26.v,
                                          width: 77.h,
                                          alignment: Alignment.centerRight,
                                          margin: EdgeInsets.only(right: 1.h),
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant
                                              .imgThumbsUpPurple300,
                                          height: 96.v,
                                          width: 89.h,
                                          alignment: Alignment.bottomRight,
                                          margin: EdgeInsets.only(
                                            right: 6.h,
                                            bottom: 51.v,
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant
                                              .imgSettingsOnprimary48x78,
                                          height: 48.v,
                                          width: 78.h,
                                          alignment: Alignment.bottomRight,
                                          margin: EdgeInsets.only(bottom: 62.v),
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgMobile,
                                          height: 212.v,
                                          width: 81.h,
                                          alignment: Alignment.topLeft,
                                          margin: EdgeInsets.only(left: 11.h),
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant
                                              .imgContrastOnprimary,
                                          height: 54.v,
                                          width: 51.h,
                                          alignment: Alignment.bottomLeft,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgTelevisionPurple300,
                                  height: 46.v,
                                  width: 72.h,
                                  alignment: Alignment.bottomCenter,
                                  margin: EdgeInsets.only(bottom: 17.v),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgChartacter,
                                  height: 206.v,
                                  width: 82.h,
                                  alignment: Alignment.centerRight,
                                  margin: EdgeInsets.only(right: 32.h),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 14.h,
                                top: 43.v,
                                right: 14.h,
                              ),
                              child: Text(
                                "Begin Your Wellness",
                                style: theme.textTheme.displaySmall,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: 304.h,
                              margin: EdgeInsets.only(right: 28.h),
                              child: Text(
                                "Determine your health goals. Don't skip these steps to help us provide you with personalized recommendations.",
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.titleMediumBluegray400
                                    .copyWith(
                                  height: 1.63,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20), // Add some space between the text and the button
                                          Align(
                        alignment: Alignment.center,
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 0),
                          child: ElevatedButton(
                            onPressed: () {
                              // Add functionality for the Get Started button
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => SignUpScreen()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 41, 119, 184), // Set the button color
                              onPrimary: Colors.white, // Set the text color
                              padding: EdgeInsets.symmetric(horizontal: 150, vertical: 30), // Set width and height
                            ),
                            child: Text(
                              "Get Started",
                              style: TextStyle(
                                fontSize: 10, // Set the text size suitable for the button
                              ),
                            ),
                          ),
                        ),
                        )
                        ],
                      ),
                    ),

              
                  ],
                ),
              ),
              SizedBox(height: 5.v),
              SmoothPageIndicator(
                controller: pageController,
                count: 3,
                axisDirection: Axis.horizontal,
                effect: ScrollingDotsEffect(
                  spacing: 6,
                  activeDotColor: appTheme.deepPurpleA100,
                  dotColor: appTheme.gray300,
                  dotHeight: 12.v,
                  dotWidth: 12.h,
                ),
                onDotClicked: (value) {
                  pageController.jumpToPage(value);
                },
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildRowOne(context),
      ),
    );
  }
 
  /// Section Widget
  Widget _buildRowOne(BuildContext context) {
  return Padding(
    padding: EdgeInsets.only(
      left: 20.h,
      right: 20.h,
      bottom: 42.v,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            // Navigate to the next page when "Skip" is clicked
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) =>SignUpScreen()), // Replace YourNextPage with the actual page you want to navigate to
            );
          },
          child: Padding(
            padding: EdgeInsets.only(bottom: 2.v),
            child: Text(
              "Skip",
              style: CustomTextStyles.labelLargeDeeppurpleA100,
            ),
          ),
        ),
        Spacer(),
    
                      Text(
                        "Next",
                        style: CustomTextStyles.titleSmallDeeppurple500,
                      ),
                     
          
        CustomImageView(
          imagePath: ImageConstant.imgArrowRightDeepPurple500,
          height: 18.adaptSize,
          width: 18.adaptSize,
          margin: EdgeInsets.only(left: 4.h),
        ),
      ],
    ),
  );
}


  /// Common widget
  Widget _buildStackOne(
    BuildContext context, {
    required String image1,
    required String image2,
  }) {
    return SizedBox(
      height: 5.v,
      width: 3.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: image1,
            height: 5.v,
            width: 3.h,
            alignment: Alignment.center,
          ),
          Opacity(
            opacity: 0.2,
            child: CustomImageView(
              imagePath: image2,
              height: 5.v,
              width: 3.h,
              alignment: Alignment.center,
            ),
          ),
           
        ],
      ),
    );
  }
}
