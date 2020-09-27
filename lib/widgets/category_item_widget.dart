import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../screens/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;
  final String id;

  CategoryItem({this.id, this.title, this.color});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      onTap: (){
        Navigator.of(context).pushNamed(CategoryMealsScreen.id,arguments:
        { 'id':id,
          'title':title
        }
        );
      },
      child: Container(
        padding: EdgeInsets.all(15),
        child: Text(title,style: Theme.of(context).textTheme.headline6,),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              color.withOpacity(.7),
              color
            ],
          ),
          borderRadius: BorderRadius.circular(15)
        ),
      ),
    );
  }
}
