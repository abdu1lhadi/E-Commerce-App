import 'package:flutter/material.dart';
import 'package:mousseline/widgets/my_button.dart';
import '../app_data.dart';

class ProductDetailScreen extends StatefulWidget {
  static const screenRoute = '/trip-detail';

  final Function manageFavorite;
  final Function isFavorite;
  ProductDetailScreen(this.manageFavorite, this.isFavorite);

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  Widget buildSectionTitle(BuildContext context, String titleText) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      alignment: Alignment.topRight,
      child: Text(
        titleText,
        style: Theme.of(context).textTheme.headline5,
      ),
    );
  }

  Widget buildListViewContainer(Widget child) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.yellow),
        borderRadius: BorderRadius.circular(10),
      ),
      height: 200,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: child,
    );
  }

  int _numOrder = 0;

  @override
  Widget build(BuildContext context) {
    final tripId = ModalRoute.of(context)!.settings.arguments as String;
    final selectedTrip = Products_data.firstWhere((trip) => trip.id == tripId);

    return Scaffold(
      appBar: AppBar(
        title: Text('${selectedTrip.title}'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                selectedTrip.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildSectionTitle(context, selectedTrip.subDescribe),
                  buildSectionTitle(context, '${selectedTrip.price} SAR'),
                ],
              ),
            ),
            ExpansionTile(
              initiallyExpanded: true,
              title: Text(
                "تفاصيل المنتج :",
                style: Theme.of(context).textTheme.headline4,
              ),
              children: <Widget>[
                ListTile(
                  title: Text(
                    selectedTrip.describe,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                )
              ],
            ),
            // buildListViewContainer(
            //   ListView.builder(
            //     itemCount: 1,
            //     itemBuilder: (ctx, index) => Card(
            //       elevation: 0.4,
            //       child: Padding(
            //         padding: const EdgeInsets.symmetric(
            //           vertical: 5,
            //           horizontal: 10,
            //         ),
            //         child: Text(selectedTrip.describe),
            //       ),
            //     ),
            //   ),
            // ),
            SizedBox(height: 35),
            Row(
              children: [
                Spacer(),
                InkWell(
                  onTap: () {
                    setState(() {
                      _numOrder--;
                    });
                  },
                  child: Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondary,
                        borderRadius: BorderRadius.circular(10.0)),
                    child: const Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8.0,
                ),
                Text(
                  '${_numOrder}',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  width: 8.0,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      _numOrder++;
                    });
                  },
                  child: Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondary,
                        borderRadius: BorderRadius.circular(10.0)),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(width: 30),
                MyButton(
                  color: Theme.of(context).primaryColor,
                  title: 'أضافة',
                  onPressed: () {},
                ),
                Spacer(),
              ],
            ),
            SizedBox(height: 100),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          widget.isFavorite(tripId) ? Icons.star : Icons.star_border,
          color: Colors.grey,
        ),
        onPressed: () => widget.manageFavorite(tripId),
      ),
    );
  }
}
