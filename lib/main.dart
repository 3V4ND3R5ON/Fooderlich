import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';
import 'home.dart';

void main() {
  // 1
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {
  // 2
  const Fooderlich({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: Create theme
    final theme = FooderlichTheme.dark();
    // TODO: Apply Home widget
    // 3
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      title: 'Fooderlich',
      home: const Home(),
    );

    /*return MaterialApp(
      debugShowCheckedModeBanner: false,
      // TODO: Add theme
      theme: theme,
      title: 'Fooderlich',
      // 4
      home: Scaffold(
        // TODO: Style the title
        ///appBar: AppBar(title: const Text('Fooderlich - APLICATIVO DE TESTE')),
        appBar: AppBar(
          title: Text(
            'Fooderlich',
            style: theme.textTheme.headline6,
          ),
        ),
        // TODO: Style the body text
        ///body: const Center(child: Text('Let\'s get cooking 👩‍🍳')),
        body: Center(
          child: Text('Let\'s get cooking 👩‍🍳', style: theme.textTheme.headline1),
        ),
      ),
    );*/
  }
}
