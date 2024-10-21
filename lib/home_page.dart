import 'package:flutter/material.dart';
import 'package:hello_world/main.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context){
                  return DetailPage();
                },
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(8),
              // color: Colors.blue,
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/taman-film.jpg",
                    height: 70,
                    width: 70,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      Text(
                        "Ini Judul",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Container(
                        width: 200,
                        child: Text(
                          "Ini Deskripsi aaaaaaaaaaaaaaasdfghjkasdfghjkqwertyuioqwerty",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
