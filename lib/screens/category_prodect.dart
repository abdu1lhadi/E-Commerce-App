import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_item.dart';

class CategoryProdectsScreen extends StatefulWidget {
  static const screenRoute = '/category-trips';

  final List<Product> availableTrips;

  CategoryProdectsScreen(this.availableTrips);

  @override
  State<CategoryProdectsScreen> createState() => _CategoryProdectsScreenState();
}

class _CategoryProdectsScreenState extends State<CategoryProdectsScreen> {
  late String categoryTitle;
  late List<Product> displayTrips;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    final routeArgument =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryId = routeArgument['id'];
    categoryTitle = routeArgument['title']!;
    displayTrips = widget.availableTrips.where((trip) {
      return trip.categories.contains(categoryId);
    }).toList();
    super.didChangeDependencies();
  }

  void _removeTrip(String tripId) {
    setState(() {
      displayTrips.removeWhere((trip) => trip.id == tripId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return ProductItem(
            id: displayTrips[index].id,
            title: displayTrips[index].title,
            imageUrl: displayTrips[index].imageUrl,
            price: displayTrips[index].price,
            subDescribe: displayTrips[index].subDescribe,
            // tripType: displayTrips[index].tripType,
            // season: displayTrips[index].season,
            //removeItem: _removeTrip,
          );
        },
        itemCount: displayTrips.length,
      ),
    );
  }
}
