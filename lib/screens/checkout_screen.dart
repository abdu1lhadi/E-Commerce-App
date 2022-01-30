import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  static const String screenRoute = 'checkout_screen';
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('صفحة الدفع هنا !!')),
    );
  }
}
