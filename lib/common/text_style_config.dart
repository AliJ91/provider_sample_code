import 'package:flutter/material.dart';
import 'package:provider_usage_code/common/colors.dart';
import 'package:provider_usage_code/common/font_constants.dart' as constants;

class AppTextStyleConfig {
//black textStyle
  static late TextStyle textStyleBlack20;
  static late TextStyle textStyleBlack28;
  static late TextStyle textStyleBlack18;
  static late TextStyle textStyleBlack16;
  static late TextStyle textStyleBlack14;
  static late TextStyle textStyleBlack12;

  //dark grey textStyle
  static late TextStyle textStyleDarkGrey20;
  static late TextStyle textStyleDarkGrey18;
  static late TextStyle textStyleDarkGrey16;
  static late TextStyle textStyleDarkGrey14;
  static late TextStyle textStyleDarkGrey12;

  //app blue color textStyle
  static late TextStyle textStyleAppBlue20;
  static late TextStyle textStyleAppBlue18;
  static late TextStyle textStyleAppBlue16;
  static late TextStyle textStyleAppBlue14;
  static late TextStyle textStyleAppBlue12;

//grey textStyle
  static late TextStyle textStyleGrey20;
  static late TextStyle textStyleGrey18;
  static late TextStyle textStyleGrey16;
  static late TextStyle textStyleGrey14;
  static late TextStyle textStyleGrey12;

//light grey textStyle
  static late TextStyle textStyleLightGrey20;
  static late TextStyle textStyleLightGrey18;
  static late TextStyle textStyleLightGrey16;
  static late TextStyle textStyleLightGrey14;
  static late TextStyle textStyleLightGrey12;

//white textStyle
  static late TextStyle textStyleWhite20;
  static late TextStyle textStyleWhite18;
  static late TextStyle textStyleWhite16;
  static late TextStyle textStyleWhite14;
  static late TextStyle textStyleWhite12;

//PrimaryMedium textStyle
  static late TextStyle textStylePrimaryMedium20;
  static late TextStyle textStylePrimaryMedium18;
  static late TextStyle textStylePrimaryMedium16;
  static late TextStyle textStylePrimaryMedium14;
  static late TextStyle textStylePrimaryMedium12;

//PrimaryLight textStyle
  static late TextStyle textStyleSecondaryLightest20;
  static late TextStyle textStyleSecondaryLightest18;
  static late TextStyle textStyleSecondaryLightest16;
  static late TextStyle textStyleSecondaryLightest14;
  static late TextStyle textStyleSecondaryLightest12;

  static late TextStyle activeTextStyle;
  static late TextStyle inActiveTextStyle;
  static late TextStyle buttonTextStyle;


