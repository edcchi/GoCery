import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController? _pageController;
  int _currentPage = 0; // Track the current page index

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
    _pageController!.addListener(() {
      setState(() {
        _currentPage = _pageController!.page!.round();
      });
    });
  }

  @override
  void dispose() {
    _pageController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2FCEE),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: PageView(
                  controller: _pageController,
                  children: [
                    // First Page: Explore Products
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Stack(
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 89, 0, 0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  'lib/images/Explore.png',
                                  width: 212,
                                  height: 200,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(30, 20, 30, 0),
                                      child: Text(
                                        'Explore Products',
                                        textAlign: TextAlign.center,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium
                                            ?.copyWith(
                                              fontFamily: 'Readex Pro',
                                              color: Color(0xFF2A2C41),
                                              fontSize: 32,
                                              letterSpacing: 0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(30, 20, 30, 0),
                                      child: Text(
                                        'Explore our wide selection of fresh products at your fingertips.',
                                        textAlign: TextAlign.center,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium
                                            ?.copyWith(
                                              fontFamily: 'Readex Pro',
                                              color: Color(0xFF686868),
                                              fontSize: 20,
                                              letterSpacing: 0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    // Second Page: Easy Shopping
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Stack(
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 89, 0, 0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  'lib/images/Easy_Shopping.png',
                                  width: 212,
                                  height: 200,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(30, 20, 30, 0),
                                      child: Text(
                                        'Easy Shopping',
                                        textAlign: TextAlign.center,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium
                                            ?.copyWith(
                                              fontFamily: 'Readex Pro',
                                              color: Color(0xFF2A2C41),
                                              fontSize: 32,
                                              letterSpacing: 0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(30, 20, 30, 0),
                                      child: Text(
                                        'Add items to cart, review special deals, and enjoy hassle-free shopping',
                                        textAlign: TextAlign.center,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium
                                            ?.copyWith(
                                              fontFamily: 'Readex Pro',
                                              color: Color(0xFF686868),
                                              fontSize: 20,
                                              letterSpacing: 0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    // Third Page: Let's GoCery
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Stack(
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 89, 0, 0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  'lib/images/Lets_Go.png',
                                  width: 212,
                                  height: 200,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(30, 20, 30, 0),
                                      child: Text(
                                        'Let\'s GoCery!',
                                        textAlign: TextAlign.center,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium
                                            ?.copyWith(
                                              fontFamily: 'Readex Pro',
                                              color: Color(0xFF2A2C41),
                                              fontSize: 32,
                                              letterSpacing: 0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(30, 20, 30, 0),
                                      child: Text(
                                        'Begin shopping with freshness and convenience with just a few taps away.',
                                        textAlign: TextAlign.center,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium
                                            ?.copyWith(
                                              fontFamily: 'Readex Pro',
                                              color: Color(0xFF686868),
                                              fontSize: 20,
                                              letterSpacing: 0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              if (_currentPage != 2)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        _pageController!.animateToPage(
                          2,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.ease,
                        );
                      },
                       style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 177, 190, 214), // Next button color
                        foregroundColor: Colors.black, // Text color
                      ),
                      child: Text('Skip'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        _pageController!.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.ease,
                        );
                      },
                       style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF3D5A94), // Next button color
                        foregroundColor: Colors.white, // Text color
                      ),
                      child: Text('Next'),
                    ),
                  ],
                ),
              if (_currentPage == 2)
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/Login');
                  },
                   style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF66C28E), // Next button color
                        foregroundColor: Colors.white, // Text color
                      ),
                  child: Text('Get Started'),
                ),
              SmoothPageIndicator(
                controller: _pageController!,
                count: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
