import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shop_app/model/cart.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          title: Text("Cart"),
        ),
        body: value.getUserCart().isEmpty
            ? Center(
                child: Text("Cart is Empty"),
              )
            : ListView.builder(
                itemCount: value.getUserCart().length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListTile(
                        leading:
                            Image.asset(value.getUserCart()[index].imagePath),
                        title: Text(value.getUserCart()[index].name),
                        subtitle: Text(value.getUserCart()[index].price),
                        trailing: IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: () {
                            value.removeCartItem(value.getUserCart()[index]);
                          },
                        ),
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
