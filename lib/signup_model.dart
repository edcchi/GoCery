import 'signup_widget.dart' show SignUpWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignUpModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  final textFieldFocusNode1 = FocusNode();
  final textController1 = TextEditingController();

  final textFieldFocusNode2 = FocusNode();
  final textController2 = TextEditingController();

  final textFieldFocusNode3 = FocusNode();
  final textController3 = TextEditingController();
  bool passwordVisibility = false;

  void dispose() {
    textFieldFocusNode1.dispose();
    textController1.dispose();

    textFieldFocusNode2.dispose();
    textController2.dispose();

    textFieldFocusNode3.dispose();
    textController3.dispose();
  }
}
