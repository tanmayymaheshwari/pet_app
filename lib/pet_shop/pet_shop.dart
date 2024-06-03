import 'package:flutter/material.dart';
import 'package:pet_app/global_widgets/display_image.dart';
import 'package:pet_app/global_widgets/searchbar.dart';
import 'package:pet_app/pet_shop/widgets/shop_by_category.dart';

class PetShop extends StatefulWidget {
  const PetShop({super.key});

  @override
  State<PetShop> createState() => _PetShopState();
}

class _PetShopState extends State<PetShop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          shadowColor: Colors.white,
          surfaceTintColor: Colors.white,
          elevation: 5,
          title: Center(
              child: const Text(
            "Pet Shop",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          )),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Icon(Icons.shopping_cart_outlined),
            )
          ],
        ),

        // DISPLAY SCREEN
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DisplayImage(imgUrl: "assets/petshop_image_1.png"),
              PetSearchbar(),
              ShopByCategory(),
              Padding(
                padding: EdgeInsets.only(left: 14.0, top: 14, bottom: 8),
                child: Text(
                  "Best Seller",
                  style: TextStyle(
                    color: Color.fromRGBO(26, 25, 25, 1),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
