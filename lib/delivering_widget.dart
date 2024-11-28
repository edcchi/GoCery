import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import 'delivering_model.dart';
export 'delivering_model.dart';

class OutforDeliveryWidget extends StatefulWidget {
  const OutforDeliveryWidget({super.key});

  @override
  State<OutforDeliveryWidget> createState() => _OutforDeliveryWidgetState();
}

class _OutforDeliveryWidgetState extends State<OutforDeliveryWidget> {
  late OutforDeliveryModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = OutforDeliveryModel();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFF2FCEE),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'lib/images/Delivery.png',
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                    child: Text(
                      'Your GoCery\nis on the Go!',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontFamily: 'Readex Pro',
                            fontSize: 32,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ),
                Opacity(
                  opacity: 0,
                  child: Divider(
                    thickness: 2,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Order ID',
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    fontFamily: 'Readex Pro',
                                    color: Color(0xFF686868),
                                    fontSize: 16,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                        Text(
                          '#012345678',
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    fontFamily: 'Readex Pro',
                                    color: Color(0xFF686868),
                                    fontSize: 16,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
                Opacity(
                  opacity: 0,
                  child: Divider(
                    thickness: 2,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                Padding(
  padding: const EdgeInsetsDirectional.fromSTEB(0, 40, 0, 20),
  child: ElevatedButton(
    onPressed: () {
      print('Button pressed ...');
    },
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.black, // Button background color
      foregroundColor: Colors.white, // Text color
      padding: const EdgeInsets.symmetric(horizontal: 16), // Padding inside the button
      minimumSize: const Size(200, 60), // Button size
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8), // Border radius
      ),
      elevation: 0, // Button shadow
    ),
    child: const Text(
      'Track Order',
      style: TextStyle(
        fontFamily: 'Readex Pro', // Font family
        fontSize: 20, // Font size
        letterSpacing: 0.0, // Letter spacing
      ),
    ),
  ),
),

// Close Button
ElevatedButton(
  onPressed: () {
    print('Button pressed ...');
  },
  style: ElevatedButton.styleFrom(
    backgroundColor: const Color(0xFFD9D9D9), // Button background color
    foregroundColor: const Color(0xFF3C3D3E), // Text color
    padding: const EdgeInsets.symmetric(horizontal: 16), // Padding inside the button
    minimumSize: const Size(200, 60), // Button size
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8), // Border radius
    ),
    elevation: 0, // Button shadow
  ),
  child: const Text(
    'Close',
    style: TextStyle(
      fontFamily: 'Readex Pro', // Font family
      fontSize: 20, // Font size
      letterSpacing: 0.0, // Letter spacing
      fontWeight: FontWeight.w500,
    ),
  ),
),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
