import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'models/category_models.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Slider',
      debugShowCheckedModeBanner: false,
      home: Screen(),
    );
  }
}

class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        elevation: 0,
        actions: [
          Center(
            child: Text(
              'Skip',
              style: TextStyle(color: Colors.amber, fontSize: 20),
            ),
          ),
          IconButton(
              icon: Icon(Icons.arrow_forward_sharp),
              color: Colors.red,
              onPressed: () {}),
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '7',
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.amber,
                ),
              ),
              Text(
                'Krave',
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          Container(
              child: CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 1.5,
                  viewportFraction: 0.9,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                ),
                items: Category.categories.map((category) => HeroCaros(category: category)).toList(),
              )
          ),
          SizedBox(height: 200.9,),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: MaterialButton(
                child: Text("Get Started"),
                minWidth: double.infinity,
                color: Colors.orangeAccent,
                onPressed: (){}
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  "Don't have an account!",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.grey,
                  ),
                ),
                Spacer(),
                Text(
                  'Sign up',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HeroCaros extends StatelessWidget {
  final Category category;
  const HeroCaros({required this.category});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          child: Stack(
            children: <Widget>[
              Image.asset(category.imageUrl, fit: BoxFit.cover, width: 1000.0),
              Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(200, 0, 0, 0),
                        Color.fromARGB(0, 0, 0, 0),
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                  child: Text(
                    category.name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

