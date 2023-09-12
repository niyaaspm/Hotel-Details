import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Hotel Details"),
          backgroundColor: Colors.amberAccent,
        ),
        body: ListView(children: [
          Container(
            height: 210,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Stack(children: [
                      Image.asset('image/room4.jpeg'),
                      Positioned(
                        bottom: 110,
                        left: 10,
                        child: Container(
                          color: Colors.blue,
                          child: TextButton(
                            style: ButtonStyle(
                                alignment: Alignment.centerLeft,
                                foregroundColor:
                                    MaterialStatePropertyAll(Colors.white)),
                            onPressed: () {},
                            child: Text("Book Now"),
                          ),
                        ),
                      )
                    ]),
                  ),
                );
              },
              itemCount: 6,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  border: Border.all(color: Colors.red)),
              height: 50,
              child: TextFormField(
                  decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
              )),
            ),
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 300,
                  width: 400,
                  color: Colors.amber,
                  child: Image.asset('image/room2.jpeg', fit: BoxFit.fill),
                ),
              ),
              Positioned(
                top: 10,
                right: 30,
                child: Icon(
                  Icons.favorite,
                  size: 50,
                  color: const Color.fromARGB(255, 248, 3, 3),
                ),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 300,
                  width: 400,
                  color: Colors.amber,
                  child: Image.asset('image/room.jpeg', fit: BoxFit.fill),
                ),
              ),
              Positioned(
                top: 10,
                right: 30,
                child: Icon(
                  Icons.favorite,
                  size: 50,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ]));
  }
}
