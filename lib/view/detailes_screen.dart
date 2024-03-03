import 'package:example1/model/product_model.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.product});
  final Datum product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.sizeOf(context).height / 2.5,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(25),
              ),
              image: DecorationImage(
                  image: NetworkImage(product.image!), fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(product.name.toString() ?? ""),
                    Text(product.price.toString() ?? "")
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(product.description.toString() ?? "")
              ],
            ),
          )
        ],
      ),
    );
  }
}
