import 'package:flutter/material.dart';
import 'package:shop_app/models/category.dart';
import 'package:shop_app/screens/category_list/category_list_screen.dart';
import 'package:shop_app/size_config.dart';

class CategoryListItem extends StatelessWidget {
  final Category category;

  const CategoryListItem({
    Key key,
    this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CategoryListScreen(
            name: category.name,
          ),
        ),
      ),
      child: Container(
        padding: EdgeInsets.only(bottom: 3),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          color: Colors.grey.shade300,
          elevation: 3,
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Stack(
            children: [
              Image.asset(
                category.image,
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
              Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.black.withOpacity(0.15),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(
                      SizeConfig.screenWidth * 0.03,
                      SizeConfig.screenHeight * 0.01,
                      SizeConfig.screenWidth * 0.03,
                      0),
                  child: Text(
                    category.name,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
