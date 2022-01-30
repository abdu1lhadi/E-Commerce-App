import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:mousseline/screens/splash_screen.dart';
import './screens/reginstration.dart';
import './screens/sign_in.dart';
import './models/product.dart';
import './app_data.dart';
import './screens/category_prodect.dart';
import './screens/tabs_screen.dart';
import './screens/filters_screen.dart';
import './screens/product_detail_screen.dart';
import './screens/checkout_screen.dart';
import './screens/forgot_password_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Product> _favoriteTrips = [];

  List<Product> _availableTrips = Products_data;

  void _manageFavorite(String tripId) {
    final existingIndex =
        _favoriteTrips.indexWhere((trip) => trip.id == tripId);
    if (existingIndex >= 0) {
      setState(() {
        _favoriteTrips.removeAt(existingIndex);
      });
    } else {
      setState(() {
        _favoriteTrips.add(
          Products_data.firstWhere((trip) => trip.id == tripId),
        );
      });
    }
  }

  bool _isFovarite(String id) {
    return _favoriteTrips.any((trip) => trip.id == id);
  }

  Map<String, bool> _filters = {
    'summer': false,
    'winter': false,
    'family': false,
  };

  void _changeFilters(Map<String, bool> filterData) {
    setState(() {
      _filters = filterData;

      _availableTrips = Products_data.where((trip) {
        if (_filters['summer'] == true && trip.isInSummer != true) {
          return false;
        }
        if (_filters['winter'] == true && trip.isInWinter != true) {
          return false;
        }
        if (_filters['family'] == true && trip.isForFamilies != true) {
          return false;
        }
        return true;
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('ar', 'AR'), // English, no country code
      ],
      title: 'Mousseline APP',
      theme: ThemeData(
        primaryColor: Colors.black,
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(secondary: Colors.amberAccent[700]!),
        fontFamily: 'Tajawal',
        textTheme: ThemeData.light().textTheme.copyWith(
              headline5: const TextStyle(
                color: Colors.blue,
                fontSize: 24,
                fontFamily: 'Tajawal',
                fontWeight: FontWeight.bold,
              ),
              headline6: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontFamily: 'Tajawal',
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      initialRoute: SplashScreen.screenRoute,
      routes: {
        SignIn.screenRoute: (ctx) => SignIn(),
        ReginstrationScreen.screenRoute: (ctx) => ReginstrationScreen(),
        TabsScreen.screenRoute: (ctx) => TabsScreen(_favoriteTrips),
        // CategoriesScreen.screenRoute: (ctx) => CategoriesScreen(),
        FlitersScreen.screenRoute: (ctx) =>
            FlitersScreen(_filters, _changeFilters),
        ProductDetailScreen.screenRoute: (ctx) =>
            ProductDetailScreen(_manageFavorite, _isFovarite),
        CategoryProdectsScreen.screenRoute: (ctx) =>
            CategoryProdectsScreen(_availableTrips),
        CheckoutScreen.screenRoute: (ctx) => CheckoutScreen(),
        ForgotPasswordScreen.screenRoute: (ctx) => ForgotPasswordScreen(),
        SplashScreen.screenRoute: (ctx) => SplashScreen(),
      },
    );
  }
}
