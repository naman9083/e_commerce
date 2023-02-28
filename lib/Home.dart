import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: CarouselSlider(
              options: CarouselOptions(height: h * .6, autoPlay: true),
              items: [1, 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: Image.asset('assets/user/Rectangle 23.png',
                            height: h * 0.6, width: w * 0.9));
                  },
                );
              }).toList(),
            )),
        Positioned(
            top: 80,
            right: 40,
            child: Column(
              children: [
                Container(
                  height: h * .05,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5.0,
                        ),
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  child: Image.asset(
                    'assets/user/Icon ionic-ios-heart.png',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: h * .05,
                  width: w * .10,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5.0,
                        ),
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  child: Image.asset(
                    'assets/user/Icon awesome-share.png',
                  ),
                ),
              ],
            )),
        Positioned(
          top: h * .61,
          left: 0,
          right: 0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 20,
                    height: 10,
                    decoration: BoxDecoration(
                        color: const Color(0xFF6e6e6e),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50)),
                        border: Border.all(color: Colors.black)),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50))),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50)),
                        border: Border.all(color: Colors.black)),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50))),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(18, 0, 18, 0),
                child: Text("Eyevy",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Color(0xFF6e6e6e),
                      fontSize: 20,
                    )),
              ),
              const Padding(
                padding: EdgeInsets.all(18.0),
                child: Text("Full Rim Round, Cat-eyed Anti Glare Frame (48 mm)",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Color(0xFF6e6e6e),
                      fontSize: 18,
                    )),
              ),
              Padding(
                padding: EdgeInsets.all(18.0),
                child: Row(
                  children: [
                    Text("₹ 219",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    Text("₹ 999",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Color(0xFF6e6e6e),
                          fontSize: 18,
                          decoration: TextDecoration.lineThrough,
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    Text("78% off",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 18,
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            width: w,
            height: h * .1,
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5.0,
                ),
              ],
            ),
            child: Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: w * .5,
                    height: h * .1,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5.0,
                        ),
                      ],
                    ),
                    child: const Center(
                        child: Text(
                      "Add To Cart",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    )),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: w * .5,
                    height: h * .1,
                    decoration: const BoxDecoration(
                      color: Color(0xFFf3aa4e),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5.0,
                        ),
                      ],
                    ),
                    child: const Center(
                        child: Text(
                      "Buy Now",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    )),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    ));
  }
}
