import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mousseline/models/product.dart';
import 'package:mousseline/widgets/my_button.dart';
import '../app_data.dart';
import '../widgets/order_summary.dart';
import '../widgets/cart_product_card.dart';
import '../blocs/cart/cart_bloc.dart';
import './checkout_screen.dart';

class CartScreen extends StatelessWidget {
  static const String routeName = '/cart';

  // static Route route() {
  //   return MaterialPageRoute(
  //     settings: RouteSettings(name: routeName),
  //     builder: (context) => CartScreen(),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'اضف 30 SR للشحن مجانا',
                    style: TextStyle(fontSize: 16),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, routeName);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      shape: RoundedRectangleBorder(),
                      elevation: 0,
                    ),
                    child: Text("اضف المزيد من المنتجات"),
                  ),
                ],
              ),
              SizedBox(height: 10),
              CartProductCards(
                id: Products_data[0].id,
                imageUrl: Products_data[0].imageUrl,
                title: Products_data[0].title,
                price: Products_data[0].price,
              ),
              CartProductCards(
                id: Products_data[0].id,
                imageUrl: Products_data[0].imageUrl,
                title: Products_data[0].title,
                price: Products_data[0].price,
              ),
              CartProductCards(
                id: Products_data[0].id,
                imageUrl: Products_data[0].imageUrl,
                title: Products_data[0].title,
                price: Products_data[0].price,
              ),
            ],
          ),
          Column(
            children: [
              Divider(thickness: 2),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'SUBTOTAL',
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          '60.00 SR',
                          style: TextStyle(fontSize: 14),
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'رسوم الشحن',
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          '2.98 SR',
                          style: TextStyle(fontSize: 14),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.black.withAlpha(50),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.all(5.0),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.black,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'TOTAL',
                            style: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            '\62.98 SR',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          MyButton(
            color: Theme.of(context).colorScheme.secondary,
            title: "الـدفع",
            onPressed: () {
              Navigator.pushNamed(context, CheckoutScreen.screenRoute);
            },
          ),
        ],
      ),
    );
    // return BlocBuilder<CartBloc, CartState>(
    //   builder: (context, state) {
    //     if (state is CartLoading) {
    //       return CircularProgressIndicator();
    //     }
    //     if (state is CartLoaded) {
    //       return Padding(
    //         padding:
    //             const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
    //         child: Column(
    //           children: [
    //             Row(
    //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //               children: [
    //                 Text(
    //                   state.cart.freeDeliveryString,
    //                   style: Theme.of(context).textTheme.headline5,
    //                 ),
    //                 ElevatedButton(
    //                   onPressed: () {
    //                     Navigator.pushNamed(context, '/');
    //                   },
    //                   style: ElevatedButton.styleFrom(
    //                     primary: Colors.black,
    //                     shape: RoundedRectangleBorder(),
    //                     elevation: 0,
    //                   ),
    //                   child: Text(
    //                     'Add More Items',
    //                     style: Theme.of(context)
    //                         .textTheme
    //                         .headline5!
    //                         .copyWith(color: Colors.white),
    //                   ),
    //                 ),
    //               ],
    //             ),
    //             SizedBox(height: 20),
    //             SizedBox(
    //               height: 400,
    //               child: ListView.builder(
    //                   itemCount: state.cart
    //                       .productQuantity(state.cart.products)
    //                       .keys
    //                       .length,
    //                   itemBuilder: (BuildContext context, int index) {
    //                     return CartProductCard(
    //                       product: state.cart
    //                           .productQuantity(state.cart.products)
    //                           .keys
    //                           .elementAt(index),
    //                       quantity: state.cart
    //                           .productQuantity(state.cart.products)
    //                           .values
    //                           .elementAt(index),
    //                     );
    //                   }),
    //             ),
    //             OrderSummary(),
    //           ],
    //         ),
    //       );
    //     }
    //     return Text('Something went wrong');
    //   },
    // );
  }
}

class CartProductCards extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final int price;
  const CartProductCards({
    Key? key,
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        children: [
          Image.network(
            imageUrl,
            width: 100,
            height: 80,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 15),
              ),
              Text(
                '$price SR',
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
          SizedBox(width: 10),
          Row(children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.remove_circle)),
            Text(
              '1',
              style: TextStyle(fontSize: 15),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.add_circle)),
          ]),
        ],
      ),
    );
  }
}
