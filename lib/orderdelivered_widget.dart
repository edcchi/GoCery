import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OrderDeliveredWidget extends StatefulWidget {
  const OrderDeliveredWidget({super.key});

  @override
  State<OrderDeliveredWidget> createState() => _OrderDeliveredWidgetState();
}

class _OrderDeliveredWidgetState extends State<OrderDeliveredWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'lib/images/delivered.png',
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                child: Text(
                  'Your GoCery has been delivered!',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontFamily: 'Readex Pro',
                        fontSize: 32,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                child: Text(
                  'Thank you for trusting GoCery for your grocery needs!',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontFamily: 'Readex Pro',
                        color: Color(0xFF686868),
                        fontSize: 16,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 25),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        print('Rate Button pressed ...');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Color(0xFF424866),
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        minimumSize: Size(110, 40),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        elevation: 0,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.star_border,
                            color: Color(0xFFF6D55A),
                            size: 20,
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Rate',
                            style: TextStyle(
                              fontFamily: 'Readex Pro',
                              color: Color(0xFF424866),
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        print('Report Button pressed ...');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Color(0xFF424866),
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        minimumSize: Size(110, 40),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        elevation: 0,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.emoji_flags_rounded,
                            color: Color(0xFFE75B04),
                            size: 20,
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Report',
                            style: TextStyle(
                              fontFamily: 'Readex Pro',
                              color: Color(0xFF424866),
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 1),
                child: Padding(
                  padding: EdgeInsets.all(4),
                  child: ElevatedButton(
                    onPressed: () {
                      print('Done Button pressed ...');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFA4D88D),
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                      minimumSize: Size(220, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      elevation: 0,
                    ),
                    child: Text(
                      'Done',
                      style: TextStyle(
                        fontFamily: 'Readex Pro',
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
