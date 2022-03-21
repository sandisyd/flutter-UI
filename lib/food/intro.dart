import 'package:cooking_recipe/food/home/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:slide_to_confirm/slide_to_confirm.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Container(
        alignment: Alignment.bottomCenter,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [Colors.black, Colors.white]),
            image: DecorationImage(
                image: AssetImage('img/indonesia_food.jpg'),
                fit: BoxFit.fitHeight)),
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(left: 65, bottom: 25, right: 80),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  "Indonesia Food \nCooking Recipe",
                  style: const TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  "Let's make a delicious dish with \nthe best recipe for the family",
                  style: TextStyle(
                    fontSize: 15, color: Colors.white, fontFamily: 'Arial'),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 15,
                ),
                ConfirmationSlider(
                    textStyle: TextStyle(color: Colors.white),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.green,
                    text: "Get Started",
                    sliderButtonContent: Icon(
                      CupertinoIcons.arrow_right,
                      color: Colors.green,
                      size: 30,
                    ),
                    width: 250,
                    onConfirmation: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                          (route) => false);
                    })
              ],
            ),
          ),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                Colors.black.withOpacity(0.9),
                Colors.white.withOpacity(0.1)
              ])),
        ),
      ),
    );
  }
}
