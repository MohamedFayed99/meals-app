import 'package:flutter/material.dart';
import 'package:mealsapp/dummy_data.dart';
import 'package:mealsapp/widgets/meal_item_widget.dart';
class CategoryMealsScreen extends StatefulWidget {

  static String id='/category-meals';

  @override
  _CategoryMealsScreenState createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String,String>;
    final categoryId = routeArgs['id'];
    final categoryTitle = routeArgs['title'];
    final categoryMeals= DUMMY_MEALS.where((meal)
    => meal.categories.contains(categoryId)).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
          itemBuilder: (ctx,index){
            return MealItemWidget(
              id:categoryMeals[index].id,
              title: categoryMeals[index].title,
              affordability: categoryMeals[index].affordability,
              imageUrl: categoryMeals[index].imageUrl,
              complexity: categoryMeals[index].complexity,
              duration: categoryMeals[index].duration,
            );
          },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
