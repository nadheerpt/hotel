
import 'package:flutter/material.dart';
import 'hotel 2.dart';
import 'hotel 3.dart';
import 'hotel 4.dart';
import 'hotel 5.dart';

void main(){
  runApp(MaterialApp(home: Hotelhome(),));
}

class Hotelhome extends StatelessWidget {
  const Hotelhome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            title: const Text(
              "Hello Disuza",
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
            ),
            subtitle: const Text(
              "Find your Favorite Hotel",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            trailing: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                          "assets/images/sebastiaan-stam-tZRHtjMliEM-unsplash(1).jpg")),
                  borderRadius: BorderRadius.circular(8)),
            ),
          ),
          Container(
            margin:const EdgeInsets.all(20),
            width: double.infinity,
            height: 50,
            color: const Color.fromARGB(153, 255, 255, 255),
            child:const Card(
              elevation: 20,
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: "Serach For Hotel",
                    filled: true,
                    fillColor: Colors.white60,
                    enabled: true,
                    border: InputBorder.none

                )
                ,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Popular Hotel",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
          ),
          HorizontalCard(title: hotelTitle,imageUrl: imageUrl,),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Hotel Packages",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                Text(
                  "View All",
                  style: TextStyle(color: Colors.blue, fontSize: 14),
                )
              ],
            ),
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: hotelTitle.length,
            itemBuilder: (context, index) => VerticalCard(title: hotelTitle[index],imageUrl: imageUrl[index],),
          )
        ],
      ),
      bottomNavigationBar: Bottom(),
    );
  }
}