
import 'package:flutter/material.dart';
import 'package:provider_usage_code/http/server_response.dart';
import 'package:provider_usage_code/login/services/login_service.dart';


class LoginViewModel extends ChangeNotifier {
  init(GlobalKey<FormState> widgetFormKey) {
    formKey = widgetFormKey;
    loading = false;
    phoneNumberController.clear();
    passwordController.clear();
  }

  /// Set the loading state of the login screen
  bool loading = false;

  setLoading(bool val) {
    loading = val;
    notifyListeners();
  }

  /// The login form key
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  /// Login country code for the phone number dial call


  /// The login phone number controller
  final phoneNumberController = TextEditingController();
  final passwordController = TextEditingController();

  /// When the user tap to change the country
  /// call this function and pass the selected
  /// Country code


  /// Validation of inputs
  get phoneIsValid {
    return phoneNumberController.text.length >= 8;
  }

  get passwordIsValid {
    return passwordController.text.length >= 8;
  }

  /// login to the app by calling the loginToServer
  /// then run completion which will be executed in the
  /// LoginScreen, this to check if the screen is still
  /// visible with if(mounted) condition
  login(void Function(ServerResponse) completion) async {
    if (loading) return;
    final form = formKey.currentState;

    if (form!.validate()) {
      setLoading(true);
      form.save();
      ServerResponse res = await loginToServer(
        phone: phoneNumberController.text,
        password: passwordController.text,

      );
      if (res.success) {
        //TODO: handle the success
      }
      setLoading(false);
      completion(res);
    }
  }
}
