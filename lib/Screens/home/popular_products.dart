import 'package:ecommerceapp/Screens/home/product_card.dart';
import 'package:ecommerceapp/models/product_model.dart';
import 'package:flutter/material.dart';

import 'section_title.dart';

class PopularProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(title: "Popular Products", press: () {}),
        SizedBox(height: (20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) {
                  if (demoProducts[index].isPopular)
                    return ProductCard(product: demoProducts[index]);

                  return SizedBox
                      .shrink(); // here by default width and height is 0
                },
              ),
            ],
          ),
        )
      ],
    );
  }
}
