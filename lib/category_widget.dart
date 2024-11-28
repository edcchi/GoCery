import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'category_model.dart';
export 'category_model.dart';

class CategoryWidget extends StatefulWidget {
  const CategoryWidget({super.key});

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  late CategoryModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = CategoryModel();
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
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                  child: InkWell(
                    onTap: () {
                      // Navigate back to the Dashboard
                      Navigator.pop(context); // This will pop the current screen from the stack, going back to the previous screen.
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
                            Icons.chevron_left_rounded,
                            color: Color(0xFF3C3D3E),
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                  child: Text(
                    'Categories',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontFamily: 'Readex Pro',
                          fontSize: 28,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w800,
                        ),
                  ),
                ),
              ],
            ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(35),
                    child: GridView(
                      padding: EdgeInsets.zero,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 20,
                        childAspectRatio: 1,
                      ),
                      scrollDirection: Axis.vertical,
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0xFFDFDEDE),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20, 15, 20, 10),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    'lib/images/fruits.png',
                                    width: 38,
                                    height: 40,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Text(
                                'Vegetables &\n Fruits',
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme
                                    .bodyMedium?.
                                    copyWith(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 10,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w700,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0xFFDFDEDE),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20, 15, 20, 10),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    'lib/images/Beverages.png',
                                    width: 38,
                                    height: 40,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Text(
                                'Cold Drinks &\nBeverage',
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme
                                    .bodyMedium?.copyWith(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 10,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w700,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0xFFDFDEDE),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20, 15, 20, 10),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    'lib/images/dairy.png',
                                    width: 38,
                                    height: 40,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Text(
                                'Dairy Products',
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme
                                    .bodyMedium?.copyWith(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 10,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w700,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0xFFDFDEDE),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20, 15, 20, 10),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    'lib/images/frozen.png',
                                    width: 38,
                                    height: 40,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Text(
                                'Frozen Goods',
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 10,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w700,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0xFFDFDEDE),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20, 15, 20, 10),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    'lib/images/meats.png',
                                    width: 38,
                                    height: 40,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Text(
                                'Meats',
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 10,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w700,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Container(
  width: 100,
  height: 100,
  decoration: BoxDecoration(
    color: Color(0xFFDFDEDE),
    borderRadius: BorderRadius.circular(20),
  ),
  child: Column(
    mainAxisSize: MainAxisSize.max,
    children: [
      Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20, 15, 20, 10),
        child: InkWell(
          onTap: () {
            // Navigate to the next page (replace 'NextPage' with the desired page name)
            Navigator.pushNamed(
              context, '/SelectCat'); // Replace with your target page
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              'lib/images/snacks.png',
              width: 38,
              height: 40,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
      Text(
        'Snacks',
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontFamily: 'Readex Pro',
              fontSize: 10,
              letterSpacing: 0.0,
              fontWeight: FontWeight.w700,
            ),
      ),
    ],
  ),
),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0xFFDFDEDE),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20, 15, 20, 10),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    'lib/images/bread.png',
                                    width: 38,
                                    height: 40,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Text(
                                'Bread &\n Breakfast',
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 10,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w700,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0xFFDFDEDE),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20, 15, 20, 10),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    'lib/images/personalCare.png',
                                    width: 38,
                                    height: 40,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Text(
                                'Personal Care',
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 10,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w700,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0xFFDFDEDE),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20, 15, 20, 10),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    'lib/images/homeCare.png',
                                    width: 38,
                                    height: 40,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Text(
                                'Home Care',
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 10,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w700,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ],
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
