import 'package:flutter/material.dart';
import 'package:hello_world/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),//const DetailPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class DetailPage extends StatefulWidget {

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image.asset("assets/images/farm-house.jpg"),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            child: Text(
              "FARM HOUSE LEMBANG",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Column(
                  children: [
                    Icon(Icons.calendar_today),
                    SizedBox(
                      height: 5,
                    ),
                    Text("Open Everyday")
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Icon(Icons.watch_later_outlined),
                    SizedBox(
                      height: 5,
                    ),
                    Text("09:00 - 20:00")
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Icon(Icons.monetization_on),
                    SizedBox(
                      height: 5,
                    ),
                    Text("Rp. 25.000")
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
              textAlign: TextAlign.center,
            ),
            margin: EdgeInsets.all(12),
          )
        ],
      ),
    );
  }
}
