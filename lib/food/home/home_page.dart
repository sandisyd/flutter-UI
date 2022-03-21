import 'package:cooking_recipe/food/home/detil/detil_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // const HomePage({Key? key}) : super(key: key);
  int _cIndex = 0;
  int _aIndex = 0;

  List<Widget> daftarMenu = [];

  var menu = [
    {
      "nama": "Rendang",
      "subtitle":"23",
      "jam":"0",
      "min":"49",
      "gambar": "rendang.jpg",
      "data" : [
        {
          'gambar' : 'apot.jpg',
          'bahan':'ayam 10 potong',
          'ukuran':'1 Kg'
        },
        {
          'gambar' : 'kerut.jpg',
          'bahan':'Kelapa Parut, sangrai lalu \ntumbuk sampai halus',
          'ukuran':'100 gram'
        },
        {
          'gambar' : 'serai.jpg',
          'bahan':'serai',
          'ukuran':'3 Batang'
        },
        {
          'gambar' : 'lengkuas.jpg',
          'bahan':'Lengkuas, memarkan',
          'ukuran':'3 cm'
        },
        {
          'gambar' : 'daun-salam.jpeg',
          'bahan':'Daun Salam',
          'ukuran':'3 lembar'
        },
        {
          'gambar' : 'daun-jeruk.jpg',
          'bahan':'Daun Jeruk',
          'ukuran':'5 lembar'
        },
        {
          'gambar' : 'daun-kunyit.jpg',
          'bahan':'Daun Kunyit',
          'ukuran':'1 lembar'
        },
        {
          'gambar' : 'kayu-manis.jpg',
          'bahan':'Kayu Manis',
          'ukuran':'3 cm'
        },
        {
          'gambar' : 'cengkeh.jpg',
          'bahan':'Cengkeh',
          'ukuran':'2 butir'
        },
        {
          'gambar' : 'asam-kandis.jpeg',
          'bahan':'Asam Kandis',
          'ukuran':'2 butir'
        },
        {
          'gambar' : 'garam.jpeg',
          'bahan':'garam',
          'ukuran':'2 sdt'
        },
        {
          'gambar' : 'gula.jpg',
          'bahan':'gula',
          'ukuran':'1 sdt'
        },
        {
          'gambar' : 'santan.jpg',
          'bahan':'Santan',
          'ukuran':'1 liter'
        },
        {
          'gambar' : 'minyak.jpg',
          'bahan':'Minyak',
          'ukuran':'Secukupnya'
        },
      ]
    },
    {
      "nama": "Raspbery Cake",
      "subtitle":"5",
      "jam":"1",
      "min":"15",
      "gambar": "raspbery_cake.jpg",
      "data":[
        {
          'gambar' : 'cheese_cream.png',
          'bahan':'Cheese Cream',
          'ukuran':'200 Gram'
        },
        {
          'gambar' : 'white_cooking_chocolate.jpeg',
          'bahan':'White Cooking Chocolate',
          'ukuran':'100 Gram'
        },
        {
          'gambar' : 'gelatin.jpeg',
          'bahan':'Gelatin dengan 50 ml air hingga larut',
          'ukuran':'3 sdm'
        },
        {
          'gambar' : 'whipped_cream.jpg',
          'bahan':'Whippe Cream',
          'ukuran':'100 Gram'
        },
        {
          'gambar' : 'raspbery.jpg',
          'bahan':'Raspbery, potong-potong',
          'ukuran':'100 Gram'
        },
      ]

    },
    {
      "nama": "Mie Ayam Bakso",
      "subtitle": "0",
      "jam":"0",
      "min":"0",
      "gambar": "mie_ayam_bakso.jpg",
      "data":[
        {
          'gambar' : 'ayam.jpg',
          'ayam':'10 potong',
          'ukuran':'1 Kg'
        },
        {
          'gambar' : 'ayam.jpg',
          'ayam':'10 potong',
          'ukuran':'1 Kg'
        },
        {
          'gambar' : 'ayam.jpg',
          'ayam':'10 potong',
          'ukuran':'1 Kg'
        },
        {
          'gambar' : 'ayam.jpg',
          'ayam':'10 potong',
          'ukuran':'1 Kg'
        },
      ]
    },

  ];

  _listMenu() async {
    for (var i = 0; i < menu.length; i++) {
      final menuList = menu[i];
      final String? foto = menuList['gambar'].toString();
      daftarMenu.add(Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: Hero(
          tag: menuList['nama'].toString(),
          child: InkWell(
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => DetailMenu(menuList))),
            child: Container(
                // padding: EdgeInsets.only(bottom: 30),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('img/homePage/$foto'),
                        fit: BoxFit.cover),
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(15)),
                width: 450,
                height: 400,
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Colors.black.withOpacity(0.5),
                            Colors.white.withOpacity(0.1),
                          ])),
                  child: Stack(
                    children: [
                      Positioned(
                        right: 25,
                        top: 25,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.7),
                              borderRadius: BorderRadius.circular(15)),
                          height: 60,
                          width: 60,
                          child: const Padding(
                            padding: EdgeInsets.all(15),
                            child: Image(
                                image: AssetImage('img/homePage/bookmark.png'),
                                color: Colors.white),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 326,
                        left: 25,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              menuList['nama'].toString(),
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Arial'),
                              textAlign: TextAlign.end,
                            ),
                            Text(
                              '${menuList['subtitle']} Inggredients | ${menuList['jam']} Jam ${menuList['min']} Min ',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'Arial'),
                              textAlign: TextAlign.end,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )),
          ),
        ),
      ));
    }
  }

  @override
  void initState() {
    _listMenu();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey.withOpacity(0.01),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.only(left: 28, top: 20, right: 38),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Find Best Recipe \nFor Cooking',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Arial'),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10)),
                          hintText: 'Search Destination',
                          prefixIcon: const Icon(CupertinoIcons.search)),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.green.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(15)),
                    height: 60,
                    width: 60,
                    child: const Padding(
                      padding: EdgeInsets.all(13),
                      child: Image(
                          width: 10,
                          image: AssetImage('img/homePage/edit.png'),
                          color: Colors.green),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 28,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    FoodItem('All', 0),
                    const SizedBox(
                      width: 10,
                    ),
                    FoodItem('Rendang', 1),
                    const SizedBox(
                      width: 10,
                    ),
                    FoodItem('Raspbery Cake', 2),
                    const SizedBox(
                      width: 10,
                    ),
                    FoodItem('Bubur Ayam', 3),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Expanded(
                child: ListView.builder(
                  // scrollDirection: Axis.vertical,
                  // physics: NeverScrollableScrollPhysics(),
                  // shrinkWrap: true,
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Column(
                      children: daftarMenu,
                    );
                  },
                ),
              ),
            ],
          ),
        )),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(top: 10,bottom: 10),
        child: Row(
          children: [
            NavBarItem('img/homePage/homepage.png', 0),
            NavBarItem('img/homePage/bookmark.png', 1),
            NavBarItem('img/homePage/bag.png', 2),
            NavBarItem('img/homePage/user.png', 3),
          ],
        ),
      ),
    );
  }

  Widget FoodItem(String title, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _aIndex = index;
        });
      },
      child: Container(
        height: 50,
        width: 100,
        decoration: BoxDecoration(
            color: index == _aIndex ? Colors.green : Colors.white,
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
                color: index == _aIndex ? Colors.white : Colors.grey,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  Widget NavBarItem(String img, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _cIndex = index;
        });
      },
      child: Container(
        color: Colors.white,
        height: 30,
        width: MediaQuery.of(context).size.width / 4,
        child: Image(
          image: AssetImage(img),
          color: index == _cIndex ? Colors.black : Colors.grey,
        ),
      ),
    );
  }
}

/*class DaftarMakanan extends StatelessWidget {
  String? img;
  String? title;
  String? subtitle;

  DaftarMakanan({this.img, this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(img!), fit: BoxFit.cover),
          color: Colors.grey,
          borderRadius: BorderRadius.circular(15)),
      width: MediaQuery.of(context).size.width,
      height: 400,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black.withOpacity(0.5),
                  Colors.white.withOpacity(0.1),
                ])),
        child: Stack(
          children: [
            Positioned(
              right: 25,
              top: 25,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(15)),
                height: 60,
                width: 60,
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Image(
                      image: AssetImage('img/homePage/bookmark.png'),
                      color: Colors.white),
                ),
              ),
            ),
            Positioned(
              top: 326,
              left: 25,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title!,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Arial'),
                    textAlign: TextAlign.end,
                  ),
                  Text(
                    subtitle!,
                    style: TextStyle(
                        color: Colors.white, fontSize: 14, fontFamily: 'Arial'),
                    textAlign: TextAlign.end,
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
*/