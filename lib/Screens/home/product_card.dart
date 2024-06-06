import 'package:ecommerceapp/Screens/details/detail_screen.dart';
import 'package:ecommerceapp/Utils/app_colors.dart';
import 'package:ecommerceapp/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    this.width = 140,
    this.aspectRetio = 1.02,
    required this.product,
  }) : super(key: key);

  final double width, aspectRetio;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: SizedBox(
        width: width,
        child: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => DetailsScreen()));
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 1.02,
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: AppTheme.colorGrey.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: product.images.isNotEmpty
                      ? Hero(
                          tag: product.id.toString(),
                          child: Image.asset(product.images[0]),
                        )
                      : Container(
                          color: Colors.grey[200],
                          child: Center(child: Text('No Image Available')),
                        ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                product.title,
                style: TextStyle(color: AppTheme.colorBlack),
                maxLines: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$${product.price}",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: AppTheme.colorBlack,
                    ),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(50),
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(8),
                      height: 28,
                      width: 28,
                      decoration: BoxDecoration(
                        color: product.isFavourite
                            ? AppTheme.colorMeroon.withOpacity(0.15)
                            : AppTheme.colorGreyLight.withOpacity(0.1),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/Heart Icon_2.svg",
                        color: product.isFavourite
                            ? AppTheme.colorMeroon
                            : AppTheme.colorGreyLight,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
