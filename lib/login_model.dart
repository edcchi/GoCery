import 'package:flutter/material.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:google_fonts/google_fonts.dart';

class LoginModel {
  late FocusNode textFieldFocusNode1;
  late TextEditingController textController1;
  late FocusNode textFieldFocusNode2;
  late TextEditingController textController2;
  bool passwordVisibility = false; // Already initialized.

  void initialize() {
    textFieldFocusNode1 = FocusNode();
    textController1 = TextEditingController();
    textFieldFocusNode2 = FocusNode();
    textController2 = TextEditingController();
  }

  void dispose() {
    textFieldFocusNode1.dispose();
    textController1.dispose();
    textFieldFocusNode2.dispose();
    textController2.dispose();
  }
}
