import 'package:flutter/material.dart';

void main() {
  runApp(const RecipeSwipeApp());
}

class RecipeSwipeApp extends StatelessWidget {
  const RecipeSwipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe Swipe Cards',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.deepOrange,
      ),
      debugShowCheckedModeBanner: false,
      home: const RecipeSwipePage(),
    );
  }
}

class RecipeSwipePage extends StatefulWidget {
  const RecipeSwipePage({super.key});

  @override
  State<RecipeSwipePage> createState() => _RecipeSwipePageState();
}

class _RecipeSwipePageState extends State<RecipeSwipePage> {
  List<Recipe> recipes = [
    Recipe(
      title: 'Grilled Chicken',
      description: 'Juicy grilled chicken with herbs.',
      imageAsset: 'assets/images/image1.jpg',
    ),
    Recipe(
      title: 'Veggie Pasta',
      description: 'Colorful pasta with fresh vegetables.',
      imageAsset: 'assets/images/image2.jpg',
    ),
    Recipe(
      title: 'Classic Burger',
      description: 'Cheesy burger with crispy fries.',
      imageAsset: 'assets/images/image3.jpg',
    ),
    Recipe(
      title: 'Fresh Salad',
      description: 'Green salad with dressing and seeds.',
      imageAsset: 'assets/images/image4.jpg',
    ),
    Recipe(
      title: 'Chocolate Cake',
      description: 'Moist chocolate cake with icing.',
      imageAsset: 'assets/images/image5.jpg',
    ),
  ];

  void _removeTopCard() {
    setState(() {
      recipes.removeAt(0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipe Swipe Cards'),
        centerTitle: true,
      ),
      body: Center(
        child: recipes.isEmpty
            ? const Text(
          'No more recipes!',
          style: TextStyle(fontSize: 18),
        )
            : Stack(
          children: recipes.reversed.map((recipe) {
            int index = recipes.indexOf(recipe);
            return Positioned(
              top: 20 + index * 5,
              left: 20 + index * 5,
              right: 20 + index * 5,
              child: Dismissible(
                key: Key(recipe.title),
                direction: DismissDirection.horizontal,
                onDismissed: (direction) {
                  _removeTopCard();
                },
                child: RecipeCard(recipe: recipe),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class RecipeCard extends StatelessWidget {
  final Recipe recipe;

  const RecipeCard({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            recipe.imageAsset,
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Text(
                  recipe.title,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  recipe.description,
                  style: const TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Recipe {
  final String title;
  final String description;
  final String imageAsset;

  Recipe({
    required this.title,
    required this.description,
    required this.imageAsset,
  });
}
