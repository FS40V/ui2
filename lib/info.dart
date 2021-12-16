import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class Info extends StatelessWidget {
  get mainAxisAlignment => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.grey.shade200,
          ),
          Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.only(top: 100, bottom: 30),
              child: Container(
                height: 45,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.search),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text('Search shoes'),
                    ),
                  ],
                ),
              ),
            ),
            Text(
              'Category',
              style: TextStyle(fontSize: 25),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        )),
                    child: Text('Shoes'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        )),
                    child: Text('clothes'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        )),
                    child: Text('pants'),
                  ),
                ),
              ],
            ),
            Text(
              'Trending',
              style: TextStyle(fontSize: 25),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: List.generate(10, (index) {
                  return Padding(
                    padding: const EdgeInsets.all(6),
                    child: Container(
                      height: 10,
                      width: 60,
                      color: Colors.white,
                      child: Image.network(
                          "https://image.cnbcfm.com/api/v1/image/105680013-1547583426762nike1.jpg?v=1547583682&w=630&h=354"),
                    ),
                  );
                }),
              ),
            ),
            BottomAppBar(
              color: Colors.black,
              notchMargin: 8.0,
              shape: AutomaticNotchedShape(
                RoundedRectangleBorder(),
                StadiumBorder(
                  side: BorderSide(),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: new Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(width: 40),
                    ClipPath(
                      clipper: WaveClipperOne(),
                      child: Container(
                        height: 120,
                        color: Colors.deepPurple,
                        child: Center(child: Text("WaveClipperOne()")),
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.circle,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(width: 40),
                    IconButton(
                      icon: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
