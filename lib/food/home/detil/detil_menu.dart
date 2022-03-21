import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailMenu extends StatelessWidget {
  const DetailMenu(this.menuList, this.nama, this.gambar, {Key? key})
      : super(key: key);

  final Map<String, String> menuList;

  final String nama;
  final String gambar;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "${menuList['nama']}",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(
              CupertinoIcons.ellipsis_vertical,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage(
                      'img/homePage/$gambar',
                    ),
                    fit: BoxFit.cover,
                  )),
              height: 200,
              width: 300,
              child: Center(
                child: CircleAvatar(
                  backgroundColor: Colors.grey.withOpacity(0.8),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: Icon(
                      CupertinoIcons.play_fill,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 38, right: 38),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Ingredients (23)',
                  style: TextStyle(
                      fontSize: 22.5,
                      fontFamily: 'Arial',
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "1 Serving",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Arial',
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
