import 'package:flutter/material.dart';
import 'package:mealsapp/widgets/main_drawer_widget.dart';
class FiltersScreen extends StatefulWidget {
  static String id='FiltersScreen';

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  var glutenFree = false;
  var vegetarian = false;
  var vegan = false;
  var lactoseFree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawerWidget(),
      appBar: AppBar(
        title: Text('Your Filters'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Text('Adjust your meal selection',
            style: Theme.of(context).textTheme.headline6,),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                drawSwitchListTile(
                  title: 'Gluten-Free',
                  subtitle: 'Only includes gluten-free meals',
                    currentValue :glutenFree,
                    updateValue:(newValue){
                    setState(() {
                      glutenFree = newValue;
                    });
                    }
                ),
                drawSwitchListTile(
                    title: 'Lactose-Free',
                    subtitle: 'Only includes lactose-free meals',
                    currentValue : lactoseFree,
                    updateValue:(newValue){
                      setState(() {
                        lactoseFree = newValue;
                      });
                    }
                ),
                drawSwitchListTile(
                    title: 'Vegetarian',
                    subtitle: 'Only includes vegetarian meals',
                    currentValue :vegetarian,
                    updateValue:(newValue){
                      setState(() {
                        vegetarian = newValue;
                      });
                    }
                ),
                drawSwitchListTile(
                    title: 'Vegan',
                    subtitle: 'Only includes vegan meals',
                    currentValue :vegan,
                    updateValue:(newValue){
                      setState(() {
                        vegan = newValue;
                      });
                    }
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
  Widget drawSwitchListTile({
      String title,
      String subtitle,
      bool currentValue,
      Function updateValue}){
    return SwitchListTile(
      title: Text(title),
      value: currentValue,
      subtitle: Text(subtitle),
      onChanged: updateValue,
    );
  }
}
