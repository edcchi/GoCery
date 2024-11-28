import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OrderHistoryWidget extends StatefulWidget {
  const OrderHistoryWidget({super.key});

  @override
  State<OrderHistoryWidget> createState() => _OrderHistoryWidgetState();
}

class _OrderHistoryWidgetState extends State<OrderHistoryWidget> {
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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(30, 40, 0, 230),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 40, 0),
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                          child: Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                              color: Color(0xFFF2FCEE),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4,
                                  color: Color(0x33000000),
                                  offset: Offset(0, 2),
                                  spreadRadius: 1,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Icon(
                                    Icons.chevron_left_rounded,
                                    color: Theme.of(context).colorScheme.primary,
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        ),
                        Text(
                          'Order History',
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                fontFamily: 'Readex Pro',
                                fontSize: 28,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Container(
                      decoration: BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              'lib/images/basket.png',
                              width: 100,
                              height: 100,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              'Your bag is empty',
                              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 24,
                                    fontWeight: FontWeight.w800,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(80, 8, 80, 8),
                            child: Text(
                              'Fill it up with your first GoCery order!',
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    fontFamily: 'Readex Pro',
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, 1),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/Category');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFA4D88D),
                              foregroundColor: Colors.white,
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              minimumSize: Size(100, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              elevation: 0,
                            ),
                            child: Text(
                              'Order Now',
                              style: TextStyle(
                                fontFamily: 'Readex Pro',
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
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
        //bottom nav bar to be fixed
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
                    Navigator.pushNamed(context, '/Dashboard');
                  },
                  icon: Icon(Icons.home_rounded,
                      color: Color(0xFF58EE16), size: 37),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/OrderHistory');
                  },
                  icon: Icon(Icons.notifications_sharp,
                      color: Color(0xFFA4D88D), size: 37),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/Cart');
                  },
                  icon: Icon(Icons.shopping_basket,
                      color: Color(0xFFA4D88D), size: 37),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/Profile');
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
