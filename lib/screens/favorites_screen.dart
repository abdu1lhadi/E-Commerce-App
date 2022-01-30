import 'package:flutter/material.dart';
import '../widgets/product_item.dart';
import '../models/product.dart';

class FavoritesScreen extends StatelessWidget {
  //const FavoritesScreen({Key? key}) : super(key: key);

  final List<Product> favoriteTrips;

  FavoritesScreen(this.favoriteTrips);

  @override
  Widget build(BuildContext context) {
    if (favoriteTrips.isEmpty) {
      return Center(
        child: Text('هذة صفحة المنتجات المفضلة'),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return ProductItem(
            id: favoriteTrips[index].id,
            title: favoriteTrips[index].title,
            imageUrl: favoriteTrips[index].imageUrl,
            price: favoriteTrips[index].price,
            subDescribe: favoriteTrips[index].subDescribe,
            // tripType: favoriteTrips[index].tripType,
            // qseason: favoriteTrips[index].season,
            //removeItem: _removeTrip,
          );
        },
        itemCount: favoriteTrips.length,
      );
    }
  }
}
