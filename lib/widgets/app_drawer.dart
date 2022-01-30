import 'package:flutter/material.dart';
import '../screens/tabs_screen.dart';
import '../screens/filters_screen.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  Widget buildListTile(String title, IconData icon, VoidCallback onTapLink) {
    return ListTile(
      leading: Icon(
        icon,
        size: 30,
        color: Colors.grey,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'Tajawal',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: onTapLink,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            padding: EdgeInsets.only(top: 40),
            alignment: Alignment.center,
            color: Theme.of(context).colorScheme.secondary,
            child: Text(
              'متجر Mousseline',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          buildListTile('المنتجات', Icons.home, () {
            Navigator.of(context).pushReplacementNamed(TabsScreen.screenRoute);
          }),
          buildListTile('الطلبات', Icons.format_list_bulleted, () {
            Navigator.of(context)
                .pushReplacementNamed(FlitersScreen.screenRoute);
          }),
        ],
      ),
    );
  }
}
