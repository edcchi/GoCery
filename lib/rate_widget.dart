import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import 'rate_model.dart';

class RateWidget extends StatefulWidget {
  const RateWidget({Key? key}) : super(key: key);

  @override
  State<RateWidget> createState() => _RateWidgetState();
}

class _RateWidgetState extends State<RateWidget> {
  late RateModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = RateModel();
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFFF2FCEE),
        body: SafeArea(
          child: Align(
            alignment: AlignmentDirectional.center,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Text(
                      'Rate',
                      style: TextStyle(
                        fontFamily: 'Readex Pro',
                        fontSize: 32,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.star_border, color: Color(0xFF969696), size: 30),
                        Icon(Icons.star_border, color: Color(0xFF969696), size: 30),
                        Icon(Icons.star_border, color: Color(0xFF969696), size: 30),
                        Icon(Icons.star_border, color: Color(0xFF969696), size: 30),
                        Icon(Icons.star_border, color: Color(0xFF969696), size: 30),
                      ],
                    ),
                  ),
                  // Your feedback and buttons go here
                  const Padding(
                    padding: EdgeInsets.all(12),
                    //child: Text('Write your feedback here'),
                  ),
                  // Submit and Close buttons
                  Padding(
                    padding: const EdgeInsets.all(4),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/Dashboard');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFA4D88D),
                        minimumSize: const Size(220, 40),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        'Submit',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/Dashboard');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFD9D9D9),
                        minimumSize: const Size(220, 40),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        'Close',
                        style: TextStyle(fontSize: 20, color: Color(0xFF3C3D3E)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
