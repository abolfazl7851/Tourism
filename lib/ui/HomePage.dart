import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tourism/datas/Item.dart';
import 'package:tourism/ui/ui_helper/DetailPage.dart';
import 'package:tourism/ui/ui_helper/ImageSmoothSlider.dart';
import 'package:tourism/ui/ui_helper/PopularItem.dart';

import '../datas/data.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageViewController = PageController(
    initialPage: 0,
  );

  // var defaultChoiceChip = 0;
  // final List<String> _choicesList = ['Top MarketCaps', 'Top Gainers', 'Top Losers'];

  // List<Item> items =[] ;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    var primaryColor = Theme.of(context).primaryColor;

    return Container(
      child: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [

              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10,right: 30),
                  child: Text(
                    "پر بازدید ترین مکان گردشگری هر شهر",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: SingleChildScrollView(
                  padding: EdgeInsets.fromLTRB(15, 5, 0, 10),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      choices.length,
                      (index) => Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: ChoiceChip(
                            label: Text(
                              choices[index],
                              style: const TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                            ),
                            backgroundColor: Colors.grey[200],
                            selected: defaultChoiceChip == index,
                            selectedColor:
                                const Color(0xffe8c293).withOpacity(0.5),
                            onSelected: (value) {
                              setState(() {
                                defaultChoiceChip =
                                    value ? index : defaultChoiceChip;
                                switch(index){
                                  case 0:
                                    break;
                                  case 1:
                                    Item item= Item(popular[0]["id"], popular[0]["name"], popular[0]["image"],popular[0]["type"],
                                        "3.5", popular[0]["latitude"], popular[0]["longitude"], popular[0]["isFavorite"],
                                        popular[0]["album"], popular[0]["description"]);

                                    Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context) => DetailPage(item: item)));
                                    break;
                                  case 2:
                                    Item item= Item(popular[2]["id"], popular[2]["name"], popular[2]["image"],popular[2]["type"],
                                        "3.5", popular[2]["latitude"], popular[2]["longitude"], popular[2]["isFavorite"],
                                        popular[2]["album"], popular[2]["description"]);

                                    Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context) => DetailPage(item: item)));
                                    break;
                                  case 3:
                                    Item item= Item(popular[3]["id"], popular[3]["name"], popular[3]["image"],popular[3]["type"],
                                        "3.5", popular[3]["latitude"], popular[3]["longitude"], popular[3]["isFavorite"],
                                        popular[3]["album"], popular[3]["description"]);

                                    Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context) => DetailPage(item: item)));
                                    break;
                                  case 4:
                                    Item item= Item(popular[1]["id"], popular[1]["name"], popular[1]["image"],popular[1]["type"],
                                        "3.5", popular[1]["latitude"], popular[1]["longitude"], popular[1]["isFavorite"],
                                        popular[1]["album"], popular[1]["description"]);

                                    Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context) => DetailPage(item: item)));
                                    break;
                                }
                              });
                            },
                          ),
                      ),
                    ),
                  ),
                ),
              ),

              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 30,bottom: 15),
                  child: Text(
                    "برترین ها",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 300,
                    enlargeCenterPage: true,
                    disableCenter: true,
                    viewportFraction: .75,
                  ),
                  items: List.generate(
                    popular.length,
                        (index) => PopulareItem(
                      data: popular[index],
                      onTapFavorite: () {
                        setState(() {

                          popular[index]["isFavorite"] =
                          !popular[index]["isFavorite"];
                        });
                      },
                      onTap: () {
                        Item item= Item(popular[index]["id"], popular[index]["name"], popular[index]["image"],popular[index]["type"],
                            "3.5", popular[index]["latitude"], popular[index]["longitude"], popular[index]["isFavorite"],
                            popular[index]["album"], popular[index]["description"]);

                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => DetailPage(item: item)));
                      },
                    ),
                  ),
                ),
                onTap: (){},
              ),
              SizedBox(height: 40,),
              // PageView
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
                  child: SizedBox(
                    height: 160,
                    width: double.infinity,
                    child: Stack(
                      children: [
                        ImageSmoothSlider(controller: _pageViewController),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: SmoothPageIndicator(
                              controller: _pageViewController,
                              count: 4,
                              effect: const ExpandingDotsEffect(
                                  dotWidth: 10, dotHeight: 10),
                              onDotClicked: (index) =>
                                  _pageViewController.animateToPage(index,
                                      duration: const Duration(milliseconds: 300),
                                      curve: Curves.easeInOut),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
