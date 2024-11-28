import 'package:flutter/material.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:google_fonts/google_fonts.dart';

class LoginModel {
  final textFieldFocusNode1 = FocusNode();
  final textController1 = TextEditingController();
  final textFieldFocusNode2 = FocusNode();
  final textController2 = TextEditingController();
  bool passwordVisibility = false; // Already initialized.

  void dispose() {
    textFieldFocusNode1.dispose();
    textController1.dispose();
    textFieldFocusNode2.dispose();
    textController2.dispose();
  }
}
