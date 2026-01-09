import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp( 
    // #1 MaterialApp: The top-level wrapper that configures the Navigator and applies Material Design styles.
    title: 'Week 1 - All 8 Widgets',
    theme: ThemeData(primarySwatch: Colors.teal),
    home: const HomeScreen(),
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold( 
    // #2 Scaffold: Implements the basic Material Design visual layout structure, providing slots for AppBars and Drawers.
    appBar: AppBar( 
      // #3 AppBar: A horizontal bar typically displayed at the top of the app, containing the title and navigation icons.
      title: const Text('All Widgets') 
      // #4 Text: A widget that renders a single-style string of text onto the screen.
    ),
    body: Center( 
      // #7 Center: A layout widget that centers its child within itself, taking up as much space as possible.
      child: Container( 
        // #8 Container: A versatile box model widget that allows for decoration (borders, background), sizing, and padding.
        padding: const EdgeInsets.all(20),
        child: Column( 
          // #6 Column: A layout widget that arranges its children in a vertical array (y-axis).
          children: [
            Row( 
              // #5 Row: A layout widget that arranges its children in a horizontal array (x-axis).
              children: [
                const Icon(Icons.star),
                const Text('Flutter'),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
