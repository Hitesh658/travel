import 'package:flutter/material.dart';
import 'package:travel/Component/Profile.dart';
import 'package:travel/Homepage.dart';
import 'package:travel/User.dart';

class Booking extends StatefulWidget {
  const Booking({Key? key});

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  @override
  Widget build(BuildContext context) {
    @override
    void initState() {
      super.initState();
// Set the initial selected index to 0
    }

    void _onItemTapped(int index) {
      setState(() {});

      switch (index) {
        case 1: // Login
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Profile()),
          );
          break;
        case 0: // User
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Homepage()),
          );
          break;
        case 3: // User
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => User()),
          );
          break;
        // Add cases for other indices as needed
      }
    }

    Color color = const Color(0xFF2E6BEA);

    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                label: 'Home',
                backgroundColor: color),
            // BottomNavigationBarItem(
            //     icon: Icon(
            //       Icons.search,
            //       color: Colors.black,
            //     ),
            //     label: 'Search',
            //     backgroundColor: color),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.calendar_month,
                  color: Colors.black,
                ),
                label: 'Booking',
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
            const Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Text(
                "Bookings",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 20, // The number of items in the list
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      color: color,
                      child: ListTile(
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Tripname $index',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              'Journey Date $index',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              'Trip Id $index',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              'Status $index',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ), // Title of the item
                        trailing: MaterialButton(
                          color: Colors.white,
                          onPressed: () {},
                          child: const Text("View"),
                        ), // Trailing widget
                        onTap: () {
                          // Action to be performed when the item is tapped
                        },
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
