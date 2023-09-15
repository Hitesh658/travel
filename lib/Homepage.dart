import 'package:flutter/material.dart';
import 'package:travel/Booking.dart';
import 'package:travel/Component/Profile.dart';
import 'package:travel/User.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<IconData> iconList = [
    Icons.home,
    Icons.search,
    Icons.favorite,
    Icons.person,
  ];

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
          MaterialPageRoute(builder: (context) => Booking()),
        );
        break;
      case 2: // User
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Booking()),
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

  @override
  Widget build(BuildContext context) {
    Color color = const Color(0xFF2E6BEA);

    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: Icon(Icons.notifications),
          )
        ],
        title: Center(
          child: Text(
            "GoTrip",
            style: TextStyle(color: color, fontSize: 35),
          ),
        ),
        leading: Icon(Icons.g_mobiledata),
      ),
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
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: 300,
              child: Column(
                children: [
                  Row(children: [
                    Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Stack(
                            children: [
                              Positioned(
                                child: Image.network(
                                  'https://images.pexels.com/photos/3278215/pexels-photo-3278215.jpeg?cs=srgb&dl=pexels-oleksandr-p-3278215.jpg&fm=jpg',
                                  height: 150,
                                  width: 150,
                                ),
                              ),
                              Positioned(
                                  top: 130, left: 50, child: Text("Travel"))
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50.0),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Stack(
                              children: [
                                Positioned(
                                  child: Image.network(
                                    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1b/ed/95/07/limak-eurasia-luxury.jpg?w=700&h=-1&s=1',
                                    height: 150,
                                    width: 150,
                                  ),
                                ),
                                Positioned(
                                    top: 130, left: 50, child: Text("Hotel"))
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ]),
                  Row(children: [
                    Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Stack(
                            children: [
                              Positioned(
                                child: Image.network(
                                  'https://etimg.etb2bimg.com/photo/73558929.cms',
                                  height: 150,
                                  width: 150,
                                ),
                              ),
                              Positioned(
                                  top: 132,
                                  left: 30,
                                  child: Text("Transportation"))
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50.0),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Stack(
                              children: [
                                Positioned(
                                  child: Image.network(
                                    'https://assets.cntraveller.in/photos/63d8e5103d7229d4cf308f01/16:9/w_1920,h_1080,c_limit/Prequel-lead.jpg',
                                    height: 150,
                                    width: 150,
                                  ),
                                ),
                                Positioned(
                                    top: 130,
                                    left: 50,
                                    child: Text("Restaurant"))
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ])
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'Recommended',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
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
                            'Trip Name $index',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            'Journey Date $index',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            'Trip Info $index',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ), // Title of the item
                      trailing: MaterialButton(
                        color: Colors.white,
                        onPressed: () {},
                        child: const Text("Explore"),
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
    );
  }
}
