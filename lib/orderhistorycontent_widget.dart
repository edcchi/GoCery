import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import 'orderhistorycontent_model.dart';
export 'orderhistorycontent_model.dart';

class ContentOfOrderWidget extends StatefulWidget {
  const ContentOfOrderWidget({super.key});

  @override
  State<ContentOfOrderWidget> createState() => _ContentOfOrderWidgetState();
}

class _ContentOfOrderWidgetState extends State<ContentOfOrderWidget> {
  late ContentOfOrderModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = ContentOfOrderModel();
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 40, 00, 50),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 40, 0),
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Color(0xFFF2FCEE),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: Color(0x33000000),
                              offset: Offset(
                                0,
                                2,
                              ),
                              spreadRadius: 1,
                            )
                          ],
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50),
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50),
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: Colors.black,
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                      child: Text(
                        '01 JAN 2025 11:10 AM',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontFamily: 'Readex Pro',
                              fontSize: 20,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 340,
                height: 400,
                decoration: BoxDecoration(
                  color: Color(0xFFD9D9D9),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(25, 25, 0, 15),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                            child: Container(
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(30),
                                  bottomRight: Radius.circular(30),
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                ),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0, 0),
                                child: FaIcon(
                                  FontAwesomeIcons.shoppingBag,
                                  color: Color(0xFFA4D88D),
                                  size: 14,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                            child: Text(
                              'Booking ID',
                              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 16,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                                child: Text(
                                  ' A-AKWOFNCAOVLFAPG',
                                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFF969696),
                                        fontSize: 12,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.content_copy_rounded,
                            color: Colors.black,
                            size: 14,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(35, 0, 35, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Order Summary',
                                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                        fontFamily: 'Readex Pro',
                                        fontSize: 15,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                                Text(
                                  'Reorder',
                                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFF3D5A94),
                                        fontSize: 13,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      35, 0, 35, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment: AlignmentDirectional(0, 0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 10, 0),
                                          child: Container(
                                            width: 25,
                                            height: 25,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(30),
                                                bottomRight:
                                                    Radius.circular(30),
                                                topLeft: Radius.circular(30),
                                                topRight: Radius.circular(30),
                                              ),
                                            ),
                                            child: Align(
                                              alignment:
                                                  AlignmentDirectional(0, 0),
                                              child: Text(
                                                '1x',
                                                textAlign: TextAlign.center,
                                                style:Theme.of(context).textTheme.bodyMedium?.copyWith(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          fontSize: 10,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 20, 0),
                                                child: Container(
                                                  width: 170,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFD9D9D9),
                                                  ),
                                                  child: Text(
                                                    'Calbee Honey Butter Potato Chips',
                                                    textAlign: TextAlign.start,
                                                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          fontSize: 12,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                '60.00',
                                                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                                      fontFamily: 'Readex Pro',
                                                      color: Color(0xFF1E1E1E),
                                                      fontSize: 12,
                                                      letterSpacing: 0.0,
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    35, 40, 35, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Subtotal',
                                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                            fontFamily: 'Readex Pro',
                                            fontSize: 12,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w300,
                                          ),
                                    ),
                                    Text(
                                      '₱60.00',
                                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                            fontFamily: 'Readex Pro',
                                            fontSize: 12,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    35, 10, 35, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Delivery fee',
                                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                            fontFamily: 'Readex Pro',
                                            fontSize: 12,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w300,
                                          ),
                                    ),
                                    Text(
                                      '₱59.00',
                                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                            fontFamily: 'Readex Pro',
                                            fontSize: 12,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    35, 45, 35, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Total',
                                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                            fontFamily: 'Readex Pro',
                                            color: Color(0xFF1E1E1E),
                                            fontSize: 16,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    Text(
                                      '₱119.00',
                                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                            fontFamily: 'Readex Pro',
                                            fontSize: 12,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        //bottom navbar to be fixed
        bottomNavigationBar: BottomAppBar(
          color: Colors.white, // Bottom bar color
          shape: CircularNotchedRectangle(), // Optional for FAB
          child: Container(
            height: 70, // Fixed height for uniform appearance
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    print("Home button pressed");
                  },
                  icon: Icon(Icons.home_rounded,
                      color: Color(0xFF58EE16), size: 37),
                ),
                IconButton(
                  onPressed: () {
                    print("Notifications button pressed");
                  },
                  icon: Icon(Icons.notifications_sharp,
                      color: Color(0xFFA4D88D), size: 37),
                ),
                IconButton(
                  onPressed: () {
                    print("Shopping basket button pressed");
                  },
                  icon: Icon(Icons.shopping_basket,
                      color: Color(0xFFA4D88D), size: 37),
                ),
                IconButton(
                  onPressed: () {
                    print("Profile button pressed");
                  },
                  icon: Icon(Icons.face_6, color: Color(0xFFA4D88D), size: 37),
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}
