import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class FlitersScreen extends StatefulWidget {
  static const screenRoute = '/filters';

  final saveFilters;
  final Map<String, bool> currentFilters;

  FlitersScreen(this.currentFilters, this.saveFilters);

  @override
  State<FlitersScreen> createState() => _FlitersScreenState();
}

class _FlitersScreenState extends State<FlitersScreen> {
  var _summer = false;
  var _winter = false;
  var _family = false;

  @override
  initState() {
    _summer = widget.currentFilters['summer']!;
    _winter = widget.currentFilters['winter']!;
    _family = widget.currentFilters['family']!;
    super.initState();
  }

  Widget buildSwitchListTile(
      String title, String subtitle, var currentValue, var updateValue) {
    return SwitchListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      value: currentValue,
      onChanged: updateValue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الطلبات'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      drawer: AppDrawer(),
      body: Center(child: Text('لا توجد طلبات')),
    );
  }
}
