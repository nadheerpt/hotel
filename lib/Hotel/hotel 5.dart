
import 'package:flutter/material.dart';

class Bottom extends StatelessWidget {
  Bottom({super.key});

  final ValueNotifier<int> selectedIndexNotifier = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: selectedIndexNotifier,
        builder: (context, updatedIndex, _) {
          return BottomNavigationBar(
            currentIndex: updatedIndex,
            selectedItemColor:Colors.green,
            unselectedItemColor:Colors.grey,
            onTap: (newIndex) {
              selectedIndexNotifier.value = newIndex;
            },
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined,
                      weight: 100, grade: -25, fill: 0),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search,
                      weight: 100, grade: -25, fill: 0),
                  label: "Explore"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person, weight: 100, grade: -25, fill: 0),
                  label: "Person"),
            ],
          );
        });
  }
}