import 'dart:developer';


import 'package:flutter/material.dart';
import 'package:provider_usage_code/common/widgets/inputs/rich_text_field.dart';


class PhoneTextFiled extends StatelessWidget {
  final String? hint;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  const PhoneTextFiled({
    super.key,
    this.controller,
    this.validator,
    this.hint
  });

  @override
  Widget build(BuildContext context) {

    return Directionality(
      textDirection: TextDirection.ltr,
      child: Stack(
        children: [
          RichTextField(
            hintText: hint,
            label: "Phone number",
           // labelAlignment:
           // One way to set the localization:  Get.locale?.languageCode == "ar" ? Alignment.topRight : null,
            controller: controller,
            required: true,
            style: const TextStyle(
              fontSize: 16,
              fontFamily: "Roboto",
            ),
            keyboardType: TextInputType.phone,
            suffixIcon: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
              //TODO: u can add an icon here
                const SizedBox(width: 16),
              ],
            ),
            validator: validator,
            prefixIcon: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const SizedBox(
                  width: 4.0,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
