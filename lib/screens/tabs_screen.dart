import 'package:flutter/material.dart';
import 'package:mealsapp/screens/categories_screen.dart';
import 'package:mealsapp/screens/favorites_screen.dart';
import 'package:mealsapp/widgets/main_drawer_widget.dart';
class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Map<String,dynamic>> pages=[
    {
      'page':CategoriesScreen(),
      'title':"Categories"
    },
    {
      'page':FavoritesScreen(),
      'title':"Your Favorites"
    },
  ];
  int selectedPageIndex=0;
  void selectPage(int index){
    setState(() {
      selectedPageIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text(pages[selectedPageIndex]['title']),
        ),
      body: pages[selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: selectPage,
          unselectedItemColor: Colors.white,
          selectedItemColor: Theme.of(context).accentColor,
          currentIndex: selectedPageIndex,
          items: [
              BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: Icon(Icons.category),
                title: Text("Categories")
              ),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: Icon(Icons.star),
                title: Text("Favorites")
            ),
          ],
        backgroundColor: Theme.of(context).primaryColor,
      ),
      drawer: MainDrawerWidget(),
    );
  }
}
