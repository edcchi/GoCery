import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import 'orderprogress_model.dart';
export 'orderprogress_model.dart';

class OrderinProgressWidget extends StatefulWidget {
  const OrderinProgressWidget({
    super.key,
    this.padding,
  });

  final double? padding;

  @override
  State<OrderinProgressWidget> createState() => _OrderinProgressWidgetState();
}

class _OrderinProgressWidgetState extends State<OrderinProgressWidget> {
  late OrderinprogressModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model =
    OrderinprogressModel();
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
        backgroundColor: Color(0xFFF2FCEE),
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Placing your order',
                      style: TextStyle(
                        fontFamily: 'Readex Pro',
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Icon(Icons.location_on_outlined,
                            color: Colors.black,
                            size: 30),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Home',
                              style: TextStyle(
                                fontFamily: 'Readex Pro',
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              'Moonstone St, XHomes',
                              style: TextStyle(
                                fontFamily: 'Readex Pro',
                                color: Color(0xFF969696),
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Divider(thickness: 2, color: Colors.grey),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.access_time_sharp,
                            color: Colors.black,
                            size: 30),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Delivery Time',
                              style: TextStyle(
                                fontFamily: 'Readex Pro',
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              'Standard Delivery: 25-30 Mins',
                              style: TextStyle(
                                fontFamily: 'Readex Pro',
                                color: Color(0xFF969696),
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Divider(thickness: 2, color: Colors.grey),
                    const SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.description_rounded,
                            color: Colors.black,
                            size: 30),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Order Summary',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Readex Pro',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Calbee Honey Butter Chips x1',
                                style: TextStyle(
                                  fontFamily: 'Readex Pro',
                                  color: Color(0xFF969696),
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Align(
                      alignment: Alignment.center,
                      child: ElevatedButton(
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFD9D9D9),
                          foregroundColor: const Color(0xFF3C3D3E),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 10),
                          minimumSize: const Size(200, 60),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          textStyle: const TextStyle(
                            fontFamily: 'Readex Pro',
                            fontSize: 20,
                          ),
                        ),
                        child: const Text('Cancel'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}