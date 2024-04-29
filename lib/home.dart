import 'package:flutter/material.dart';
import 'screens/homescreen.dart';
import 'screens/notifyscreen.dart';
import 'screens/profilescreen.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  int pageIndex = 0;

  static final List<Widget> page = [
    const HomeScreen(),
    const notificationscreen(),
    const profilescreen()
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: page[pageIndex],
        bottomNavigationBar: Container(
          height: 50,
          margin: const EdgeInsets.only(left: 30, bottom: 30, right: 30),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow:const [
               BoxShadow(
                  color:  Color.fromARGB(255, 231, 231, 231),
                  blurRadius: 10)
            ],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      pageIndex = 0;
                    });
                  },
                  icon: pageIndex == 0
                      ? const Icon(
                          Icons.home_filled,
                          color: Colors.blueGrey,
                          size: 35,
                        )
                      : Icon(
                          Icons.home_filled,
                          color: Colors.grey.shade300,
                          size: 35,
                        )),
              IconButton(
                  onPressed: () {
                    setState(() {
                      pageIndex = 1;
                    });
                  },
                  icon: pageIndex == 1
                      ? const Icon(
                          Icons.notifications_rounded,
                          color: Colors.blueGrey,
                          size: 35,
                        )
                      : Icon(
                          Icons.notifications_rounded,
                          color: Colors.grey.shade300,
                          size: 35,
                        )),
              IconButton(
                  onPressed: () {
                    setState(() {
                      pageIndex = 2;
                    });
                  },
                  icon: pageIndex == 2
                      ? const Icon(
                          Icons.settings,
                          color: Colors.blueGrey,
                          size: 35,
                        )
                      : Icon(
                          Icons.settings,
                          color: Colors.grey.shade300,
                          size: 35,
                        )),
            ],
          ),
        ),
      ),
    );
  }
}
