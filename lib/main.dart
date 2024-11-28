import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:grocery_app/cart_widget.dart';
import 'package:grocery_app/category_widget.dart';
import 'package:grocery_app/dashboard_widget.dart';
import 'package:grocery_app/delivering_widget.dart';
import 'package:grocery_app/itemselect_model.dart';
import 'package:grocery_app/itemselect_widget.dart';
import 'package:grocery_app/loading_widget.dart';
import 'package:grocery_app/login_widget.dart';
import 'package:grocery_app/onboarding.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/orderdelivered_widget.dart';
import 'package:grocery_app/orderhistory_widget.dart';
import 'package:grocery_app/orderhistorycontent_widget.dart';
import 'package:grocery_app/orderprogress_widget.dart';
import 'package:grocery_app/profile_widget.dart';
import 'package:grocery_app/rate_widget.dart';
import 'package:grocery_app/report_widget.dart';
import 'package:grocery_app/reportsent_widget.dart';
import 'package:grocery_app/selectcat_widget.dart';
import 'package:grocery_app/signup_widget.dart';

void main() {
  runApp(const GoCeryApp());
}

class GoCeryApp extends StatelessWidget {
  const GoCeryApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GoCery',
      theme: ThemeData(primarySwatch: Colors.green),
      //home: const SplashScreen(),
      initialRoute: '/',
      routes: {
      '/':(context) => const SplashScreen(),
      '/Onboarding': (context) => OnboardingScreen(),
      '/Login': (context) => LoginWidget(),       
      '/SignUp': (context) => SignUpWidget(),
      '/Dashboard': (context) => DashboardWidget(),
      '/Category': (context) => CategoryWidget(),
      '/SelectCat': (context) => SelectCategoryWidget(),
      '/ItemSelect': (context) => ItemSelectWidget(),
      '/Cart': (context) => CartWidget(),
      '/Deliver': (context) => OutforDeliveryWidget(),
      '/OrderDelivered': (context) => OrderDeliveredWidget(),
      '/Rate': (context) => RateWidget(),
      '/Report': (context) => ReportWidget(),      
      '/OrderHistory': (context) => OrderHistoryWidget(),    
      '/Profile': (context) => ProfileWidget(),           
      },
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Navigate to another screen after a few seconds
    SchedulerBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 3), () {
        Navigator.pushReplacementNamed(context, '/Onboarding');
        // Navigator.pushReplacement(
        //   context,
        //   MaterialPageRoute(builder: (context) =>  OnboardingScreen()),
        // );
      });
    });

    return Scaffold(
      backgroundColor: Color(0xffa4d88d),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('lib/images/splashscreen.png', height: 270),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: Center(child: Text('Welcome to GoCery!')),
//     );
//   }
// }
