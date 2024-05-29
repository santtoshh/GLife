import 'package:flutter/material.dart';

class AccessoriesPage extends StatefulWidget {
  const AccessoriesPage({Key? key}) : super(key: key);

  @override
  _AccessoriesPageState createState() => _AccessoriesPageState();
}

class _AccessoriesPageState extends State<AccessoriesPage> {
  bool _showSunglasses = false; // Track the visibility of sunglasses

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Accessories'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Character image with sunglasses
            GestureDetector(
              onTap: () {
                setState(() {
                  _showSunglasses = !_showSunglasses; // Toggle sunglasses visibility
                });
              },
              child: Image.asset(
                _showSunglasses ? 'assets/images/character_sunglasses.png' : 'assets/images/character.jpeg',
                width: 200, // Adjust width as needed
                height: 200, // Adjust height as needed
              ),
            ),
            const SizedBox(height: 20),
            // Sunglasses image (clickable)
            GestureDetector(
              onTap: () {
                setState(() {
                  _showSunglasses = !_showSunglasses; // Toggle sunglasses visibility
                });
              },
              child: Image.asset(
                'assets/images/sunglasses.jpg',
                width: 100, // Adjust width as needed
                height: 50, // Adjust height as needed
              ),
            ),
          ],
        ),
      ),
    );
  }
}
