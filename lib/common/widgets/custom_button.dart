import 'package:flutter/material.dart';
import 'package:provider_usage_code/common/colors.dart';
import 'package:provider_usage_code/common/text_style_config.dart';
import 'package:provider_usage_code/common/widgets/custom_inkwell.dart';

class CustomButton extends StatelessWidget {
  final String? textToShow;
  final Color textColor;
  final double? padding;
  final double radius;
  final Function? onTap;
  final Color? backgroundColor;
  final Widget? icon;
  final double width;
  final Color borderColor;
  final double fontSize;
  final double height;
  final FontWeight fontWeight;
  final Alignment alignment;
  final MainAxisAlignment mainAxisAlignment;
  final bool active;
  final bool loading;

  const CustomButton({
    Key? key,
    required this.textToShow,
    this.padding,
    this.onTap,
    this.backgroundColor,
    this.icon,
    this.loading = false,
    this.width = double.infinity,
    this.fontSize = 14,
    this.height = 50,
    this.fontWeight = FontWeight.w500,
    this.borderColor = Colors.transparent,
    this.textColor = Colors.white,
    this.radius = 5,
    this.alignment = Alignment.center,
    this.mainAxisAlignment = MainAxisAlignment.center,
    this.active = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppInKWell(
        onTap: onTap,
        child: Container(
          height: height,
          width: width,
          alignment: alignment,
          decoration: BoxDecoration(
              color: active
                  ? (backgroundColor ?? AppColors.appMain100)
                  : AppColors.grey172,
              borderRadius: BorderRadius.circular(radius),
              border: Border.all(
                  width: 1, color: active ? borderColor : AppColors.grey172)),
          child: loading
              ? Container()//TODO: Replace with loader or whatever u need
              : Container(
            child: icon == null
                ? Text(
              textToShow!,
              textAlign: TextAlign.center,
              style: AppTextStyleConfig.buttonTextStyle.copyWith(
                  color: active ? textColor : Colors.white,
                  fontSize: fontSize,
                  fontWeight: fontWeight),
            )
                : Row(
              mainAxisAlignment: mainAxisAlignment,
              children: [
                SizedBox(
                  width: padding ?? 0,
                ),
                icon!,
                textToShow != ''
                    ? const SizedBox(
                  width: 10,
                )
                    : const Center(),
                Flexible(
                  child: Text(
                    textToShow!,
                    textAlign: TextAlign.center,
                    style:
                    AppTextStyleConfig.buttonTextStyle.copyWith(
                      color: textColor,
                      fontSize: fontSize,
                      fontWeight: fontWeight,
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
