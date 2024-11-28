import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'signup_model.dart';
export 'signup_model.dart';

class SignUpWidget extends StatefulWidget {
  const SignUpWidget({Key? key}) : super(key: key);

  @override
  State<SignUpWidget> createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  late TextEditingController textController1;
  late TextEditingController textController2;
  late TextEditingController textController3;

  late FocusNode textFieldFocusNode1;
  late FocusNode textFieldFocusNode2;
  late FocusNode textFieldFocusNode3;

  bool passwordVisibility = false;

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    textController3 = TextEditingController();

    textFieldFocusNode1 = FocusNode();
    textFieldFocusNode2 = FocusNode();
    textFieldFocusNode3 = FocusNode();
  }

  @override
  void dispose() {
    textController1.dispose();
    textController2.dispose();
    textController3.dispose();

    textFieldFocusNode1.dispose();
    textFieldFocusNode2.dispose();
    textFieldFocusNode3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFFA4D88D),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 25),
                  InkWell(
                    onTap: (){
                    //onTap: () => Navigator.pushNamed(context, '/Login'),
                    Navigator.pop(context);
                    },
                    child: Container(
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4,
                            color: Colors.black26,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: const Icon(Icons.chevron_left_rounded),
                    ),
                  ),
                  const SizedBox(height: 120),
                  const Text(
                    'Create an Account',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 50),
                  _buildTextField(
                    controller: textController1,
                    focusNode: textFieldFocusNode1,
                    hintText: 'Email Address',
                  ),
                  const SizedBox(height: 25),
                  _buildTextField(
                    controller: textController2,
                    focusNode: textFieldFocusNode2,
                    hintText: 'Username',
                  ),
                  const SizedBox(height: 25),
                  _buildTextField(
                    controller: textController3,
                    focusNode: textFieldFocusNode3,
                    hintText: 'Password',
                    obscureText: !passwordVisibility,
                    suffixIcon: IconButton(
                      icon: Icon(
                        passwordVisibility
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                      ),
                      onPressed: () {
                        setState(() {
                          passwordVisibility = !passwordVisibility;
                        });
                      },
                    ),
                  ),
                  const SizedBox(height: 28),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/Login');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          const Color(0xFF66C28E), // Updated property
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13),
                      ),
                      minimumSize: const Size(double.infinity, 57),
                    ),
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Have an Account?'),
                      const SizedBox(width: 10),
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(context, '/Login'),
                        child: const Text(
                          'Log In',
                          style: TextStyle(
                            color: Color(0xFF3D5A94),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required FocusNode focusNode,
    required String hintText,
    bool obscureText = false,
    Widget? suffixIcon,
  }) {
    return TextField(
      controller: controller,
      focusNode: focusNode,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        suffixIcon: suffixIcon,
      ),
    );
  }
}
