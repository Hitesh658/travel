 import 'package:flutter/material.dart';
import 'package:travel/Booking.dart';
import 'package:travel/Component/Profile.dart';
import 'package:travel/Homepage.dart';

class User extends StatefulWidget {
  const User({super.key});

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  Color color = const Color(0xFF2E6BEA);

  @override
  Widget build(BuildContext context) {
    void _onItemTapped(int index) {
      setState(() {});

      switch (index) {
        case 1: // Login
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Profile()),
          );
          break;
        case 2: // User
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Booking()),
          );
          break;
        case 0: // User
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Homepage()),
          );
          break;
        // Add cases for other indices as needed
      }
    }

    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                label: 'Home',
                backgroundColor: color),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                label: 'Search',
                backgroundColor: color),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.calendar_month,
                  color: Colors.black,
                ),
                label: 'Calendar',
                backgroundColor: color),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
                label: 'Profile',
                backgroundColor: color),
          ],
          currentIndex: 0, // Index of the current tab
          onTap: _onItemTapped,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const Center(
              child: CircleAvatar(
                radius: 40, // Adjust the radius as needed
                backgroundImage: NetworkImage(
                    'https://cdn-icons-png.flaticon.com/512/1077/1077114.png'), // Use NetworkImage for images from the web
                // OR
                // child: Icon(Icons.person), // Use Icon for icons
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Text(
                "James",
                style: TextStyle(fontSize: 30),
              ),
            ),
            const Text("jimmy23@gmail.com"),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                height: 300,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Profile()),
                          );
                        },
                        child: const Card(
                          elevation: 1, // Add shadow to the card
                          margin:
                              EdgeInsets.all(8), // Add margin around the card
                          child: ListTile(
                            trailing: Icon(Icons.arrow_forward_rounded),
                            title: Text('My Profile'),
                          ),
                        ),
                      ),
                      const Card(
                        elevation: 1, // Add shadow to the card
                        margin: EdgeInsets.all(8), // Add margin around the card
                        child: ListTile(
                          trailing: Icon(Icons.arrow_forward_rounded),
                          title: Text('Manage Account'),
                        ),
                      ),
                      const Card(
                        elevation: 1, // Add shadow to the card
                        margin: EdgeInsets.all(8), // Add margin around the card
                        child: ListTile(
                          trailing: Icon(Icons.arrow_forward_rounded),
                          title: Text('Upload Doucments'),
                        ),
                      ),
                      const Card(
                        elevation: 1, // Add shadow to the card
                        margin: EdgeInsets.all(8), // Add margin around the card
                        child: ListTile(
                          trailing: Icon(Icons.arrow_forward_rounded),
                          title: Text('Payments'),
                        ),
                      ),
                      // Add more list items as needed
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
