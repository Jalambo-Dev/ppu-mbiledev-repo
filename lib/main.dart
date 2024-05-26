import 'package:flutter/material.dart';

// The entry point of the application
void main() => runApp(const MyApp());

// Main application widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // Scaffold widget provides a basic material design layout structure
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          toolbarHeight: 80,
          titleSpacing: 18,
          title: const Text(
            'Center',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30,
                letterSpacing: 1),
          ),
        ),
        body: ListView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: [
            // Card widget for displaying profile information
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              elevation: 20,
              color: const Color(0xff3775fc),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // Profile Image
                        const CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 35,
                            backgroundImage:
                                AssetImage('assets/christopher-campbell.jpg'),
                          ),
                        ),

                        // Name and Edit Icon
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                // Name
                                const Text(
                                  'Chriser Campbell',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                // Edit Icon
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.border_color,
                                    color: Colors.white,
                                  ),
                                  iconSize: 20,
                                ),
                              ],
                            ),
                            // Description
                            const Text(
                              'Artist',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // Categories and Numbers
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            // Number of Collections
                            Text(
                              '220',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            // Category
                            Text(
                              'Collect',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            // Number of Tracks
                            Text(
                              '20',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            // Category
                            Text(
                              'Trak',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            // Number of Attentions
                            Text(
                              '51',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            // Category
                            Text(
                              'Attention',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            // Number of Coupons
                            Text(
                              '907',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            // Category
                            Text(
                              'Coupons',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 40),
            // Row for displaying icons and text
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Wallet Item
                Column(
                  children: [
                    CircleAvatar(
                      radius: 24,
                      backgroundColor: Color.fromARGB(255, 230, 230, 230),
                      child: Icon(
                        Icons.wallet,
                        size: 24,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Wallet',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                // Delivery Item
                Column(
                  children: [
                    CircleAvatar(
                      radius: 24,
                      backgroundColor: Color.fromARGB(255, 230, 230, 230),
                      child: Icon(
                        Icons.local_shipping,
                        size: 24,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Delivery',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                // Message Item
                Column(
                  children: [
                    CircleAvatar(
                      radius: 24,
                      backgroundColor: Color.fromARGB(255, 230, 230, 230),
                      child: Icon(
                        Icons.chat,
                        size: 24,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Message',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                // Service Item with Notification
                Stack(
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 24,
                          backgroundColor: Color.fromARGB(255, 230, 230, 230),
                          child: Icon(
                            Icons.attach_money,
                            size: 24,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Service',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    // Notification Badge
                    Positioned(
                      top: 0,
                      right: 0,
                      left: 30,
                      child: CircleAvatar(
                        radius: 10,
                        backgroundColor: Color(0xff3775fc),
                        child: Text(
                          '2',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            // Card for Address Information
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              shadowColor: const Color.fromARGB(98, 55, 117, 252),
              elevation: 20,
              child: ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                leading: const CircleAvatar(
                  radius: 30,
                  backgroundColor: Color(0xff8d7aee),
                  child: Icon(
                    Icons.location_on,
                    color: Colors.white,
                  ),
                ),
                title: const Text(
                  'Address',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                subtitle: const Text(
                  'Ensure your harvesting address',
                  style: TextStyle(
                    color: Color.fromARGB(255, 180, 180, 180),
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                  ),
                ),
                trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      color: Color.fromARGB(255, 180, 180, 180),
                      size: 18,
                    )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // Card for Privacy Information
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              shadowColor: const Color.fromARGB(98, 55, 117, 252),
              elevation: 20,
              child: ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                leading: const CircleAvatar(
                  radius: 30,
                  backgroundColor: Color(0xfff369b7),
                  child: Icon(
                    Icons.lock,
                    color: Colors.white,
                  ),
                ),
                title: const Text(
                  'Privacy',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                subtitle: const Text(
                  'System permission change',
                  style: TextStyle(
                    color: Color.fromARGB(255, 180, 180, 180),
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                  ),
                ),
                trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      color: Color.fromARGB(255, 180, 180, 180),
                      size: 18,
                    )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // Card for General Information
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              shadowColor: const Color.fromARGB(98, 55, 117, 252),
              elevation: 20,
              child: ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                leading: const CircleAvatar(
                  radius: 30,
                  backgroundColor: Color(0xfffec85b),
                  child: Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                ),
                title: const Text(
                  'General',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                subtitle: const Text(
                  'Basic functional settings',
                  style: TextStyle(
                    color: Color.fromARGB(255, 180, 180, 180),
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                  ),
                ),
                trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      color: Color.fromARGB(255, 180, 180, 180),
                      size: 18,
                    )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // Card for Notification Information
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              shadowColor: const Color.fromARGB(98, 55, 117, 252),
              elevation: 20,
              child: ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                leading: const CircleAvatar(
                  radius: 30,
                  backgroundColor: Color(0xff5ed1d4),
                  child: Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                ),
                title: const Text(
                  'Notification',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                subtitle: const Text(
                  'Take over the new in time',
                  style: TextStyle(
                    color: Color.fromARGB(255, 180, 180, 180),
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                  ),
                ),
                trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      color: Color.fromARGB(255, 180, 180, 180),
                      size: 18,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
