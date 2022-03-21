import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailMenu extends StatelessWidget {
  const DetailMenu(this.menuList, {Key? key}) : super(key: key);

  final Map<String, Object> menuList;
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
      body: Padding(
        padding: const EdgeInsets.only(left: 38, right: 38),
        child: Column(
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
                        'img/homePage/${menuList['gambar']}',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Ingredients ${menuList["subtitle"]}',
                  style: TextStyle(
                      fontSize: 22.5,
                      fontFamily: 'Arial',
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Container(
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
                  ),
                )
              ],
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: (menuList['data'] as List).length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 15, bottom: 10),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.green.withOpacity(0.1)),
                        child: ListTile(
                          title: Text(
                              "${(menuList['data'] as List)[index]['bahan']}"),
                          leading: Image(
                            image: AssetImage(
                                "img/homePage/${(menuList['data'] as List)[index]['gambar']}"),
                            height: 50,
                            width: 100,
                          ),
                          subtitle: Text(
                              "${(menuList['data'] as List)[index]['ukuran']}"),
                        ),
                      ),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50,bottom: 15, right: 50),
              child: MaterialButton(
                minWidth: 100,                
                height: 50,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Mulai Memasak!",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                    SizedBox(width: 18,),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    )
                  ],
                ),
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
