import 'package:flutter/material.dart';
import 'package:shop_app/components/product_grid_item.dart';
import 'package:shop_app/components/search_text_field.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/dummy_data.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/components/product_list_item.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Product> products;
  bool isGrid;

  @override
  void initState() {
    super.initState();
    products = DummyData.dummyProducts;
    isGrid = true;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(11),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(8),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Card(
                            margin: EdgeInsets.all(0),
                            elevation: 5,
                            shadowColor: kCardBackgroundColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            child: SearchTextField(label: 'Search Product...'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(10),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isGrid = !isGrid;
                      });
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      child: Card(
                        margin: EdgeInsets.all(0),
                        elevation: 5,
                        shadowColor: kCardBackgroundColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: isGrid
                            ? Icon(
                                Icons.art_track,
                                size: 30,
                                color: kPrimaryColor,
                              )
                            : Icon(
                                Icons.view_module,
                                size: 30,
                                color: kPrimaryColor,
                              ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(8),
                  ),
                ],
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(16)),
            !isGrid
                ? Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: products.length,
                      itemBuilder: (context, index) {
                        return ProductListItem(
                          product: products[index],
                        );
                      },
                    ),
                  )
                : Expanded(
                    child: GridView.builder(
                      shrinkWrap: true,
                      itemCount: products.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.78,
                      ),
                      itemBuilder: (context, index) {
                        return ProductGridItem(
                          product: products[index],
                        );
                      },
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
