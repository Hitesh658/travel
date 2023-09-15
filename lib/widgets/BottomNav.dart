import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Container(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Number of columns in the grid
              crossAxisSpacing: 40, // Spacing between columns
              mainAxisSpacing: 20, // Spacing between rows
            ),
            itemCount: 4, // Total number of items in the grid
            itemBuilder: (BuildContext context, int index) {
              return Container(
                color: Colors.blue,
                height: 100, // Adjust the height here
                width: 100, // Adjust the width here
                child: Center(
                  child: Text(
                    'Item $index',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16), // Adjust the font size here
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
