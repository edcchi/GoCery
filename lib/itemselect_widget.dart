import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grocery_app/itemselect_widget.dart';
import 'package:provider/provider.dart';

import 'itemselect_model.dart';
export 'itemselect_model.dart';

class ItemSelectWidget extends StatefulWidget {
  const ItemSelectWidget({super.key});

  @override
  State<ItemSelectWidget> createState() => _ItemSelectWidgetState();
}

class _ItemSelectWidgetState extends State<ItemSelectWidget> {
  late ItemSelectModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = ItemSelectModel();
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
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                    child: InkWell(
                                    onTap: () { Navigator.pop(context);
                                  },
                      child: Container(
                        width: 44,
                        height: 44,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: Color(0x33000000),
                              offset: Offset(
                                0,
                                2,
                              ),
                              spreadRadius: 2,
                            )
                          ],
                          shape: BoxShape.circle,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.close_rounded,
                              color: Color(0xFF1E1E1E),
                              size: 30,
                            ),
                          ],
                        ),
                      ),
                    ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Container(
                  width: double.infinity,
                  height: 552,
                  decoration: BoxDecoration(
                    color: Color(0xFFF2FCEE),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                        child: Container(
                          width: 250,
                          height: 250,
                          decoration: BoxDecoration(),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              'lib/images/honeybutter.png',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(30, 30, 30, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '₱60.00',
                              textAlign: TextAlign.start,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 18,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(30, 20, 30, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                              child: Text(
                                'Honey Butter Chips ',
                                textAlign: TextAlign.start,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 18,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        height: 16,
                        thickness: 2,
                        color:  const Color.fromARGB(255, 206, 206, 206),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(30, 20, 0, 20),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'Brand: ',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    fontFamily: 'Readex Pro',
                                    color: Color(0xFF686868),
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            Text(
                              'Calbee',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                              child: Text(
                                'Size: ',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      fontFamily: 'Readex Pro',
                                      color: Color(0xFF686868),
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                            Text(
                              '170g',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        height: 16,
                        thickness: 2,
                        color: const Color.fromARGB(255, 206, 206, 206),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  color: Color(0xFFF2FCEE),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color(
                                0xFFD9D9D9), // Background color of the container
                            borderRadius: BorderRadius.circular(
                                10), // Apply rounded corners
                          ),
                          child: IconButton(
                            icon: Icon(
                              Icons.remove_outlined,
                              color: Color(0xFF2A2C41),
                              size: 29,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                          child: Text(
                            '1',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 24,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color(0xFFD9D9D9), // Fill color
                            borderRadius:
                                BorderRadius.circular(10), // Rounded corners
                            border: Border.all(
                              color: Colors.transparent, // Border color
                            ),
                          ),
                          child: IconButton(
                            icon: Icon(
                              Icons.add_rounded,
                              color: Color(0xFF2A2C41),
                              size: 29,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/Cart');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Color(0xFF66C28E), // Background color
                          disabledBackgroundColor: Colors.white, // Text color
                          elevation: 0, // Button elevation
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16, 20, 16, 20), // Padding inside the button
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(8), // Rounded corners
                          ),
                          textStyle:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    color: Colors.white,
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                        child: Text('Add to Basket',
                        style: TextStyle(
                          color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600,
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