  //MUST: be called at the first build method in the app to use it along the application
  //in our case in [MyApp]
  void init(BuildContext context) {

    activeTextStyle = Theme.of(context).textTheme.bodyMedium!.copyWith(
        color: AppColors.appMain100,
        fontWeight: FontWeight.w400,
        fontFamily: constants.fontFamily,
        fontStyle: FontStyle.normal,
        fontSize: 12);

    inActiveTextStyle = Theme.of(context).textTheme.bodyMedium!.copyWith(
        color: AppColors.black,
        fontWeight: FontWeight.w400,
        fontFamily: constants.fontFamily,
        fontStyle: FontStyle.normal,
        fontSize: 12);

    buttonTextStyle = Theme.of(context).textTheme.bodyLarge!.copyWith(
        color: Colors.white,
        fontWeight: FontWeight.w400,
        fontFamily: constants.fontFamily,
        letterSpacing: 0.7,
        fontStyle: FontStyle.normal,
        fontSize: 14);

    //black textStyle
    textStyleBlack28 = Theme.of(context).textTheme.bodyMedium!.copyWith(
      color: AppColors.textBlack,
      fontSize: 28,
      fontWeight: FontWeight.w500,
      fontFamily: constants.fontFamily,
    );
    textStyleBlack20 = Theme.of(context).textTheme.bodyMedium!.copyWith(
      color: AppColors.textBlack,
      fontSize: 20,
      fontFamily: constants.fontFamily,
    );
    textStyleBlack18 = Theme.of(context).textTheme.bodyMedium!.copyWith(
      color: AppColors.textBlack,
      fontSize: 18,
      fontFamily: constants.fontFamily,
    );
    textStyleBlack16 = Theme.of(context).textTheme.bodyMedium!.copyWith(
      color: AppColors.textBlack,
      fontSize: 16,
      fontFamily: constants.fontFamily,
    );
    textStyleBlack14 = Theme.of(context).textTheme.bodyMedium!.copyWith(
      color: AppColors.textBlack,
      fontSize: 14,
      fontFamily: constants.fontFamily,
    );
    textStyleBlack12 = Theme.of(context).textTheme.bodyMedium!.copyWith(
      color: AppColors.textBlack,
      fontSize: 12,
      fontFamily: constants.fontFamily,
    );

    //dark grey textStyle
    textStyleDarkGrey20 = Theme.of(context).textTheme.bodyMedium!.copyWith(
      color: AppColors.textGrey2,
      fontSize: 20,
      fontFamily: constants.fontFamily,
    );
    textStyleDarkGrey18 = Theme.of(context).textTheme.bodyMedium!.copyWith(
      color: AppColors.textGrey2,
      fontSize: 18,
      fontFamily: constants.fontFamily,
    );
    textStyleDarkGrey16 = Theme.of(context).textTheme.bodyMedium!.copyWith(
      color: AppColors.textGrey2,
      fontSize: 16,
      fontFamily: constants.fontFamily,
    );
    textStyleDarkGrey14 = Theme.of(context).textTheme.bodyMedium!.copyWith(
      color: AppColors.textGrey2,
      fontSize: 14,
      fontFamily: constants.fontFamily,
    );
    textStyleDarkGrey12 = Theme.of(context).textTheme.bodyMedium!.copyWith(
      color: AppColors.textGrey2,
      fontSize: 12,
      fontFamily: constants.fontFamily,
    );

//grey textStyle
    textStyleGrey20 = Theme.of(context).textTheme.bodyMedium!.copyWith(
      color: AppColors.grayDark5,
      fontSize: 20,
      fontFamily: constants.fontFamily,
    );
    textStyleGrey18 = Theme.of(context).textTheme.bodyMedium!.copyWith(
      color: AppColors.grayDark5,
      fontSize: 18,
      fontFamily: constants.fontFamily,
    );
    textStyleGrey16 = Theme.of(context).textTheme.bodyMedium!.copyWith(
      color: AppColors.grayDark5,
      fontSize: 16,
      fontFamily: constants.fontFamily,
    );
    textStyleGrey14 = Theme.of(context).textTheme.bodyMedium!.copyWith(
      color: AppColors.grayDark5,
      fontSize: 14,
      fontFamily: constants.fontFamily,
    );
    textStyleGrey12 = Theme.of(context).textTheme.bodyMedium!.copyWith(
      color: AppColors.grayDark5,
      fontSize: 12,
      fontFamily: constants.fontFamily,
    );

//light grey textStyle
    textStyleLightGrey20 = Theme.of(context).textTheme.bodyMedium!.copyWith(
      color: AppColors.textGrey4,
      fontSize: 20,
      fontFamily: constants.fontFamily,
    );
    textStyleLightGrey18 = Theme.of(context).textTheme.bodyMedium!.copyWith(
      color: AppColors.textGrey4,
      fontSize: 18,
      fontFamily: constants.fontFamily,
    );
    textStyleLightGrey16 = Theme.of(context).textTheme.bodyMedium!.copyWith(
      color: AppColors.textGrey4,
      fontSize: 16,
      fontFamily: constants.fontFamily,
    );
    textStyleLightGrey14 = Theme.of(context).textTheme.bodyMedium!.copyWith(
      color: AppColors.textGrey4,
      fontSize: 14,
      fontFamily: constants.fontFamily,
    );
    textStyleLightGrey12 = Theme.of(context).textTheme.bodyMedium!.copyWith(
      color: AppColors.textGrey4,
      fontSize: 12,
      fontFamily: constants.fontFamily,
    );

//white textStyle
    textStyleWhite20 = Theme.of(context).textTheme.bodyMedium!.copyWith(
      color: AppColors.textWhite,
      fontSize: 20,
      fontFamily: constants.fontFamily,
    );
    textStyleWhite18 = Theme.of(context).textTheme.bodyMedium!.copyWith(
      color: AppColors.textWhite,
      fontSize: 18,
      fontFamily: constants.fontFamily,
    );
    textStyleWhite16 = Theme.of(context).textTheme.bodyMedium!.copyWith(
      color: AppColors.textWhite,
      fontSize: 16,
      fontFamily: constants.fontFamily,
    );
    textStyleWhite14 = Theme.of(context).textTheme.bodyMedium!.copyWith(
      color: AppColors.textWhite,
      fontSize: 14,
      fontFamily: constants.fontFamily,
    );
    textStyleWhite12 = Theme.of(context).textTheme.bodyMedium!.copyWith(
      color: AppColors.textWhite,
      fontSize: 12,
      fontFamily: constants.fontFamily,
    );

//PrimaryMedium textStyle
    textStylePrimaryMedium20 = Theme.of(context).textTheme.bodyMedium!.copyWith(
      color: AppColors.primaryLightText,
      fontSize: 20,
      fontFamily: constants.fontFamily,
    );
    textStylePrimaryMedium18 = Theme.of(context).textTheme.bodyMedium!.copyWith(
      color: AppColors.primaryLightText,
      fontSize: 18,
      fontFamily: constants.fontFamily,
    );
    textStylePrimaryMedium16 = Theme.of(context).textTheme.bodyMedium!.copyWith(
      color: AppColors.primaryLightText,
      fontSize: 16,
      fontFamily: constants.fontFamily,
    );
    textStylePrimaryMedium14 = Theme.of(context).textTheme.bodyMedium!.copyWith(
      color: AppColors.primaryLightText,
      fontSize: 14,
      fontFamily: constants.fontFamily,
    );
    textStylePrimaryMedium12 = Theme.of(context).textTheme.bodyMedium!.copyWith(
      color: AppColors.primaryLightText,
      fontSize: 12,
      fontFamily: constants.fontFamily,
    );

    // AppBlue textStyle
    textStyleAppBlue20 = Theme.of(context).textTheme.bodyMedium!.copyWith(
      color: AppColors.appMain100,
      fontSize: 20,
      fontFamily: constants.fontFamily,
    );
    textStyleAppBlue18 = Theme.of(context).textTheme.bodyMedium!.copyWith(
      color: AppColors.appMain100,
      fontSize: 18,
      fontFamily: constants.fontFamily,
    );
    textStyleAppBlue16 = Theme.of(context).textTheme.bodyMedium!.copyWith(
      color: AppColors.appMain100,
      fontSize: 16,
      fontFamily: constants.fontFamily,
    );
    textStyleAppBlue14 = Theme.of(context).textTheme.bodyMedium!.copyWith(
      color: AppColors.appMain100,
      fontSize: 14,
      fontFamily: constants.fontFamily,
    );
    textStyleAppBlue12 = Theme.of(context).textTheme.bodyMedium!.copyWith(
      color: AppColors.appMain100,
      fontSize: 12,
      fontFamily: constants.fontFamily,
    );

//PrimaryLight textStyle
    textStyleSecondaryLightest20 =
        Theme.of(context).textTheme.bodyMedium!.copyWith(
          color: AppColors.secondaryLightestText,
          fontSize: 20,
          fontFamily: constants.fontFamily,
        );
    textStyleSecondaryLightest18 =
        Theme.of(context).textTheme.bodyMedium!.copyWith(
          color: AppColors.secondaryLightestText,
          fontSize: 18,
          fontFamily: constants.fontFamily,
        );
    textStyleSecondaryLightest16 =
        Theme.of(context).textTheme.bodyMedium!.copyWith(
          color: AppColors.secondaryLightestText,
          fontSize: 16,
          fontFamily: constants.fontFamily,
        );
    textStyleSecondaryLightest14 =
        Theme.of(context).textTheme.bodyMedium!.copyWith(
          color: AppColors.secondaryLightestText,
          fontSize: 14,
          fontFamily: constants.fontFamily,
        );
    textStyleSecondaryLightest12 =
        Theme.of(context).textTheme.bodyMedium!.copyWith(
          color: AppColors.secondaryLightestText,
          fontSize: 12,
          fontFamily: constants.fontFamily,
        );
  }
}
