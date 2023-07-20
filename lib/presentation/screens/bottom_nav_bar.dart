import 'package:flutter/material.dart';
import 'package:task/presentation/screens/home_screen.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
 
  Widget build(BuildContext context) {
    return Scaffold(
       body: const SafeArea(child: HomeScreen()),
      
      bottomNavigationBar: Container(
        
        child: BottomNavigationBar(
          showSelectedLabels: false,
          
          showUnselectedLabels: false,
          
            // fixedColor: Color.fromARGB(255, 243,202,84),
            unselectedItemColor: const Color.fromARGB(255, 243,202,84),
            selectedItemColor: const Color.fromARGB(255, 243,202,84),
            
            
            currentIndex: 2,
            
            items: const [
              BottomNavigationBarItem(
                
                  icon: Icon(
                    Icons.settings,size: 30,
                  ),
                  label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.person,size: 30,), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled,size: 30,), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.emoji_events,size: 30,), label: ''),
              BottomNavigationBarItem(
               
                icon: Icon(Icons.menu,size: 30,), label: '')
            ]),
      ),
     
    );
  }
  
}