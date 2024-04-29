import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              child: Stack(
                children: [
                  Container(
                decoration:const BoxDecoration(
                    color: Color.fromARGB(255, 235, 166, 81),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(50))),
                height: 180,
                width: double.infinity,
                child:const Padding(
                  padding: EdgeInsets.only(right: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Lorem",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
                          Text('Lorem ipsum dolor sit amet.',)
                        ],
                    )],
                  ),
                ),
              ),
              Positioned(
                top: 120,
                child: Container(
                  height: 90,
                  width: 90,
                  decoration:const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle
                  ),
                ),
              ),
              Positioned(
                top: 135,
                left: 20,
                child: Container(
                  height: 50,
                  width: 50,
                   decoration:const BoxDecoration(
                    color: Colors.orange,
                    shape: BoxShape.circle
                   ),
                ))
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Text("Lorem Ipsum",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
                      Text("Lorem Ipsum",style: TextStyle(fontSize: 18),)
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
