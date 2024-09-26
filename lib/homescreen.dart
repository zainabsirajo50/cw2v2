import 'package:flutter/material.dart';
import 'detailsscreen.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> recipes = [
  {
    'name': 'Lasagna',
    'ingredients': 'Lasagna Noodles, Ground Beef, Tomato Sauce, Ricotta, Mozzarella, Parmesan',
    'instructions': 'Layer cooked noodles with sauce, cheese, and beef. Bake until bubbly and golden.'
  },
  {
    'name': 'Tacos',
    'ingredients': 'Tortillas, Beef, Lettuce, Cheese, Tomato, Salsa',
    'instructions': 'Cook beef. Prepare toppings. Assemble tacos with tortillas.'
  },
  {
    'name': 'Caesar Salad',
    'ingredients': 'Romaine Lettuce, Croutons, Parmesan, Caesar Dressing',
    'instructions': 'Chop lettuce. Add croutons, Parmesan, and dressing. Top with chicken if desired.'
  },
  {
    'name': 'Pancakes',
    'ingredients': 'Flour, Eggs, Milk, Baking Powder, Sugar, Butter',
    'instructions': 'Mix ingredients. Pour batter into a hot pan and cook both sides until golden.'
  },
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Recipes',
          style: TextStyle(
                color: const Color.fromARGB(255, 45, 10, 2),
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),),
        backgroundColor: const Color.fromARGB(255, 156, 167, 156),
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              recipes[index]['name']!,
              style: TextStyle(
                color: const Color.fromARGB(255, 45, 10, 2),
                fontSize: 17.0,
                fontWeight: FontWeight.w400,
                
              ),
            ),
            
            onTap: () {
              // Navigate to DetailsScreen and pass the recipe data
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(recipe: recipes[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}