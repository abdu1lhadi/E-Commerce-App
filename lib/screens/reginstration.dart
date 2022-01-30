import 'package:flutter/material.dart';
import '../widgets/my_button.dart';
import '../main.dart';
import '../widgets/text_app.dart';
import './categories.dart';
import './tabs_screen.dart';

class ReginstrationScreen extends StatelessWidget {
  static const String screenRoute = '/reginstration';

  late String name;
  late String email;
  late String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/logoB2B.png'),
                ),
                Text(
                  'Mousseline',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w900,
                      color: Colors.black87),
                ),
                SizedBox(height: 20),
                TextInputApp(
                  hintText: 'Enter your Name',
                  onPressed: (value) {
                    name = value;
                  },
                ),
                SizedBox(height: 10),
                TextInputApp(
                  hintText: 'Enter your Email',
                  onPressed: (value) {
                    email = value;
                  },
                ),
                SizedBox(height: 10),
                TextInputApp(
                  hintText: 'Enter your password',
                  onPressed: (value) {
                    password = value;
                  },
                ),
                SizedBox(height: 10),
                MyButton(
                  color: Theme.of(context).colorScheme.secondary,
                  title: 'انشاء حساب',
                  onPressed: () {
                    Navigator.pushNamed(context, TabsScreen.screenRoute);
                  },
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
